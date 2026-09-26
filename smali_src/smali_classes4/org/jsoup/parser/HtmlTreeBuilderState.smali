.class abstract enum Lorg/jsoup/parser/HtmlTreeBuilderState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/parser/HtmlTreeBuilderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterAfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field private static nullString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    .line 2
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$1;

    .line 3
    .line 4
    const-string v1, "Initial"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$1;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 11
    .line 12
    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilderState$2;

    .line 13
    .line 14
    const-string v3, "BeforeHtml"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lorg/jsoup/parser/HtmlTreeBuilderState$2;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 21
    .line 22
    new-instance v3, Lorg/jsoup/parser/HtmlTreeBuilderState$3;

    .line 23
    .line 24
    const-string v5, "BeforeHead"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState$3;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 31
    .line 32
    new-instance v5, Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 33
    .line 34
    const-string v7, "InHead"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 41
    .line 42
    new-instance v7, Lorg/jsoup/parser/HtmlTreeBuilderState$5;

    .line 43
    .line 44
    const-string v9, "InHeadNoscript"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 51
    .line 52
    new-instance v9, Lorg/jsoup/parser/HtmlTreeBuilderState$6;

    .line 53
    .line 54
    const-string v11, "AfterHead"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 61
    .line 62
    new-instance v11, Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 63
    .line 64
    const-string v13, "InBody"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v11, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 71
    .line 72
    new-instance v13, Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    .line 73
    .line 74
    const-string v15, "Text"

    .line 75
    const/4 v14, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v13, v15, v14}, Lorg/jsoup/parser/HtmlTreeBuilderState$8;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    sput-object v13, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 81
    .line 82
    new-instance v15, Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    .line 83
    .line 84
    const-string v14, "InTable"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v14, v12}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    sput-object v15, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 92
    .line 93
    new-instance v14, Lorg/jsoup/parser/HtmlTreeBuilderState$10;

    .line 94
    .line 95
    const-string v12, "InTableText"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v14, v12, v10}, Lorg/jsoup/parser/HtmlTreeBuilderState$10;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    sput-object v14, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 103
    .line 104
    new-instance v12, Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    .line 105
    .line 106
    const-string v10, "InCaption"

    .line 107
    .line 108
    const/16 v8, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v12, v10, v8}, Lorg/jsoup/parser/HtmlTreeBuilderState$11;-><init>(Ljava/lang/String;I)V

    .line 112
    .line 113
    sput-object v12, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 114
    .line 115
    new-instance v10, Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    .line 116
    .line 117
    const-string v8, "InColumnGroup"

    .line 118
    .line 119
    const/16 v6, 0xb

    .line 120
    .line 121
    .line 122
    invoke-direct {v10, v8, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;-><init>(Ljava/lang/String;I)V

    .line 123
    .line 124
    sput-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 125
    .line 126
    new-instance v8, Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 127
    .line 128
    const-string v6, "InTableBody"

    .line 129
    .line 130
    const/16 v4, 0xc

    .line 131
    .line 132
    .line 133
    invoke-direct {v8, v6, v4}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;-><init>(Ljava/lang/String;I)V

    .line 134
    .line 135
    sput-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 136
    .line 137
    new-instance v6, Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    .line 138
    .line 139
    const-string v4, "InRow"

    .line 140
    .line 141
    const/16 v2, 0xd

    .line 142
    .line 143
    .line 144
    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    sput-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 147
    .line 148
    new-instance v4, Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    .line 149
    .line 150
    const-string v2, "InCell"

    .line 151
    .line 152
    move-object/from16 v16, v6

    .line 153
    .line 154
    const/16 v6, 0xe

    .line 155
    .line 156
    .line 157
    invoke-direct {v4, v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;-><init>(Ljava/lang/String;I)V

    .line 158
    .line 159
    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 160
    .line 161
    new-instance v2, Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    .line 162
    .line 163
    const-string v6, "InSelect"

    .line 164
    .line 165
    move-object/from16 v17, v4

    .line 166
    .line 167
    const/16 v4, 0xf

    .line 168
    .line 169
    .line 170
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 173
    .line 174
    new-instance v6, Lorg/jsoup/parser/HtmlTreeBuilderState$17;

    .line 175
    .line 176
    const-string v4, "InSelectInTable"

    .line 177
    .line 178
    move-object/from16 v18, v2

    .line 179
    .line 180
    const/16 v2, 0x10

    .line 181
    .line 182
    .line 183
    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$17;-><init>(Ljava/lang/String;I)V

    .line 184
    .line 185
    sput-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 186
    .line 187
    new-instance v4, Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 188
    .line 189
    const-string v2, "AfterBody"

    .line 190
    .line 191
    move-object/from16 v19, v6

    .line 192
    .line 193
    const/16 v6, 0x11

    .line 194
    .line 195
    .line 196
    invoke-direct {v4, v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState$18;-><init>(Ljava/lang/String;I)V

    .line 197
    .line 198
    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 199
    .line 200
    new-instance v2, Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    .line 201
    .line 202
    const-string v6, "InFrameset"

    .line 203
    .line 204
    move-object/from16 v20, v4

    .line 205
    .line 206
    const/16 v4, 0x12

    .line 207
    .line 208
    .line 209
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/HtmlTreeBuilderState$19;-><init>(Ljava/lang/String;I)V

    .line 210
    .line 211
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 212
    .line 213
    new-instance v6, Lorg/jsoup/parser/HtmlTreeBuilderState$20;

    .line 214
    .line 215
    const-string v4, "AfterFrameset"

    .line 216
    .line 217
    move-object/from16 v21, v2

    .line 218
    .line 219
    const/16 v2, 0x13

    .line 220
    .line 221
    .line 222
    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$20;-><init>(Ljava/lang/String;I)V

    .line 223
    .line 224
    sput-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 225
    .line 226
    new-instance v4, Lorg/jsoup/parser/HtmlTreeBuilderState$21;

    .line 227
    .line 228
    const-string v2, "AfterAfterBody"

    .line 229
    .line 230
    move-object/from16 v22, v6

    .line 231
    .line 232
    const/16 v6, 0x14

    .line 233
    .line 234
    .line 235
    invoke-direct {v4, v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState$21;-><init>(Ljava/lang/String;I)V

    .line 236
    .line 237
    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 238
    .line 239
    new-instance v2, Lorg/jsoup/parser/HtmlTreeBuilderState$22;

    .line 240
    .line 241
    const-string v6, "AfterAfterFrameset"

    .line 242
    .line 243
    move-object/from16 v23, v4

    .line 244
    .line 245
    const/16 v4, 0x15

    .line 246
    .line 247
    .line 248
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/HtmlTreeBuilderState$22;-><init>(Ljava/lang/String;I)V

    .line 249
    .line 250
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 251
    .line 252
    new-instance v6, Lorg/jsoup/parser/HtmlTreeBuilderState$23;

    .line 253
    .line 254
    const-string v4, "ForeignContent"

    .line 255
    .line 256
    move-object/from16 v24, v2

    .line 257
    .line 258
    const/16 v2, 0x16

    .line 259
    .line 260
    .line 261
    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$23;-><init>(Ljava/lang/String;I)V

    .line 262
    .line 263
    sput-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState;->ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 264
    .line 265
    const/16 v2, 0x17

    .line 266
    .line 267
    new-array v2, v2, [Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 268
    const/4 v4, 0x0

    .line 269
    .line 270
    aput-object v0, v2, v4

    .line 271
    const/4 v0, 0x1

    .line 272
    .line 273
    aput-object v1, v2, v0

    .line 274
    const/4 v0, 0x2

    .line 275
    .line 276
    aput-object v3, v2, v0

    .line 277
    const/4 v0, 0x3

    .line 278
    .line 279
    aput-object v5, v2, v0

    .line 280
    const/4 v0, 0x4

    .line 281
    .line 282
    aput-object v7, v2, v0

    .line 283
    const/4 v0, 0x5

    .line 284
    .line 285
    aput-object v9, v2, v0

    .line 286
    const/4 v0, 0x6

    .line 287
    .line 288
    aput-object v11, v2, v0

    .line 289
    const/4 v0, 0x7

    .line 290
    .line 291
    aput-object v13, v2, v0

    .line 292
    .line 293
    const/16 v0, 0x8

    .line 294
    .line 295
    aput-object v15, v2, v0

    .line 296
    .line 297
    const/16 v0, 0x9

    .line 298
    .line 299
    aput-object v14, v2, v0

    .line 300
    .line 301
    const/16 v0, 0xa

    .line 302
    .line 303
    aput-object v12, v2, v0

    .line 304
    .line 305
    const/16 v0, 0xb

    .line 306
    .line 307
    aput-object v10, v2, v0

    .line 308
    .line 309
    const/16 v0, 0xc

    .line 310
    .line 311
    aput-object v8, v2, v0

    .line 312
    .line 313
    const/16 v0, 0xd

    .line 314
    .line 315
    aput-object v16, v2, v0

    .line 316
    .line 317
    const/16 v0, 0xe

    .line 318
    .line 319
    aput-object v17, v2, v0

    .line 320
    .line 321
    const/16 v0, 0xf

    .line 322
    .line 323
    aput-object v18, v2, v0

    .line 324
    .line 325
    const/16 v0, 0x10

    .line 326
    .line 327
    aput-object v19, v2, v0

    .line 328
    .line 329
    const/16 v0, 0x11

    .line 330
    .line 331
    aput-object v20, v2, v0

    .line 332
    .line 333
    const/16 v0, 0x12

    .line 334
    .line 335
    aput-object v21, v2, v0

    .line 336
    .line 337
    const/16 v0, 0x13

    .line 338
    .line 339
    aput-object v22, v2, v0

    .line 340
    .line 341
    const/16 v0, 0x14

    .line 342
    .line 343
    aput-object v23, v2, v0

    .line 344
    .line 345
    const/16 v0, 0x15

    .line 346
    .line 347
    aput-object v24, v2, v0

    .line 348
    .line 349
    const/16 v0, 0x16

    .line 350
    .line 351
    aput-object v6, v2, v0

    .line 352
    .line 353
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->$VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 354
    const/4 v0, 0x0

    .line 355
    .line 356
    .line 357
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 358
    move-result-object v0

    .line 359
    .line 360
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    .line 361
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/parser/Token;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Lorg/jsoup/parser/Token;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRcData(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 4
    return-void
.end method

.method static synthetic access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 4
    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 3
    .line 4
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 11
    .line 12
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 19
    return-void
.end method

.method private static handleRcData(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 3
    .line 4
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 11
    .line 12
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 19
    return-void
.end method

.method private static isWhitespace(Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-static {p0}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isWhitespace(Lorg/jsoup/parser/Token;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->$VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/jsoup/parser/HtmlTreeBuilderState;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 9
    return-object v0
.end method


# virtual methods
.method abstract process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
.end method
