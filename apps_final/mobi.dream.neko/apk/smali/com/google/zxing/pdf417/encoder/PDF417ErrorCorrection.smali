.class final Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;
.super Ljava/lang/Object;
.source "PDF417ErrorCorrection.java"


# static fields
.field private static final EC_COEFFICIENTS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const/16 v2, 0x40

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x80

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x100

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x200

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->EC_COEFFICIENTS:[[I

    return-void

    :array_0
    .array-data 4
        0x1b
        0x395
    .end array-data

    :array_1
    .array-data 4
        0x20a
        0x238
        0x2d3
        0x329
    .end array-data

    :array_2
    .array-data 4
        0xed
        0x134
        0x1b4
        0x11c
        0x286
        0x28d
        0x1ac
        0x17b
    .end array-data

    :array_3
    .array-data 4
        0x112
        0x232
        0xe8
        0x2f3
        0x257
        0x20c
        0x321
        0x84
        0x127
        0x74
        0x1ba
        0x1ac
        0x127
        0x2a
        0xb0
        0x41
    .end array-data

    :array_4
    .array-data 4
        0x169
        0x23f
        0x39a
        0x20d
        0xb0
        0x24a
        0x280
        0x141
        0x218
        0x2e6
        0x2a5
        0x2e6
        0x2af
        0x11c
        0xc1
        0x205
        0x111
        0x1ee
        0x107
        0x93
        0x251
        0x320
        0x23b
        0x140
        0x323
        0x85
        0xe7
        0x186
        0x2ad
        0x14a
        0x3f
        0x19a
    .end array-data

    :array_5
    .array-data 4
        0x21b
        0x1a6
        0x6
        0x5d
        0x35e
        0x303
        0x1c5
        0x6a
        0x262
        0x11f
        0x6b
        0x1f9
        0x2dd
        0x36d
        0x17d
        0x264
        0x2d3
        0x1dc
        0x1ce
        0xac
        0x1ae
        0x261
        0x35a
        0x336
        0x21f
        0x178
        0x1ff
        0x190
        0x2a0
        0x2fa
        0x11b
        0xb8
        0x1b8
        0x23
        0x207
        0x1f
        0x1cc
        0x252
        0xe1
        0x217
        0x205
        0x160
        0x25d
        0x9e
        0x28b
        0xc9
        0x1e8
        0x1f6
        0x288
        0x2dd
        0x2cd
        0x53
        0x194
        0x61
        0x118
        0x303
        0x348
        0x275
        0x4
        0x17d
        0x34b
        0x26f
        0x108
        0x21f
    .end array-data

    :array_6
    .array-data 4
        0x209
        0x136
        0x360
        0x223
        0x35a
        0x244
        0x128
        0x17b
        0x35
        0x30b
        0x381
        0x1bc
        0x190
        0x39d
        0x2ed
        0x19f
        0x336
        0x5d
        0xd9
        0xd0
        0x3a0
        0xf4
        0x247
        0x26c
        0xf6
        0x94
        0x1bf
        0x277
        0x124
        0x38c
        0x1ea
        0x2c0
        0x204
        0x102
        0x1c9
        0x38b
        0x252
        0x2d3
        0x2a2
        0x124
        0x110
        0x60
        0x2ac
        0x1b0
        0x2ae
        0x25e
        0x35c
        0x239
        0xc1
        0xdb
        0x81
        0xba
        0xec
        0x11f
        0xc0
        0x307
        0x116
        0xad
        0x28
        0x17b
        0x2c8
        0x1cf
        0x286
        0x308
        0xab
        0x1eb
        0x129
        0x2fb
        0x9c
        0x2dc
        0x5f
        0x10e
        0x1bf
        0x5a
        0x1fb
        0x30
        0xe4
        0x335
        0x328
        0x382
        0x310
        0x297
        0x273
        0x17a
        0x17e
        0x106
        0x17c
        0x25a
        0x2f2
        0x150
        0x59
        0x266
        0x57
        0x1b0
        0x29e
        0x268
        0x9d
        0x176
        0xf2
        0x2d6
        0x258
        0x10d
        0x177
        0x382
        0x34d
        0x1c6
        0x162
        0x82
        0x32e
        0x24b
        0x324
        0x22
        0xd3
        0x14a
        0x21b
        0x129
        0x33b
        0x361
        0x25
        0x205
        0x342
        0x13b
        0x226
        0x56
        0x321
        0x4
        0x6c
        0x21b
    .end array-data

    :array_7
    .array-data 4
        0x20c
        0x37e
        0x4b
        0x2fe
        0x372
        0x359
        0x4a
        0xcc
        0x52
        0x24a
        0x2c4
        0xfa
        0x389
        0x312
        0x8a
        0x2d0
        0x35a
        0xc2
        0x137
        0x391
        0x113
        0xbe
        0x177
        0x352
        0x1b6
        0x2dd
        0xc2
        0x118
        0xc9
        0x118
        0x33c
        0x2f5
        0x2c6
        0x32e
        0x397
        0x59
        0x44
        0x239
        0xb
        0xcc
        0x31c
        0x25d
        0x21c
        0x391
        0x321
        0x2bc
        0x31f
        0x89
        0x1b7
        0x1a2
        0x250
        0x29c
        0x161
        0x35b
        0x172
        0x2b6
        0x145
        0xf0
        0xd8
        0x101
        0x11c
        0x225
        0xd1
        0x374
        0x13b
        0x46
        0x149
        0x319
        0x1ea
        0x112
        0x36d
        0xa2
        0x2ed
        0x32c
        0x2ac
        0x1cd
        0x14e
        0x178
        0x351
        0x209
        0x133
        0x123
        0x323
        0x2c8
        0x13
        0x166
        0x18f
        0x38c
        0x67
        0x1ff
        0x33
        0x8
        0x205
        0xe1
        0x121
        0x1d6
        0x27d
        0x2db
        0x42
        0xff
        0x395
        0x10d
        0x1cf
        0x33e
        0x2da
        0x1b1
        0x350
        0x249
        0x88
        0x21a
        0x38a
        0x5a
        0x2
        0x122
        0x2e7
        0xc7
        0x28f
        0x387
        0x149
        0x31
        0x322
        0x244
        0x163
        0x24c
        0xbc
        0x1ce
        0xa
        0x86
        0x274
        0x140
        0x1df
        0x82
        0x2e3
        0x47
        0x107
        0x13e
        0x176
        0x259
        0xc0
        0x25d
        0x8e
        0x2a1
        0x2af
        0xea
        0x2d2
        0x180
        0xb1
        0x2f0
        0x25f
        0x280
        0x1c7
        0xc1
        0x2b1
        0x2c3
        0x325
        0x281
        0x30
        0x3c
        0x2dc
        0x26d
        0x37f
        0x220
        0x105
        0x354
        0x28f
        0x135
        0x2b9
        0x2f3
        0x2f4
        0x3c
        0xe7
        0x305
        0x1b2
        0x1a5
        0x2d6
        0x210
        0x1f7
        0x76
        0x31
        0x31b
        0x20
        0x90
        0x1f4
        0xee
        0x344
        0x18a
        0x118
        0x236
        0x13f
        0x9
        0x287
        0x226
        0x49
        0x392
        0x156
        0x7e
        0x20
        0x2a9
        0x14b
        0x318
        0x26c
        0x3c
        0x261
        0x1b9
        0xb4
        0x317
        0x37d
        0x2f2
        0x25d
        0x17f
        0xe4
        0x2ed
        0x2f8
        0xd5
        0x36
        0x129
        0x86
        0x36
        0x342
        0x12b
        0x39a
        0xbf
        0x38e
        0x214
        0x261
        0x33d
        0xbd
        0x14
        0xa7
        0x1d
        0x368
        0x1c1
        0x53
        0x192
        0x29
        0x290
        0x1f9
        0x243
        0x1e1
        0xad
        0x194
        0xfb
        0x2b0
        0x5f
        0x1f1
        0x22b
        0x282
        0x21f
        0x133
        0x9f
        0x39c
        0x22e
        0x288
        0x37
        0x1f1
        0xa
    .end array-data

    :array_8
    .array-data 4
        0x160
        0x4d
        0x175
        0x1f8
        0x23
        0x257
        0x1ac
        0xcf
        0x199
        0x23e
        0x76
        0x1f2
        0x11d
        0x17c
        0x15e
        0x1ec
        0xc5
        0x109
        0x398
        0x9b
        0x392
        0x12b
        0xe5
        0x283
        0x126
        0x367
        0x132
        0x58
        0x57
        0xc1
        0x160
        0x30d
        0x34e
        0x4b
        0x147
        0x208
        0x1b3
        0x21f
        0xcb
        0x29a
        0xf9
        0x15a
        0x30d
        0x26d
        0x280
        0x10c
        0x31a
        0x216
        0x21b
        0x30d
        0x198
        0x186
        0x284
        0x66
        0x1dc
        0x1f3
        0x122
        0x278
        0x221
        0x25
        0x35a
        0x394
        0x228
        0x29
        0x21e
        0x121
        0x7a
        0x110
        0x17f
        0x320
        0x1e5
        0x62
        0x2f0
        0x1d8
        0x2f9
        0x6b
        0x310
        0x35c
        0x292
        0x2e5
        0x122
        0xcc
        0x2a9
        0x197
        0x357
        0x55
        0x63
        0x3e
        0x1e2
        0xb4
        0x14
        0x129
        0x1c3
        0x251
        0x391
        0x8e
        0x328
        0x2ac
        0x11f
        0x218
        0x231
        0x4c
        0x28d
        0x383
        0x2d9
        0x237
        0x2e8
        0x186
        0x201
        0xc0
        0x204
        0x102
        0xf0
        0x206
        0x31a
        0x18b
        0x300
        0x350
        0x33
        0x262
        0x180
        0xa8
        0xbe
        0x33a
        0x148
        0x254
        0x312
        0x12f
        0x23a
        0x17d
        0x19f
        0x281
        0x9c
        0xed
        0x97
        0x1ad
        0x213
        0xcf
        0x2a4
        0x2c6
        0x59
        0xa8
        0x130
        0x192
        0x28
        0x2c4
        0x23f
        0xa2
        0x360
        0xe5
        0x41
        0x35d
        0x349
        0x200
        0xa4
        0x1dd
        0xdd
        0x5c
        0x166
        0x311
        0x120
        0x165
        0x352
        0x344
        0x33b
        0x2e0
        0x2c3
        0x5e
        0x8
        0x1ee
        0x72
        0x209
        0x2
        0x1f3
        0x353
        0x21f
        0x98
        0x2d9
        0x303
        0x5f
        0xf8
        0x169
        0x242
        0x143
        0x358
        0x31d
        0x121
        0x33
        0x2ac
        0x1d2
        0x215
        0x334
        0x29d
        0x2d
        0x386
        0x1c4
        0xa7
        0x156
        0xf4
        0xad
        0x23
        0x1cf
        0x28b
        0x33
        0x2bb
        0x24f
        0x1c4
        0x242
        0x25
        0x7c
        0x12a
        0x14c
        0x228
        0x2b
        0x1ab
        0x77
        0x296
        0x309
        0x1db
        0x352
        0x2fc
        0x16c
        0x242
        0x38f
        0x11b
        0x2c7
        0x1d8
        0x1a4
        0xf5
        0x120
        0x252
        0x18a
        0x1ff
        0x147
        0x24d
        0x309
        0x2bb
        0x2b0
        0x2b
        0x198
        0x34a
        0x17f
        0x2d1
        0x209
        0x230
        0x284
        0x2ca
        0x22f
        0x3e
        0x91
        0x369
        0x297
        0x2c9
        0x9f
        0x2a0
        0x2d9
        0x270
        0x3b
        0xc1
        0x1a1
        0x9e
        0xd1
        0x233
        0x234
        0x157
        0x2b5
        0x6d
        0x260
        0x233
        0x16d
        0xb5
        0x304
        0x2a5
        0x136
        0xf8
        0x161
        0x2c4
        0x19a
        0x243
        0x366
        0x269
        0x349
        0x278
        0x35c
        0x121
        0x218
        0x23
        0x309
        0x26a
        0x24a
        0x1a8
        0x341
        0x4d
        0x255
        0x15a
        0x10d
        0x2f5
        0x278
        0x2b7
        0x2ef
        0x14b
        0xf7
        0xb8
        0x2d
        0x313
        0x2a8
        0x12
        0x42
        0x197
        0x171
        0x36
        0x1ec
        0xe4
        0x265
        0x33e
        0x39a
        0x1b5
        0x207
        0x284
        0x389
        0x315
        0x1a4
        0x131
        0x1b9
        0xcf
        0x12c
        0x37c
        0x33b
        0x8d
        0x219
        0x17d
        0x296
        0x201
        0x38
        0xfc
        0x155
        0xf2
        0x31d
        0x346
        0x345
        0x2d0
        0xe0
        0x133
        0x277
        0x3d
        0x57
        0x230
        0x136
        0x2f4
        0x299
        0x18d
        0x328
        0x353
        0x135
        0x1d9
        0x31b
        0x17a
        0x1f
        0x287
        0x393
        0x1cb
        0x326
        0x24e
        0x2db
        0x1a9
        0xd8
        0x224
        0xf9
        0x141
        0x371
        0x2bb
        0x217
        0x2a1
        0x30e
        0xd2
        0x32f
        0x389
        0x12f
        0x34b
        0x39a
        0x119
        0x49
        0x1d5
        0x317
        0x294
        0xa2
        0x1f2
        0x134
        0x9b
        0x1a6
        0x38b
        0x331
        0xbb
        0x3e
        0x10
        0x1a9
        0x217
        0x150
        0x11e
        0x1b5
        0x177
        0x111
        0x262
        0x128
        0xb7
        0x39b
        0x74
        0x29b
        0x2ef
        0x161
        0x3e
        0x16e
        0x2b3
        0x17b
        0x2af
        0x34a
        0x25
        0x165
        0x2d0
        0x2e6
        0x14a
        0x5
        0x27
        0x39b
        0x137
        0x1a8
        0xf2
        0x2ed
        0x141
        0x36
        0x29d
        0x13c
        0x156
        0x12b
        0x216
        0x69
        0x29b
        0x1e8
        0x280
        0x2a0
        0x240
        0x21c
        0x13c
        0x1e6
        0x2d1
        0x262
        0x2e
        0x290
        0x1bf
        0xab
        0x268
        0x1d0
        0xbe
        0x213
        0x129
        0x141
        0x2fa
        0x2f0
        0x215
        0xaf
        0x86
        0xe
        0x17d
        0x1b1
        0x2cd
        0x2d
        0x6f
        0x14
        0x254
        0x11c
        0x2e0
        0x8a
        0x286
        0x19b
        0x36d
        0x29d
        0x8d
        0x397
        0x2d
        0x30c
        0x197
        0xa4
        0x14c
        0x383
        0xa5
        0x2d6
        0x258
        0x145
        0x1f2
        0x28f
        0x165
        0x2f0
        0x300
        0xdf
        0x351
        0x287
        0x3f
        0x136
        0x35f
        0xfb
        0x16e
        0x130
        0x11a
        0x2e2
        0x2a3
        0x19a
        0x185
        0xf4
        0x1f
        0x79
        0x12f
        0x107
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method static generateErrorCorrection(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 12
    .param p0, "dataCodewords"    # Ljava/lang/CharSequence;
    .param p1, "errorCorrectionLevel"    # I

    .prologue
    const/4 v11, 0x0

    .line 178
    invoke-static {p1}, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->getErrorCorrectionCodewordCount(I)I

    move-result v3

    .line 179
    .local v3, "k":I
    new-array v0, v3, [C

    .line 180
    .local v0, "e":[C
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 181
    .local v5, "sld":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 182
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-char v10, v0, v10

    add-int/2addr v9, v10

    rem-int/lit16 v6, v9, 0x3a1

    .line 185
    .local v6, "t1":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "j":I
    :goto_1
    const/4 v9, 0x1

    if-lt v2, v9, :cond_0

    .line 186
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->EC_COEFFICIENTS:[[I

    aget-object v9, v9, p1

    aget v9, v9, v2

    mul-int/2addr v9, v6

    rem-int/lit16 v7, v9, 0x3a1

    .line 187
    .local v7, "t2":I
    rsub-int v8, v7, 0x3a1

    .line 188
    .local v8, "t3":I
    add-int/lit8 v9, v2, -0x1

    aget-char v9, v0, v9

    add-int/2addr v9, v8

    rem-int/lit16 v9, v9, 0x3a1

    int-to-char v9, v9

    aput-char v9, v0, v2

    .line 185
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 190
    .end local v7    # "t2":I
    .end local v8    # "t3":I
    :cond_0
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->EC_COEFFICIENTS:[[I

    aget-object v9, v9, p1

    aget v9, v9, v11

    mul-int/2addr v9, v6

    rem-int/lit16 v7, v9, 0x3a1

    .line 191
    .restart local v7    # "t2":I
    rsub-int v8, v7, 0x3a1

    .line 192
    .restart local v8    # "t3":I
    rem-int/lit16 v9, v8, 0x3a1

    int-to-char v9, v9

    aput-char v9, v0, v11

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "j":I
    .end local v6    # "t1":I
    .end local v7    # "t2":I
    .end local v8    # "t3":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v4, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "j":I
    :goto_2
    if-ltz v2, :cond_3

    .line 196
    aget-char v9, v0, v2

    if-eqz v9, :cond_2

    .line 197
    aget-char v9, v0, v2

    rsub-int v9, v9, 0x3a1

    int-to-char v9, v9

    aput-char v9, v0, v2

    .line 199
    :cond_2
    aget-char v9, v0, v2

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 201
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method static getErrorCorrectionCodewordCount(I)I
    .locals 2
    .param p0, "errorCorrectionLevel"    # I

    .prologue
    .line 138
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-le p0, v0, :cond_1

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error correction level must be between 0 and 8!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    const/4 v0, 0x1

    add-int/lit8 v1, p0, 0x1

    shl-int/2addr v0, v1

    return v0
.end method

.method static getRecommendedMinimumErrorCorrectionLevel(I)I
    .locals 2
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 152
    if-gtz p0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    const/16 v0, 0x28

    if-gt p0, v0, :cond_1

    .line 156
    const/4 v0, 0x2

    .line 165
    :goto_0
    return v0

    .line 158
    :cond_1
    const/16 v0, 0xa0

    if-gt p0, v0, :cond_2

    .line 159
    const/4 v0, 0x3

    goto :goto_0

    .line 161
    :cond_2
    const/16 v0, 0x140

    if-gt p0, v0, :cond_3

    .line 162
    const/4 v0, 0x4

    goto :goto_0

    .line 164
    :cond_3
    const/16 v0, 0x35f

    if-gt p0, v0, :cond_4

    .line 165
    const/4 v0, 0x5

    goto :goto_0

    .line 167
    :cond_4
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "No recommendation possible"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
