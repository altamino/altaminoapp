.class public final enum Landroidx/compose/foundation/text/KeyCommand;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/foundation/text/KeyCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum CHARACTER_PALETTE:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum COPY:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum CUT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_FROM_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DESELECT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum HOME:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_START:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PASTE:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum REDO:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum TAB:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum UNDO:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum UP:Landroidx/compose/foundation/text/KeyCommand;


# instance fields
.field private final editsText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 3
    .line 4
    const-string v1, "LEFT_CHAR"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 9
    .line 10
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 13
    .line 14
    const-string v1, "RIGHT_CHAR"

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v3, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 19
    .line 20
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 23
    .line 24
    const-string v1, "RIGHT_WORD"

    .line 25
    const/4 v4, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 29
    .line 30
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 33
    .line 34
    const-string v1, "LEFT_WORD"

    .line 35
    const/4 v4, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 39
    .line 40
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 41
    .line 42
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 43
    .line 44
    const-string v1, "NEXT_PARAGRAPH"

    .line 45
    const/4 v4, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 49
    .line 50
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 51
    .line 52
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 53
    .line 54
    const-string v1, "PREV_PARAGRAPH"

    .line 55
    const/4 v4, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 59
    .line 60
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 61
    .line 62
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 63
    .line 64
    const-string v1, "LINE_START"

    .line 65
    const/4 v4, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 69
    .line 70
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 71
    .line 72
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 73
    .line 74
    const-string v1, "LINE_END"

    .line 75
    const/4 v4, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 79
    .line 80
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 81
    .line 82
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 83
    .line 84
    const-string v1, "LINE_LEFT"

    .line 85
    .line 86
    const/16 v4, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 90
    .line 91
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    .line 92
    .line 93
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 94
    .line 95
    const-string v1, "LINE_RIGHT"

    .line 96
    .line 97
    const/16 v4, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 101
    .line 102
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    .line 103
    .line 104
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 105
    .line 106
    const-string v1, "UP"

    .line 107
    .line 108
    const/16 v4, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 112
    .line 113
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 114
    .line 115
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 116
    .line 117
    const-string v1, "DOWN"

    .line 118
    .line 119
    const/16 v4, 0xb

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 123
    .line 124
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 125
    .line 126
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 127
    .line 128
    const-string v1, "PAGE_UP"

    .line 129
    .line 130
    const/16 v4, 0xc

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 134
    .line 135
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 136
    .line 137
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 138
    .line 139
    const-string v1, "PAGE_DOWN"

    .line 140
    .line 141
    const/16 v4, 0xd

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 145
    .line 146
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 147
    .line 148
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 149
    .line 150
    const-string v1, "HOME"

    .line 151
    .line 152
    const/16 v4, 0xe

    .line 153
    .line 154
    .line 155
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 156
    .line 157
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->HOME:Landroidx/compose/foundation/text/KeyCommand;

    .line 158
    .line 159
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 160
    .line 161
    const-string v1, "END"

    .line 162
    .line 163
    const/16 v4, 0xf

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 167
    .line 168
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->END:Landroidx/compose/foundation/text/KeyCommand;

    .line 169
    .line 170
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 171
    .line 172
    const-string v1, "COPY"

    .line 173
    .line 174
    const/16 v4, 0x10

    .line 175
    .line 176
    .line 177
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 178
    .line 179
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    .line 180
    .line 181
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 182
    .line 183
    const-string v1, "PASTE"

    .line 184
    .line 185
    const/16 v4, 0x11

    .line 186
    .line 187
    .line 188
    invoke-direct {v0, v1, v4, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 189
    .line 190
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 191
    .line 192
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 193
    .line 194
    const-string v1, "CUT"

    .line 195
    .line 196
    const/16 v4, 0x12

    .line 197
    .line 198
    .line 199
    invoke-direct {v0, v1, v4, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 200
    .line 201
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    .line 202
    .line 203
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 204
    .line 205
    const-string v1, "DELETE_PREV_CHAR"

    .line 206
    .line 207
    const/16 v4, 0x13

    .line 208
    .line 209
    .line 210
    invoke-direct {v0, v1, v4, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 211
    .line 212
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 213
    .line 214
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 215
    .line 216
    const-string v1, "DELETE_NEXT_CHAR"

    .line 217
    .line 218
    const/16 v4, 0x14

    .line 219
    .line 220
    .line 221
    invoke-direct {v0, v1, v4, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 222
    .line 223
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 224
    .line 225
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 226
    .line 227
    const-string v1, "DELETE_PREV_WORD"

    .line 228
    .line 229
    const/16 v4, 0x15

    .line 230
    .line 231
    .line 232
    invoke-direct {v0, v1, v4, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 233
    .line 234
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 235
    .line 236
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 237
    .line 238
    const-string v1, "DELETE_NEXT_WORD"

    .line 239
    .line 240
    const/16 v4, 0x16

    .line 241
    .line 242
    .line 243
    invoke-direct {v0, v1, v4, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 244
    .line 245
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 246
    .line 247
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 248
    .line 249
    const-string v1, "DELETE_FROM_LINE_START"

    .line 250
    .line 251
    const/16 v4, 0x17

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v1, v4, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 255
    .line 256
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_FROM_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 257
    .line 258
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 259
    .line 260
    const-string v1, "DELETE_TO_LINE_END"

    .line 261
    .line 262
    const/16 v4, 0x18

    .line 263
    .line 264
    .line 265
    invoke-direct {v0, v1, v4, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 266
    .line 267
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 268
    .line 269
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 270
    .line 271
    const-string v1, "SELECT_ALL"

    .line 272
    .line 273
    const/16 v4, 0x19

    .line 274
    .line 275
    .line 276
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 277
    .line 278
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    .line 279
    .line 280
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 281
    .line 282
    const-string v1, "SELECT_LEFT_CHAR"

    .line 283
    .line 284
    const/16 v4, 0x1a

    .line 285
    .line 286
    .line 287
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 288
    .line 289
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 290
    .line 291
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 292
    .line 293
    const-string v1, "SELECT_RIGHT_CHAR"

    .line 294
    .line 295
    const/16 v4, 0x1b

    .line 296
    .line 297
    .line 298
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 299
    .line 300
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 301
    .line 302
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 303
    .line 304
    const-string v1, "SELECT_UP"

    .line 305
    .line 306
    const/16 v4, 0x1c

    .line 307
    .line 308
    .line 309
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 310
    .line 311
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 312
    .line 313
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 314
    .line 315
    const-string v1, "SELECT_DOWN"

    .line 316
    .line 317
    const/16 v4, 0x1d

    .line 318
    .line 319
    .line 320
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 321
    .line 322
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 323
    .line 324
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 325
    .line 326
    const-string v1, "SELECT_PAGE_UP"

    .line 327
    .line 328
    const/16 v4, 0x1e

    .line 329
    .line 330
    .line 331
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 332
    .line 333
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 334
    .line 335
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 336
    .line 337
    const-string v1, "SELECT_PAGE_DOWN"

    .line 338
    .line 339
    const/16 v4, 0x1f

    .line 340
    .line 341
    .line 342
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 343
    .line 344
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 345
    .line 346
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 347
    .line 348
    const-string v1, "SELECT_HOME"

    .line 349
    .line 350
    const/16 v4, 0x20

    .line 351
    .line 352
    .line 353
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 354
    .line 355
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

    .line 356
    .line 357
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 358
    .line 359
    const-string v1, "SELECT_END"

    .line 360
    .line 361
    const/16 v4, 0x21

    .line 362
    .line 363
    .line 364
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 365
    .line 366
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 367
    .line 368
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 369
    .line 370
    const-string v1, "SELECT_LEFT_WORD"

    .line 371
    .line 372
    const/16 v4, 0x22

    .line 373
    .line 374
    .line 375
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 376
    .line 377
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 378
    .line 379
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 380
    .line 381
    const-string v1, "SELECT_RIGHT_WORD"

    .line 382
    .line 383
    const/16 v4, 0x23

    .line 384
    .line 385
    .line 386
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 387
    .line 388
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 389
    .line 390
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 391
    .line 392
    const-string v1, "SELECT_NEXT_PARAGRAPH"

    .line 393
    .line 394
    const/16 v4, 0x24

    .line 395
    .line 396
    .line 397
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 398
    .line 399
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 400
    .line 401
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 402
    .line 403
    const-string v1, "SELECT_PREV_PARAGRAPH"

    .line 404
    .line 405
    const/16 v4, 0x25

    .line 406
    .line 407
    .line 408
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 409
    .line 410
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 411
    .line 412
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 413
    .line 414
    const-string v1, "SELECT_LINE_START"

    .line 415
    .line 416
    const/16 v4, 0x26

    .line 417
    .line 418
    .line 419
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 420
    .line 421
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 422
    .line 423
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 424
    .line 425
    const-string v1, "SELECT_LINE_END"

    .line 426
    .line 427
    const/16 v4, 0x27

    .line 428
    .line 429
    .line 430
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 431
    .line 432
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 433
    .line 434
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 435
    .line 436
    const-string v1, "SELECT_LINE_LEFT"

    .line 437
    .line 438
    const/16 v4, 0x28

    .line 439
    .line 440
    .line 441
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 442
    .line 443
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    .line 444
    .line 445
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 446
    .line 447
    const-string v1, "SELECT_LINE_RIGHT"

    .line 448
    .line 449
    const/16 v4, 0x29

    .line 450
    .line 451
    .line 452
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 453
    .line 454
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    .line 455
    .line 456
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 457
    .line 458
    const-string v1, "DESELECT"

    .line 459
    .line 460
    const/16 v4, 0x2a

    .line 461
    .line 462
    .line 463
    invoke-direct {v0, v1, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 464
    .line 465
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DESELECT:Landroidx/compose/foundation/text/KeyCommand;

    .line 466
    .line 467
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 468
    .line 469
    const-string v1, "NEW_LINE"

    .line 470
    .line 471
    const/16 v2, 0x2b

    .line 472
    .line 473
    .line 474
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 475
    .line 476
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    .line 477
    .line 478
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 479
    .line 480
    const-string v1, "TAB"

    .line 481
    .line 482
    const/16 v2, 0x2c

    .line 483
    .line 484
    .line 485
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 486
    .line 487
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    .line 488
    .line 489
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 490
    .line 491
    const-string v1, "UNDO"

    .line 492
    .line 493
    const/16 v2, 0x2d

    .line 494
    .line 495
    .line 496
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 497
    .line 498
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 499
    .line 500
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 501
    .line 502
    const-string v1, "REDO"

    .line 503
    .line 504
    const/16 v2, 0x2e

    .line 505
    .line 506
    .line 507
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 508
    .line 509
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 510
    .line 511
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 512
    .line 513
    const-string v1, "CHARACTER_PALETTE"

    .line 514
    .line 515
    const/16 v2, 0x2f

    .line 516
    .line 517
    .line 518
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    .line 519
    .line 520
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->CHARACTER_PALETTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 521
    .line 522
    .line 523
    invoke-static {}, Landroidx/compose/foundation/text/KeyCommand;->a()[Landroidx/compose/foundation/text/KeyCommand;

    .line 524
    move-result-object v0

    .line 525
    .line 526
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->$VALUES:[Landroidx/compose/foundation/text/KeyCommand;

    .line 527
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/compose/foundation/text/KeyCommand;->editsText:Z

    .line 6
    return-void
.end method

.method private static final synthetic a()[Landroidx/compose/foundation/text/KeyCommand;
    .locals 3

    .line 1
    const/16 v0, 0x30

    new-array v0, v0, [Landroidx/compose/foundation/text/KeyCommand;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->HOME:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->END:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->DELETE_FROM_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->DESELECT:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->CHARACTER_PALETTE:Landroidx/compose/foundation/text/KeyCommand;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 1

    const-class v0, Landroidx/compose/foundation/text/KeyCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/KeyCommand;

    return-object p0
.end method

.method public static values()[Landroidx/compose/foundation/text/KeyCommand;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->$VALUES:[Landroidx/compose/foundation/text/KeyCommand;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/foundation/text/KeyCommand;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/KeyCommand;->editsText:Z

    return v0
.end method
