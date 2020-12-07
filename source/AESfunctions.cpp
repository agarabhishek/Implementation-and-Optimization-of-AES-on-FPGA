#include "AESfunctions.h"
#include "AEStables.h"
#include <algorithm>
#include <string.h>

using namespace std;

void SubBytes(unsigned char* state) {
// Doing inline on its own
for (unsigned short i = 0; i < 16; i++) {
//#pragma HLS unroll
		state[i] = s_box[state[i]];
	}
}

//void InvSubBytes(unsigned char* state) {
////#pragma HLS inline off
//	for (unsigned short i = 0; i < 16; i++) {
////#pragma HLS unroll
//		state[i] = inverted_s_box[state[i]];
//	}
//}

void ShiftRows(unsigned char* state) {
//#pragma HLS inline off
//#pragma HLS pipeline
//#pragma HLS unroll
	unsigned char tmp_state[16];
	tmp_state[0] = state[0];
	tmp_state[1] = state[5];
	tmp_state[2] = state[10];
	tmp_state[3] = state[15];

	tmp_state[4] = state[4];
	tmp_state[5] = state[9];
	tmp_state[6] = state[14];
	tmp_state[7] = state[3];

	tmp_state[8] = state[8];
	tmp_state[9] = state[13];
	tmp_state[10] = state[2];
	tmp_state[11] = state[7];

	tmp_state[12] = state[12];
	tmp_state[13] = state[1];
	tmp_state[14] = state[6];
	tmp_state[15] = state[11];


	for (unsigned short i = 0; i < 16; i++) {
//#pragma HLS unroll
		state[i] = tmp_state[i];
	}
}

void MixColumns(unsigned char* state) {
	unsigned char tmp_state[16];
	tmp_state[0] = mul02[state[0]] ^ mul03[state[1]] ^ state[2] ^ state[3];
	tmp_state[1] = state[0] ^ mul02[state[1]] ^ mul03[state[2]] ^ state[3];
	tmp_state[2] = state[0] ^ state[1] ^ mul02[state[2]] ^ mul03[state[3]];
	tmp_state[3] = mul03[state[0]] ^ state[1] ^ state[2] ^ mul02[state[3]];

	tmp_state[4] = mul02[state[4]] ^ mul03[state[5]] ^ state[6] ^ state[7];
	tmp_state[5] = state[4] ^ mul02[state[5]] ^ mul03[state[6]] ^ state[7];
	tmp_state[6] = state[4] ^ state[5] ^ mul02[state[6]] ^ mul03[state[7]];
	tmp_state[7] = mul03[state[4]] ^ state[5] ^ state[6] ^ mul02[state[7]];

	tmp_state[8] = mul02[state[8]] ^ mul03[state[9]] ^ state[10] ^ state[11];
	tmp_state[9] = state[8] ^ mul02[state[9]] ^ mul03[state[10]] ^ state[11];
	tmp_state[10] = state[8] ^ state[9] ^ mul02[state[10]] ^ mul03[state[11]];
	tmp_state[11] = mul03[state[8]] ^ state[9] ^ state[10] ^ mul02[state[11]];

	tmp_state[12] = mul02[state[12]] ^ mul03[state[13]] ^ state[14] ^ state[15];
	tmp_state[13] = state[12] ^ mul02[state[13]] ^ mul03[state[14]] ^ state[15];
	tmp_state[14] = state[12] ^ state[13] ^ mul02[state[14]] ^ mul03[state[15]];
	tmp_state[15] = mul03[state[12]] ^ state[13] ^ state[14] ^ mul02[state[15]];
	for (unsigned short i = 0; i < 16; i++) {
//#pragma HLS unroll
		state[i] = tmp_state[i];
	}
}



void AddRoundKey(unsigned char* state, unsigned char* roundKey) {
#pragma HLS inline
	for (unsigned short i = 0; i < 16; i++) {
//#pragma HLS unroll
		state[i] ^= roundKey[i];
	}
}

// Encrypt Function
void AES_Encrypt(unsigned char newState[16],
		unsigned char expandedKey[ExtdCipherKeyLenghth_max], unsigned short Nr,
		unsigned char ciphertext[16],unsigned char iv[16]) {
#pragma HLS INTERFACE s_axilite port=newState bundle=CRTLSc
#pragma HLS INTERFACE s_axilite port=expandedKey bundle=CRTLSc
#pragma HLS INTERFACE s_axilite port=Nr bundle=CRTLSc
#pragma HLS INTERFACE ap_bus port=ciphertext
#pragma HLS INTERFACE ap_bus port=iv
#pragma HLS INTERFACe s_axilite port=return bundle=CRTLSc

#pragma HLS array_map variable=s_box instance=cipher horizontal // group cipher tables together
#pragma HLS array_map variable=mul02 instance=cipher horizontal
#pragma HLS array_map variable=mul03 instance=cipher horizontal

// Copy plaintext into state
	unsigned char state[16];
//	#pragma HLS array_partition variable=state dim=0 complete
//L_copy: for (unsigned short i = 0; i < 16; i++) {
////	#pragma HLS pipeline
////	#pragma HLS unroll
//		state[i] = iv[i];
//	}

	memcpy(state,iv,16);

	AddRoundKey(state, expandedKey + (16 * 0)); // Round Key

	L_rounds: for (unsigned short i = 0; i < 10; i++) {
//	#pragma HLS pipeline
//	#pragma HLS unroll
		SubBytes(state);
		ShiftRows(state);
		if (i != (9)) {
			MixColumns(state);
		}
		AddRoundKey(state, expandedKey + (16 * (i + 1))); // Round Key
	}


	AddRoundKey(state,newState); // XOR of final output with plaintext
	
	// Copy state to ciphertext
//	L_copy_o: for (unsigned short i = 0; i < 16; i++) {
////	#pragma HLS pipeline
////	#pragma HLS unroll
//	ciphertext[i] = state[i];
//		}
	memcpy(ciphertext,state,16);
	}
