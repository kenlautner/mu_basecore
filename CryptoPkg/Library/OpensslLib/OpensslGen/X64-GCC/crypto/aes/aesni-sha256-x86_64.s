.text


.globl  aesni_cbc_sha256_enc
.type   aesni_cbc_sha256_enc,@function
.align  16
aesni_cbc_sha256_enc:
.cfi_startproc
        xorl    %eax,%eax
        cmpq    $0,%rdi
        je      .Lprobe
        ud2
.Lprobe:
        .byte   0xf3,0xc3
.cfi_endproc
.size   aesni_cbc_sha256_enc,.-aesni_cbc_sha256_enc

.align  64
.type   K256,@object
K256:
.long   0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5
.long   0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5
.long   0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5
.long   0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5
.long   0xd807aa98,0x12835b01,0x243185be,0x550c7dc3
.long   0xd807aa98,0x12835b01,0x243185be,0x550c7dc3
.long   0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174
.long   0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174
.long   0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc
.long   0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc
.long   0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da
.long   0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da
.long   0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7
.long   0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7
.long   0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967
.long   0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967
.long   0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13
.long   0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13
.long   0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85
.long   0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85
.long   0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3
.long   0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3
.long   0xd192e819,0xd6990624,0xf40e3585,0x106aa070
.long   0xd192e819,0xd6990624,0xf40e3585,0x106aa070
.long   0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5
.long   0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5
.long   0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3
.long   0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3
.long   0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208
.long   0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208
.long   0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2
.long   0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2

.long   0x00010203,0x04050607,0x08090a0b,0x0c0d0e0f
.long   0x00010203,0x04050607,0x08090a0b,0x0c0d0e0f
.long   0,0,0,0,   0,0,0,0,   -1,-1,-1,-1
.long   0,0,0,0,   0,0,0,0
.byte   65,69,83,78,73,45,67,66,67,43,83,72,65,50,53,54,32,115,116,105,116,99,104,32,102,111,114,32,120,56,54,95,54,52,44,32,67,82,89,80,84,79,71,65,77,83,32,98,121,32,60,97,112,112,114,111,64,111,112,101,110,115,115,108,46,111,114,103,62,0
.align  64
        .section .note.gnu.property, #alloc
        .p2align 3
        .long 1f - 0f
        .long 4f - 1f
        .long 5
0:
        # "GNU" encoded with .byte, since .asciz isn't supported
        # on Solaris.
        .byte 0x47
        .byte 0x4e
        .byte 0x55
        .byte 0
1:
        .p2align 3
        .long 0xc0000002
        .long 3f - 2f
2:
        .long 3
3:
        .p2align 3
4:
