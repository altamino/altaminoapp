.class abstract enum Lorg/jsoup/parser/TokeniserState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/parser/TokeniserState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BogusComment:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BogusDoctype:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CdataSection:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Comment:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEnd:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEndBang:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEndDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentStartDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Data:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Doctype:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum EndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Rawtext:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Rcdata:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptData:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

.field public static final enum TagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum TagOpen:Lorg/jsoup/parser/TokeniserState;

.field static final attributeDoubleValueCharsSorted:[C

.field static final attributeNameCharsSorted:[C

.field static final attributeSingleValueCharsSorted:[C

.field static final attributeValueUnquoted:[C

.field private static final eof:C = '\uffff'

.field static final nullChar:C = '\u0000'

.field private static final replacementChar:C = '\ufffd'

.field private static final replacementStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 69

    .line 1
    .line 2
    new-instance v0, Lorg/jsoup/parser/TokeniserState$1;

    .line 3
    .line 4
    const-string v1, "Data"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$1;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 11
    .line 12
    new-instance v1, Lorg/jsoup/parser/TokeniserState$2;

    .line 13
    .line 14
    const-string v3, "CharacterReferenceInData"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lorg/jsoup/parser/TokeniserState$2;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

    .line 21
    .line 22
    new-instance v3, Lorg/jsoup/parser/TokeniserState$3;

    .line 23
    .line 24
    const-string v5, "Rcdata"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lorg/jsoup/parser/TokeniserState$3;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 31
    .line 32
    new-instance v5, Lorg/jsoup/parser/TokeniserState$4;

    .line 33
    .line 34
    const-string v7, "CharacterReferenceInRcdata"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Lorg/jsoup/parser/TokeniserState$4;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

    .line 41
    .line 42
    new-instance v7, Lorg/jsoup/parser/TokeniserState$5;

    .line 43
    .line 44
    const-string v9, "Rawtext"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10}, Lorg/jsoup/parser/TokeniserState$5;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v7, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    .line 51
    .line 52
    new-instance v9, Lorg/jsoup/parser/TokeniserState$6;

    .line 53
    .line 54
    const-string v11, "ScriptData"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12}, Lorg/jsoup/parser/TokeniserState$6;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v9, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    .line 61
    .line 62
    new-instance v11, Lorg/jsoup/parser/TokeniserState$7;

    .line 63
    .line 64
    const-string v13, "PLAINTEXT"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14}, Lorg/jsoup/parser/TokeniserState$7;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v11, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    .line 71
    .line 72
    new-instance v13, Lorg/jsoup/parser/TokeniserState$8;

    .line 73
    .line 74
    const-string v15, "TagOpen"

    .line 75
    const/4 v14, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v13, v15, v14}, Lorg/jsoup/parser/TokeniserState$8;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    sput-object v13, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 81
    .line 82
    new-instance v15, Lorg/jsoup/parser/TokeniserState$9;

    .line 83
    .line 84
    const-string v14, "EndTagOpen"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v14, v12}, Lorg/jsoup/parser/TokeniserState$9;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    sput-object v15, Lorg/jsoup/parser/TokeniserState;->EndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 92
    .line 93
    new-instance v14, Lorg/jsoup/parser/TokeniserState$10;

    .line 94
    .line 95
    const-string v12, "TagName"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v14, v12, v10}, Lorg/jsoup/parser/TokeniserState$10;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    sput-object v14, Lorg/jsoup/parser/TokeniserState;->TagName:Lorg/jsoup/parser/TokeniserState;

    .line 103
    .line 104
    new-instance v12, Lorg/jsoup/parser/TokeniserState$11;

    .line 105
    .line 106
    const-string v10, "RcdataLessthanSign"

    .line 107
    .line 108
    const/16 v8, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v12, v10, v8}, Lorg/jsoup/parser/TokeniserState$11;-><init>(Ljava/lang/String;I)V

    .line 112
    .line 113
    sput-object v12, Lorg/jsoup/parser/TokeniserState;->RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 114
    .line 115
    new-instance v10, Lorg/jsoup/parser/TokeniserState$12;

    .line 116
    .line 117
    const-string v8, "RCDATAEndTagOpen"

    .line 118
    .line 119
    const/16 v6, 0xb

    .line 120
    .line 121
    .line 122
    invoke-direct {v10, v8, v6}, Lorg/jsoup/parser/TokeniserState$12;-><init>(Ljava/lang/String;I)V

    .line 123
    .line 124
    sput-object v10, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 125
    .line 126
    new-instance v8, Lorg/jsoup/parser/TokeniserState$13;

    .line 127
    .line 128
    const-string v6, "RCDATAEndTagName"

    .line 129
    .line 130
    const/16 v4, 0xc

    .line 131
    .line 132
    .line 133
    invoke-direct {v8, v6, v4}, Lorg/jsoup/parser/TokeniserState$13;-><init>(Ljava/lang/String;I)V

    .line 134
    .line 135
    sput-object v8, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 136
    .line 137
    new-instance v6, Lorg/jsoup/parser/TokeniserState$14;

    .line 138
    .line 139
    const-string v4, "RawtextLessthanSign"

    .line 140
    .line 141
    const/16 v2, 0xd

    .line 142
    .line 143
    .line 144
    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/TokeniserState$14;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    sput-object v6, Lorg/jsoup/parser/TokeniserState;->RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 147
    .line 148
    new-instance v4, Lorg/jsoup/parser/TokeniserState$15;

    .line 149
    .line 150
    const-string v2, "RawtextEndTagOpen"

    .line 151
    .line 152
    move-object/from16 v16, v6

    .line 153
    .line 154
    const/16 v6, 0xe

    .line 155
    .line 156
    .line 157
    invoke-direct {v4, v2, v6}, Lorg/jsoup/parser/TokeniserState$15;-><init>(Ljava/lang/String;I)V

    .line 158
    .line 159
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 160
    .line 161
    new-instance v2, Lorg/jsoup/parser/TokeniserState$16;

    .line 162
    .line 163
    const-string v6, "RawtextEndTagName"

    .line 164
    .line 165
    move-object/from16 v17, v4

    .line 166
    .line 167
    const/16 v4, 0xf

    .line 168
    .line 169
    .line 170
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$16;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 173
    .line 174
    new-instance v6, Lorg/jsoup/parser/TokeniserState$17;

    .line 175
    .line 176
    const-string v4, "ScriptDataLessthanSign"

    .line 177
    .line 178
    move-object/from16 v18, v2

    .line 179
    .line 180
    const/16 v2, 0x10

    .line 181
    .line 182
    .line 183
    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/TokeniserState$17;-><init>(Ljava/lang/String;I)V

    .line 184
    .line 185
    sput-object v6, Lorg/jsoup/parser/TokeniserState;->ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 186
    .line 187
    new-instance v4, Lorg/jsoup/parser/TokeniserState$18;

    .line 188
    .line 189
    const-string v2, "ScriptDataEndTagOpen"

    .line 190
    .line 191
    move-object/from16 v19, v6

    .line 192
    .line 193
    const/16 v6, 0x11

    .line 194
    .line 195
    .line 196
    invoke-direct {v4, v2, v6}, Lorg/jsoup/parser/TokeniserState$18;-><init>(Ljava/lang/String;I)V

    .line 197
    .line 198
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 199
    .line 200
    new-instance v2, Lorg/jsoup/parser/TokeniserState$19;

    .line 201
    .line 202
    const-string v6, "ScriptDataEndTagName"

    .line 203
    .line 204
    move-object/from16 v20, v4

    .line 205
    .line 206
    const/16 v4, 0x12

    .line 207
    .line 208
    .line 209
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$19;-><init>(Ljava/lang/String;I)V

    .line 210
    .line 211
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 212
    .line 213
    new-instance v6, Lorg/jsoup/parser/TokeniserState$20;

    .line 214
    .line 215
    const-string v4, "ScriptDataEscapeStart"

    .line 216
    .line 217
    move-object/from16 v21, v2

    .line 218
    .line 219
    const/16 v2, 0x13

    .line 220
    .line 221
    .line 222
    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/TokeniserState$20;-><init>(Ljava/lang/String;I)V

    .line 223
    .line 224
    sput-object v6, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

    .line 225
    .line 226
    new-instance v4, Lorg/jsoup/parser/TokeniserState$21;

    .line 227
    .line 228
    const-string v2, "ScriptDataEscapeStartDash"

    .line 229
    .line 230
    move-object/from16 v22, v6

    .line 231
    .line 232
    const/16 v6, 0x14

    .line 233
    .line 234
    .line 235
    invoke-direct {v4, v2, v6}, Lorg/jsoup/parser/TokeniserState$21;-><init>(Ljava/lang/String;I)V

    .line 236
    .line 237
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState;

    .line 238
    .line 239
    new-instance v2, Lorg/jsoup/parser/TokeniserState$22;

    .line 240
    .line 241
    const-string v6, "ScriptDataEscaped"

    .line 242
    .line 243
    move-object/from16 v23, v4

    .line 244
    .line 245
    const/16 v4, 0x15

    .line 246
    .line 247
    .line 248
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$22;-><init>(Ljava/lang/String;I)V

    .line 249
    .line 250
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    .line 251
    .line 252
    new-instance v6, Lorg/jsoup/parser/TokeniserState$23;

    .line 253
    .line 254
    const-string v4, "ScriptDataEscapedDash"

    .line 255
    .line 256
    move-object/from16 v24, v2

    .line 257
    .line 258
    const/16 v2, 0x16

    .line 259
    .line 260
    .line 261
    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/TokeniserState$23;-><init>(Ljava/lang/String;I)V

    .line 262
    .line 263
    sput-object v6, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

    .line 264
    .line 265
    new-instance v2, Lorg/jsoup/parser/TokeniserState$24;

    .line 266
    .line 267
    const-string v4, "ScriptDataEscapedDashDash"

    .line 268
    .line 269
    move-object/from16 v25, v6

    .line 270
    .line 271
    const/16 v6, 0x17

    .line 272
    .line 273
    .line 274
    invoke-direct {v2, v4, v6}, Lorg/jsoup/parser/TokeniserState$24;-><init>(Ljava/lang/String;I)V

    .line 275
    .line 276
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    .line 277
    .line 278
    new-instance v4, Lorg/jsoup/parser/TokeniserState$25;

    .line 279
    .line 280
    const-string v6, "ScriptDataEscapedLessthanSign"

    .line 281
    .line 282
    move-object/from16 v26, v2

    .line 283
    .line 284
    const/16 v2, 0x18

    .line 285
    .line 286
    .line 287
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$25;-><init>(Ljava/lang/String;I)V

    .line 288
    .line 289
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 290
    .line 291
    new-instance v2, Lorg/jsoup/parser/TokeniserState$26;

    .line 292
    .line 293
    const-string v6, "ScriptDataEscapedEndTagOpen"

    .line 294
    .line 295
    move-object/from16 v27, v4

    .line 296
    .line 297
    const/16 v4, 0x19

    .line 298
    .line 299
    .line 300
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$26;-><init>(Ljava/lang/String;I)V

    .line 301
    .line 302
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 303
    .line 304
    new-instance v4, Lorg/jsoup/parser/TokeniserState$27;

    .line 305
    .line 306
    const-string v6, "ScriptDataEscapedEndTagName"

    .line 307
    .line 308
    move-object/from16 v28, v2

    .line 309
    .line 310
    const/16 v2, 0x1a

    .line 311
    .line 312
    .line 313
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$27;-><init>(Ljava/lang/String;I)V

    .line 314
    .line 315
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 316
    .line 317
    new-instance v2, Lorg/jsoup/parser/TokeniserState$28;

    .line 318
    .line 319
    const-string v6, "ScriptDataDoubleEscapeStart"

    .line 320
    .line 321
    move-object/from16 v29, v4

    .line 322
    .line 323
    const/16 v4, 0x1b

    .line 324
    .line 325
    .line 326
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$28;-><init>(Ljava/lang/String;I)V

    .line 327
    .line 328
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

    .line 329
    .line 330
    new-instance v4, Lorg/jsoup/parser/TokeniserState$29;

    .line 331
    .line 332
    const-string v6, "ScriptDataDoubleEscaped"

    .line 333
    .line 334
    move-object/from16 v30, v2

    .line 335
    .line 336
    const/16 v2, 0x1c

    .line 337
    .line 338
    .line 339
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$29;-><init>(Ljava/lang/String;I)V

    .line 340
    .line 341
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    .line 342
    .line 343
    new-instance v2, Lorg/jsoup/parser/TokeniserState$30;

    .line 344
    .line 345
    const-string v6, "ScriptDataDoubleEscapedDash"

    .line 346
    .line 347
    move-object/from16 v31, v4

    .line 348
    .line 349
    const/16 v4, 0x1d

    .line 350
    .line 351
    .line 352
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$30;-><init>(Ljava/lang/String;I)V

    .line 353
    .line 354
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

    .line 355
    .line 356
    new-instance v4, Lorg/jsoup/parser/TokeniserState$31;

    .line 357
    .line 358
    const-string v6, "ScriptDataDoubleEscapedDashDash"

    .line 359
    .line 360
    move-object/from16 v32, v2

    .line 361
    .line 362
    const/16 v2, 0x1e

    .line 363
    .line 364
    .line 365
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$31;-><init>(Ljava/lang/String;I)V

    .line 366
    .line 367
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    .line 368
    .line 369
    new-instance v2, Lorg/jsoup/parser/TokeniserState$32;

    .line 370
    .line 371
    const-string v6, "ScriptDataDoubleEscapedLessthanSign"

    .line 372
    .line 373
    move-object/from16 v33, v4

    .line 374
    .line 375
    const/16 v4, 0x1f

    .line 376
    .line 377
    .line 378
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$32;-><init>(Ljava/lang/String;I)V

    .line 379
    .line 380
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 381
    .line 382
    new-instance v4, Lorg/jsoup/parser/TokeniserState$33;

    .line 383
    .line 384
    const-string v6, "ScriptDataDoubleEscapeEnd"

    .line 385
    .line 386
    move-object/from16 v34, v2

    .line 387
    .line 388
    const/16 v2, 0x20

    .line 389
    .line 390
    .line 391
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$33;-><init>(Ljava/lang/String;I)V

    .line 392
    .line 393
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

    .line 394
    .line 395
    new-instance v2, Lorg/jsoup/parser/TokeniserState$34;

    .line 396
    .line 397
    const-string v6, "BeforeAttributeName"

    .line 398
    .line 399
    move-object/from16 v35, v4

    .line 400
    .line 401
    const/16 v4, 0x21

    .line 402
    .line 403
    .line 404
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$34;-><init>(Ljava/lang/String;I)V

    .line 405
    .line 406
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 407
    .line 408
    new-instance v4, Lorg/jsoup/parser/TokeniserState$35;

    .line 409
    .line 410
    const-string v6, "AttributeName"

    .line 411
    .line 412
    move-object/from16 v36, v2

    .line 413
    .line 414
    const/16 v2, 0x22

    .line 415
    .line 416
    .line 417
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$35;-><init>(Ljava/lang/String;I)V

    .line 418
    .line 419
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 420
    .line 421
    new-instance v2, Lorg/jsoup/parser/TokeniserState$36;

    .line 422
    .line 423
    const-string v6, "AfterAttributeName"

    .line 424
    .line 425
    move-object/from16 v37, v4

    .line 426
    .line 427
    const/16 v4, 0x23

    .line 428
    .line 429
    .line 430
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$36;-><init>(Ljava/lang/String;I)V

    .line 431
    .line 432
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 433
    .line 434
    new-instance v4, Lorg/jsoup/parser/TokeniserState$37;

    .line 435
    .line 436
    const-string v6, "BeforeAttributeValue"

    .line 437
    .line 438
    move-object/from16 v38, v2

    .line 439
    .line 440
    const/16 v2, 0x24

    .line 441
    .line 442
    .line 443
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$37;-><init>(Ljava/lang/String;I)V

    .line 444
    .line 445
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    .line 446
    .line 447
    new-instance v2, Lorg/jsoup/parser/TokeniserState$38;

    .line 448
    .line 449
    const-string v6, "AttributeValue_doubleQuoted"

    .line 450
    .line 451
    move-object/from16 v39, v4

    .line 452
    .line 453
    const/16 v4, 0x25

    .line 454
    .line 455
    .line 456
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$38;-><init>(Ljava/lang/String;I)V

    .line 457
    .line 458
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 459
    .line 460
    new-instance v4, Lorg/jsoup/parser/TokeniserState$39;

    .line 461
    .line 462
    const-string v6, "AttributeValue_singleQuoted"

    .line 463
    .line 464
    move-object/from16 v40, v2

    .line 465
    .line 466
    const/16 v2, 0x26

    .line 467
    .line 468
    .line 469
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$39;-><init>(Ljava/lang/String;I)V

    .line 470
    .line 471
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 472
    .line 473
    new-instance v2, Lorg/jsoup/parser/TokeniserState$40;

    .line 474
    .line 475
    const-string v6, "AttributeValue_unquoted"

    .line 476
    .line 477
    move-object/from16 v41, v4

    .line 478
    .line 479
    const/16 v4, 0x27

    .line 480
    .line 481
    .line 482
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$40;-><init>(Ljava/lang/String;I)V

    .line 483
    .line 484
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

    .line 485
    .line 486
    new-instance v4, Lorg/jsoup/parser/TokeniserState$41;

    .line 487
    .line 488
    const-string v6, "AfterAttributeValue_quoted"

    .line 489
    .line 490
    move-object/from16 v42, v2

    .line 491
    .line 492
    const/16 v2, 0x28

    .line 493
    .line 494
    .line 495
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$41;-><init>(Ljava/lang/String;I)V

    .line 496
    .line 497
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    .line 498
    .line 499
    new-instance v2, Lorg/jsoup/parser/TokeniserState$42;

    .line 500
    .line 501
    const-string v6, "SelfClosingStartTag"

    .line 502
    .line 503
    move-object/from16 v43, v4

    .line 504
    .line 505
    const/16 v4, 0x29

    .line 506
    .line 507
    .line 508
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$42;-><init>(Ljava/lang/String;I)V

    .line 509
    .line 510
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 511
    .line 512
    new-instance v4, Lorg/jsoup/parser/TokeniserState$43;

    .line 513
    .line 514
    const-string v6, "BogusComment"

    .line 515
    .line 516
    move-object/from16 v44, v2

    .line 517
    .line 518
    const/16 v2, 0x2a

    .line 519
    .line 520
    .line 521
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$43;-><init>(Ljava/lang/String;I)V

    .line 522
    .line 523
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    .line 524
    .line 525
    new-instance v2, Lorg/jsoup/parser/TokeniserState$44;

    .line 526
    .line 527
    const-string v6, "MarkupDeclarationOpen"

    .line 528
    .line 529
    move-object/from16 v45, v4

    .line 530
    .line 531
    const/16 v4, 0x2b

    .line 532
    .line 533
    .line 534
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$44;-><init>(Ljava/lang/String;I)V

    .line 535
    .line 536
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

    .line 537
    .line 538
    new-instance v4, Lorg/jsoup/parser/TokeniserState$45;

    .line 539
    .line 540
    const-string v6, "CommentStart"

    .line 541
    .line 542
    move-object/from16 v46, v2

    .line 543
    .line 544
    const/16 v2, 0x2c

    .line 545
    .line 546
    .line 547
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$45;-><init>(Ljava/lang/String;I)V

    .line 548
    .line 549
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->CommentStart:Lorg/jsoup/parser/TokeniserState;

    .line 550
    .line 551
    new-instance v2, Lorg/jsoup/parser/TokeniserState$46;

    .line 552
    .line 553
    const-string v6, "CommentStartDash"

    .line 554
    .line 555
    move-object/from16 v47, v4

    .line 556
    .line 557
    const/16 v4, 0x2d

    .line 558
    .line 559
    .line 560
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$46;-><init>(Ljava/lang/String;I)V

    .line 561
    .line 562
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->CommentStartDash:Lorg/jsoup/parser/TokeniserState;

    .line 563
    .line 564
    new-instance v4, Lorg/jsoup/parser/TokeniserState$47;

    .line 565
    .line 566
    const-string v6, "Comment"

    .line 567
    .line 568
    move-object/from16 v48, v2

    .line 569
    .line 570
    const/16 v2, 0x2e

    .line 571
    .line 572
    .line 573
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$47;-><init>(Ljava/lang/String;I)V

    .line 574
    .line 575
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    .line 576
    .line 577
    new-instance v2, Lorg/jsoup/parser/TokeniserState$48;

    .line 578
    .line 579
    const-string v6, "CommentEndDash"

    .line 580
    .line 581
    move-object/from16 v49, v4

    .line 582
    .line 583
    const/16 v4, 0x2f

    .line 584
    .line 585
    .line 586
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$48;-><init>(Ljava/lang/String;I)V

    .line 587
    .line 588
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->CommentEndDash:Lorg/jsoup/parser/TokeniserState;

    .line 589
    .line 590
    new-instance v4, Lorg/jsoup/parser/TokeniserState$49;

    .line 591
    .line 592
    const-string v6, "CommentEnd"

    .line 593
    .line 594
    move-object/from16 v50, v2

    .line 595
    .line 596
    const/16 v2, 0x30

    .line 597
    .line 598
    .line 599
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$49;-><init>(Ljava/lang/String;I)V

    .line 600
    .line 601
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->CommentEnd:Lorg/jsoup/parser/TokeniserState;

    .line 602
    .line 603
    new-instance v2, Lorg/jsoup/parser/TokeniserState$50;

    .line 604
    .line 605
    const-string v6, "CommentEndBang"

    .line 606
    .line 607
    move-object/from16 v51, v4

    .line 608
    .line 609
    const/16 v4, 0x31

    .line 610
    .line 611
    .line 612
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$50;-><init>(Ljava/lang/String;I)V

    .line 613
    .line 614
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->CommentEndBang:Lorg/jsoup/parser/TokeniserState;

    .line 615
    .line 616
    new-instance v4, Lorg/jsoup/parser/TokeniserState$51;

    .line 617
    .line 618
    const-string v6, "Doctype"

    .line 619
    .line 620
    move-object/from16 v52, v2

    .line 621
    .line 622
    const/16 v2, 0x32

    .line 623
    .line 624
    .line 625
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$51;-><init>(Ljava/lang/String;I)V

    .line 626
    .line 627
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->Doctype:Lorg/jsoup/parser/TokeniserState;

    .line 628
    .line 629
    new-instance v2, Lorg/jsoup/parser/TokeniserState$52;

    .line 630
    .line 631
    const-string v6, "BeforeDoctypeName"

    .line 632
    .line 633
    move-object/from16 v53, v4

    .line 634
    .line 635
    const/16 v4, 0x33

    .line 636
    .line 637
    .line 638
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$52;-><init>(Ljava/lang/String;I)V

    .line 639
    .line 640
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 641
    .line 642
    new-instance v4, Lorg/jsoup/parser/TokeniserState$53;

    .line 643
    .line 644
    const-string v6, "DoctypeName"

    .line 645
    .line 646
    move-object/from16 v54, v2

    .line 647
    .line 648
    const/16 v2, 0x34

    .line 649
    .line 650
    .line 651
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$53;-><init>(Ljava/lang/String;I)V

    .line 652
    .line 653
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 654
    .line 655
    new-instance v2, Lorg/jsoup/parser/TokeniserState$54;

    .line 656
    .line 657
    const-string v6, "AfterDoctypeName"

    .line 658
    .line 659
    move-object/from16 v55, v4

    .line 660
    .line 661
    const/16 v4, 0x35

    .line 662
    .line 663
    .line 664
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$54;-><init>(Ljava/lang/String;I)V

    .line 665
    .line 666
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 667
    .line 668
    new-instance v4, Lorg/jsoup/parser/TokeniserState$55;

    .line 669
    .line 670
    const-string v6, "AfterDoctypePublicKeyword"

    .line 671
    .line 672
    move-object/from16 v56, v2

    .line 673
    .line 674
    const/16 v2, 0x36

    .line 675
    .line 676
    .line 677
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$55;-><init>(Ljava/lang/String;I)V

    .line 678
    .line 679
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

    .line 680
    .line 681
    new-instance v2, Lorg/jsoup/parser/TokeniserState$56;

    .line 682
    .line 683
    const-string v6, "BeforeDoctypePublicIdentifier"

    .line 684
    .line 685
    move-object/from16 v57, v4

    .line 686
    .line 687
    const/16 v4, 0x37

    .line 688
    .line 689
    .line 690
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$56;-><init>(Ljava/lang/String;I)V

    .line 691
    .line 692
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 693
    .line 694
    new-instance v4, Lorg/jsoup/parser/TokeniserState$57;

    .line 695
    .line 696
    const-string v6, "DoctypePublicIdentifier_doubleQuoted"

    .line 697
    .line 698
    move-object/from16 v58, v2

    .line 699
    .line 700
    const/16 v2, 0x38

    .line 701
    .line 702
    .line 703
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$57;-><init>(Ljava/lang/String;I)V

    .line 704
    .line 705
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 706
    .line 707
    new-instance v2, Lorg/jsoup/parser/TokeniserState$58;

    .line 708
    .line 709
    const-string v6, "DoctypePublicIdentifier_singleQuoted"

    .line 710
    .line 711
    move-object/from16 v59, v4

    .line 712
    .line 713
    const/16 v4, 0x39

    .line 714
    .line 715
    .line 716
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$58;-><init>(Ljava/lang/String;I)V

    .line 717
    .line 718
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 719
    .line 720
    new-instance v4, Lorg/jsoup/parser/TokeniserState$59;

    .line 721
    .line 722
    const-string v6, "AfterDoctypePublicIdentifier"

    .line 723
    .line 724
    move-object/from16 v60, v2

    .line 725
    .line 726
    const/16 v2, 0x3a

    .line 727
    .line 728
    .line 729
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$59;-><init>(Ljava/lang/String;I)V

    .line 730
    .line 731
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 732
    .line 733
    new-instance v2, Lorg/jsoup/parser/TokeniserState$60;

    .line 734
    .line 735
    const-string v6, "BetweenDoctypePublicAndSystemIdentifiers"

    .line 736
    .line 737
    move-object/from16 v61, v4

    .line 738
    .line 739
    const/16 v4, 0x3b

    .line 740
    .line 741
    .line 742
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$60;-><init>(Ljava/lang/String;I)V

    .line 743
    .line 744
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState;

    .line 745
    .line 746
    new-instance v4, Lorg/jsoup/parser/TokeniserState$61;

    .line 747
    .line 748
    const-string v6, "AfterDoctypeSystemKeyword"

    .line 749
    .line 750
    move-object/from16 v62, v2

    .line 751
    .line 752
    const/16 v2, 0x3c

    .line 753
    .line 754
    .line 755
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$61;-><init>(Ljava/lang/String;I)V

    .line 756
    .line 757
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

    .line 758
    .line 759
    new-instance v2, Lorg/jsoup/parser/TokeniserState$62;

    .line 760
    .line 761
    const-string v6, "BeforeDoctypeSystemIdentifier"

    .line 762
    .line 763
    move-object/from16 v63, v4

    .line 764
    .line 765
    const/16 v4, 0x3d

    .line 766
    .line 767
    .line 768
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$62;-><init>(Ljava/lang/String;I)V

    .line 769
    .line 770
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 771
    .line 772
    new-instance v4, Lorg/jsoup/parser/TokeniserState$63;

    .line 773
    .line 774
    const-string v6, "DoctypeSystemIdentifier_doubleQuoted"

    .line 775
    .line 776
    move-object/from16 v64, v2

    .line 777
    .line 778
    const/16 v2, 0x3e

    .line 779
    .line 780
    .line 781
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$63;-><init>(Ljava/lang/String;I)V

    .line 782
    .line 783
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 784
    .line 785
    new-instance v2, Lorg/jsoup/parser/TokeniserState$64;

    .line 786
    .line 787
    const-string v6, "DoctypeSystemIdentifier_singleQuoted"

    .line 788
    .line 789
    move-object/from16 v65, v4

    .line 790
    .line 791
    const/16 v4, 0x3f

    .line 792
    .line 793
    .line 794
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$64;-><init>(Ljava/lang/String;I)V

    .line 795
    .line 796
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 797
    .line 798
    new-instance v4, Lorg/jsoup/parser/TokeniserState$65;

    .line 799
    .line 800
    const-string v6, "AfterDoctypeSystemIdentifier"

    .line 801
    .line 802
    move-object/from16 v66, v2

    .line 803
    .line 804
    const/16 v2, 0x40

    .line 805
    .line 806
    .line 807
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$65;-><init>(Ljava/lang/String;I)V

    .line 808
    .line 809
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 810
    .line 811
    new-instance v2, Lorg/jsoup/parser/TokeniserState$66;

    .line 812
    .line 813
    const-string v6, "BogusDoctype"

    .line 814
    .line 815
    move-object/from16 v67, v4

    .line 816
    .line 817
    const/16 v4, 0x41

    .line 818
    .line 819
    .line 820
    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$66;-><init>(Ljava/lang/String;I)V

    .line 821
    .line 822
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    .line 823
    .line 824
    new-instance v4, Lorg/jsoup/parser/TokeniserState$67;

    .line 825
    .line 826
    const-string v6, "CdataSection"

    .line 827
    .line 828
    move-object/from16 v68, v2

    .line 829
    .line 830
    const/16 v2, 0x42

    .line 831
    .line 832
    .line 833
    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$67;-><init>(Ljava/lang/String;I)V

    .line 834
    .line 835
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->CdataSection:Lorg/jsoup/parser/TokeniserState;

    .line 836
    .line 837
    const/16 v2, 0x43

    .line 838
    .line 839
    new-array v2, v2, [Lorg/jsoup/parser/TokeniserState;

    .line 840
    const/4 v6, 0x0

    .line 841
    .line 842
    aput-object v0, v2, v6

    .line 843
    const/4 v0, 0x1

    .line 844
    .line 845
    aput-object v1, v2, v0

    .line 846
    const/4 v0, 0x2

    .line 847
    .line 848
    aput-object v3, v2, v0

    .line 849
    const/4 v0, 0x3

    .line 850
    .line 851
    aput-object v5, v2, v0

    .line 852
    const/4 v0, 0x4

    .line 853
    .line 854
    aput-object v7, v2, v0

    .line 855
    const/4 v0, 0x5

    .line 856
    .line 857
    aput-object v9, v2, v0

    .line 858
    const/4 v0, 0x6

    .line 859
    .line 860
    aput-object v11, v2, v0

    .line 861
    const/4 v0, 0x7

    .line 862
    .line 863
    aput-object v13, v2, v0

    .line 864
    .line 865
    const/16 v0, 0x8

    .line 866
    .line 867
    aput-object v15, v2, v0

    .line 868
    .line 869
    const/16 v0, 0x9

    .line 870
    .line 871
    aput-object v14, v2, v0

    .line 872
    .line 873
    const/16 v0, 0xa

    .line 874
    .line 875
    aput-object v12, v2, v0

    .line 876
    .line 877
    const/16 v0, 0xb

    .line 878
    .line 879
    aput-object v10, v2, v0

    .line 880
    .line 881
    const/16 v0, 0xc

    .line 882
    .line 883
    aput-object v8, v2, v0

    .line 884
    .line 885
    const/16 v0, 0xd

    .line 886
    .line 887
    aput-object v16, v2, v0

    .line 888
    .line 889
    const/16 v0, 0xe

    .line 890
    .line 891
    aput-object v17, v2, v0

    .line 892
    .line 893
    const/16 v0, 0xf

    .line 894
    .line 895
    aput-object v18, v2, v0

    .line 896
    .line 897
    const/16 v0, 0x10

    .line 898
    .line 899
    aput-object v19, v2, v0

    .line 900
    .line 901
    const/16 v0, 0x11

    .line 902
    .line 903
    aput-object v20, v2, v0

    .line 904
    .line 905
    const/16 v0, 0x12

    .line 906
    .line 907
    aput-object v21, v2, v0

    .line 908
    .line 909
    const/16 v0, 0x13

    .line 910
    .line 911
    aput-object v22, v2, v0

    .line 912
    .line 913
    const/16 v0, 0x14

    .line 914
    .line 915
    aput-object v23, v2, v0

    .line 916
    .line 917
    const/16 v0, 0x15

    .line 918
    .line 919
    aput-object v24, v2, v0

    .line 920
    .line 921
    const/16 v0, 0x16

    .line 922
    .line 923
    aput-object v25, v2, v0

    .line 924
    .line 925
    const/16 v0, 0x17

    .line 926
    .line 927
    aput-object v26, v2, v0

    .line 928
    .line 929
    const/16 v0, 0x18

    .line 930
    .line 931
    aput-object v27, v2, v0

    .line 932
    .line 933
    const/16 v0, 0x19

    .line 934
    .line 935
    aput-object v28, v2, v0

    .line 936
    .line 937
    const/16 v0, 0x1a

    .line 938
    .line 939
    aput-object v29, v2, v0

    .line 940
    .line 941
    const/16 v0, 0x1b

    .line 942
    .line 943
    aput-object v30, v2, v0

    .line 944
    .line 945
    const/16 v0, 0x1c

    .line 946
    .line 947
    aput-object v31, v2, v0

    .line 948
    .line 949
    const/16 v0, 0x1d

    .line 950
    .line 951
    aput-object v32, v2, v0

    .line 952
    .line 953
    const/16 v0, 0x1e

    .line 954
    .line 955
    aput-object v33, v2, v0

    .line 956
    .line 957
    const/16 v0, 0x1f

    .line 958
    .line 959
    aput-object v34, v2, v0

    .line 960
    .line 961
    const/16 v0, 0x20

    .line 962
    .line 963
    aput-object v35, v2, v0

    .line 964
    .line 965
    const/16 v0, 0x21

    .line 966
    .line 967
    aput-object v36, v2, v0

    .line 968
    .line 969
    const/16 v0, 0x22

    .line 970
    .line 971
    aput-object v37, v2, v0

    .line 972
    .line 973
    const/16 v0, 0x23

    .line 974
    .line 975
    aput-object v38, v2, v0

    .line 976
    .line 977
    const/16 v0, 0x24

    .line 978
    .line 979
    aput-object v39, v2, v0

    .line 980
    .line 981
    const/16 v0, 0x25

    .line 982
    .line 983
    aput-object v40, v2, v0

    .line 984
    .line 985
    const/16 v0, 0x26

    .line 986
    .line 987
    aput-object v41, v2, v0

    .line 988
    .line 989
    const/16 v0, 0x27

    .line 990
    .line 991
    aput-object v42, v2, v0

    .line 992
    .line 993
    const/16 v0, 0x28

    .line 994
    .line 995
    aput-object v43, v2, v0

    .line 996
    .line 997
    const/16 v0, 0x29

    .line 998
    .line 999
    aput-object v44, v2, v0

    .line 1000
    .line 1001
    const/16 v0, 0x2a

    .line 1002
    .line 1003
    aput-object v45, v2, v0

    .line 1004
    .line 1005
    const/16 v0, 0x2b

    .line 1006
    .line 1007
    aput-object v46, v2, v0

    .line 1008
    .line 1009
    const/16 v0, 0x2c

    .line 1010
    .line 1011
    aput-object v47, v2, v0

    .line 1012
    .line 1013
    const/16 v0, 0x2d

    .line 1014
    .line 1015
    aput-object v48, v2, v0

    .line 1016
    .line 1017
    const/16 v0, 0x2e

    .line 1018
    .line 1019
    aput-object v49, v2, v0

    .line 1020
    .line 1021
    const/16 v0, 0x2f

    .line 1022
    .line 1023
    aput-object v50, v2, v0

    .line 1024
    .line 1025
    const/16 v0, 0x30

    .line 1026
    .line 1027
    aput-object v51, v2, v0

    .line 1028
    .line 1029
    const/16 v0, 0x31

    .line 1030
    .line 1031
    aput-object v52, v2, v0

    .line 1032
    .line 1033
    const/16 v0, 0x32

    .line 1034
    .line 1035
    aput-object v53, v2, v0

    .line 1036
    .line 1037
    const/16 v0, 0x33

    .line 1038
    .line 1039
    aput-object v54, v2, v0

    .line 1040
    .line 1041
    const/16 v0, 0x34

    .line 1042
    .line 1043
    aput-object v55, v2, v0

    .line 1044
    .line 1045
    const/16 v0, 0x35

    .line 1046
    .line 1047
    aput-object v56, v2, v0

    .line 1048
    .line 1049
    const/16 v0, 0x36

    .line 1050
    .line 1051
    aput-object v57, v2, v0

    .line 1052
    .line 1053
    const/16 v0, 0x37

    .line 1054
    .line 1055
    aput-object v58, v2, v0

    .line 1056
    .line 1057
    const/16 v0, 0x38

    .line 1058
    .line 1059
    aput-object v59, v2, v0

    .line 1060
    .line 1061
    const/16 v0, 0x39

    .line 1062
    .line 1063
    aput-object v60, v2, v0

    .line 1064
    .line 1065
    const/16 v0, 0x3a

    .line 1066
    .line 1067
    aput-object v61, v2, v0

    .line 1068
    .line 1069
    const/16 v0, 0x3b

    .line 1070
    .line 1071
    aput-object v62, v2, v0

    .line 1072
    .line 1073
    const/16 v0, 0x3c

    .line 1074
    .line 1075
    aput-object v63, v2, v0

    .line 1076
    .line 1077
    const/16 v0, 0x3d

    .line 1078
    .line 1079
    aput-object v64, v2, v0

    .line 1080
    .line 1081
    const/16 v0, 0x3e

    .line 1082
    .line 1083
    aput-object v65, v2, v0

    .line 1084
    .line 1085
    const/16 v0, 0x3f

    .line 1086
    .line 1087
    aput-object v66, v2, v0

    .line 1088
    .line 1089
    const/16 v0, 0x40

    .line 1090
    .line 1091
    aput-object v67, v2, v0

    .line 1092
    .line 1093
    const/16 v0, 0x41

    .line 1094
    .line 1095
    aput-object v68, v2, v0

    .line 1096
    .line 1097
    const/16 v0, 0x42

    .line 1098
    .line 1099
    aput-object v4, v2, v0

    .line 1100
    .line 1101
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    .line 1102
    const/4 v0, 0x3

    .line 1103
    .line 1104
    new-array v1, v0, [C

    .line 1105
    .line 1106
    .line 1107
    fill-array-data v1, :array_0

    .line 1108
    .line 1109
    sput-object v1, Lorg/jsoup/parser/TokeniserState;->attributeSingleValueCharsSorted:[C

    .line 1110
    .line 1111
    new-array v0, v0, [C

    .line 1112
    .line 1113
    .line 1114
    fill-array-data v0, :array_1

    .line 1115
    .line 1116
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeDoubleValueCharsSorted:[C

    .line 1117
    .line 1118
    const/16 v0, 0xc

    .line 1119
    .line 1120
    new-array v0, v0, [C

    .line 1121
    .line 1122
    .line 1123
    fill-array-data v0, :array_2

    .line 1124
    .line 1125
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    .line 1126
    .line 1127
    const/16 v0, 0xd

    .line 1128
    .line 1129
    new-array v0, v0, [C

    .line 1130
    .line 1131
    .line 1132
    fill-array-data v0, :array_3

    .line 1133
    .line 1134
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    .line 1135
    .line 1136
    .line 1137
    const v0, 0xfffd

    .line 1138
    .line 1139
    .line 1140
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 1141
    move-result-object v0

    .line 1142
    .line 1143
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    .line 1144
    return-void

    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    :array_0
    .array-data 2
        0x0s
        0x26s
        0x27s
    .end array-data

    .line 1152
    nop

    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    :array_1
    .array-data 2
        0x0s
        0x22s
        0x26s
    .end array-data

    .line 1160
    nop

    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    :array_2
    .array-data 2
        0x0s
        0x9s
        0xas
        0xcs
        0xds
        0x20s
        0x22s
        0x27s
        0x2fs
        0x3cs
        0x3ds
        0x3es
    .end array-data

    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    :array_3
    .array-data 2
        0x0s
        0x9s
        0xas
        0xcs
        0xds
        0x20s
        0x22s
        0x26s
        0x27s
        0x3cs
        0x3ds
        0x3es
        0x60s
    .end array-data
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

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/jsoup/parser/TokeniserState;->readCharRef(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V

    .line 4
    return-void
.end method

.method static synthetic access$200(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->readData(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    .line 4
    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->readEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    .line 4
    return-void
.end method

.method static synthetic access$500(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState;->handleDataEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V

    .line 4
    return-void
.end method

.method static synthetic access$600(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->handleDataDoubleEscapeTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    .line 4
    return-void
.end method

.method private static handleDataDoubleEscapeTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 19
    return-void

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 23
    move-result v0

    .line 24
    .line 25
    const/16 v1, 0x9

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0xc

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    const/16 v1, 0xd

    .line 38
    .line 39
    if-eq v0, v1, :cond_1

    .line 40
    .line 41
    const/16 v1, 0x20

    .line 42
    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    const/16 v1, 0x2f

    .line 46
    .line 47
    if-eq v0, v1, :cond_1

    .line 48
    .line 49
    const/16 v1, 0x3e

    .line 50
    .line 51
    if-eq v0, v1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string/jumbo v1, "script"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 83
    :goto_1
    return-void
.end method

.method private static handleDataEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    return-void

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 37
    move-result p1

    .line 38
    .line 39
    const/16 v0, 0x9

    .line 40
    .line 41
    if-eq p1, v0, :cond_3

    .line 42
    .line 43
    const/16 v0, 0xa

    .line 44
    .line 45
    if-eq p1, v0, :cond_3

    .line 46
    .line 47
    const/16 v0, 0xc

    .line 48
    .line 49
    if-eq p1, v0, :cond_3

    .line 50
    .line 51
    const/16 v0, 0xd

    .line 52
    .line 53
    if-eq p1, v0, :cond_3

    .line 54
    .line 55
    const/16 v0, 0x20

    .line 56
    .line 57
    if-eq p1, v0, :cond_3

    .line 58
    .line 59
    const/16 v0, 0x2f

    .line 60
    .line 61
    if-eq p1, v0, :cond_2

    .line 62
    .line 63
    const/16 v0, 0x3e

    .line 64
    .line 65
    if-eq p1, v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 75
    .line 76
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_2
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_3
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    const-string v0, "</"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 122
    :goto_1
    return-void
.end method

.method private static readCharRef(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x26

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit([I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 21
    return-void
.end method

.method private static readData(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const/16 p2, 0x3c

    .line 9
    .line 10
    if-eq v0, p2, :cond_1

    .line 11
    .line 12
    .line 13
    const p2, 0xffff

    .line 14
    .line 15
    if-eq v0, p2, :cond_0

    .line 16
    const/4 p2, 0x2

    .line 17
    .line 18
    new-array p2, p2, [C

    .line 19
    .line 20
    .line 21
    fill-array-data p2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance p1, Lorg/jsoup/parser/Token$EOF;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 49
    .line 50
    .line 51
    const p1, 0xfffd

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 55
    :goto_0
    return-void

    .line 56
    nop

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    :array_0
    .array-data 2
        0x3cs
        0x0s
    .end array-data
.end method

.method private static readEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->createTagPending(Z)Lorg/jsoup/parser/Token$Tag;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-string p1, "</"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 23
    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/TokeniserState;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/jsoup/parser/TokeniserState;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/jsoup/parser/TokeniserState;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/TokeniserState;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/jsoup/parser/TokeniserState;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/jsoup/parser/TokeniserState;

    .line 9
    return-object v0
.end method


# virtual methods
.method abstract read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
.end method
