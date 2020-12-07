#pragma once

#include <iostream>
using namespace std;
#include <cstdio>


const unsigned short Nb = 4; // columns
const unsigned short rows = 4; // rows
const unsigned short Nk =4;

const unsigned short Nk_max = 4; // max [32-bit words] columns in cipher key
const unsigned short CipherKeyLenghth_max = 16; // max bytes in key length
const unsigned short Nr_max = 10; // max number of rounds
const unsigned short ExtdCipherKeyLenghth_max = 176; // max bytes in extended key length
