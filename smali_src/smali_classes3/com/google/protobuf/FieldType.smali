.class public final enum Lcom/google/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldType$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/FieldType;

.field public static final enum BOOL:Lcom/google/protobuf/FieldType;

.field public static final enum BOOL_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum BOOL_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum BYTES:Lcom/google/protobuf/FieldType;

.field public static final enum BYTES_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE:Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Lcom/google/protobuf/FieldType;

.field public static final enum ENUM_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum ENUM_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED32:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED64:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum FLOAT:Lcom/google/protobuf/FieldType;

.field public static final enum FLOAT_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum FLOAT_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum GROUP:Lcom/google/protobuf/FieldType;

.field public static final enum GROUP_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum INT32:Lcom/google/protobuf/FieldType;

.field public static final enum INT32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum INT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum INT64:Lcom/google/protobuf/FieldType;

.field public static final enum INT64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum INT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum MAP:Lcom/google/protobuf/FieldType;

.field public static final enum MESSAGE:Lcom/google/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED32:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED64:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum SINT32:Lcom/google/protobuf/FieldType;

.field public static final enum SINT32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum STRING:Lcom/google/protobuf/FieldType;

.field public static final enum STRING_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum UINT32:Lcom/google/protobuf/FieldType;

.field public static final enum UINT32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum UINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum UINT64:Lcom/google/protobuf/FieldType;

.field public static final enum UINT64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum UINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field private static final VALUES:[Lcom/google/protobuf/FieldType;


# instance fields
.field private final collection:Lcom/google/protobuf/FieldType$b;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Lcom/google/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 65

    .line 1
    .line 2
    new-instance v6, Lcom/google/protobuf/FieldType;

    .line 3
    .line 4
    const-string v1, "DOUBLE"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    sget-object v13, Lcom/google/protobuf/FieldType$b;->SCALAR:Lcom/google/protobuf/FieldType$b;

    .line 9
    .line 10
    sget-object v14, Lcom/google/protobuf/JavaType;->DOUBLE:Lcom/google/protobuf/JavaType;

    .line 11
    move-object v0, v6

    .line 12
    move-object v4, v13

    .line 13
    move-object v5, v14

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 17
    .line 18
    sput-object v6, Lcom/google/protobuf/FieldType;->DOUBLE:Lcom/google/protobuf/FieldType;

    .line 19
    .line 20
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 21
    .line 22
    const-string v8, "FLOAT"

    .line 23
    const/4 v9, 0x1

    .line 24
    const/4 v10, 0x1

    .line 25
    .line 26
    sget-object v1, Lcom/google/protobuf/JavaType;->FLOAT:Lcom/google/protobuf/JavaType;

    .line 27
    move-object v7, v0

    .line 28
    move-object v11, v13

    .line 29
    move-object v12, v1

    .line 30
    .line 31
    .line 32
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 33
    .line 34
    sput-object v0, Lcom/google/protobuf/FieldType;->FLOAT:Lcom/google/protobuf/FieldType;

    .line 35
    .line 36
    new-instance v2, Lcom/google/protobuf/FieldType;

    .line 37
    .line 38
    const-string v8, "INT64"

    .line 39
    const/4 v9, 0x2

    .line 40
    const/4 v10, 0x2

    .line 41
    .line 42
    sget-object v3, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    .line 43
    move-object v7, v2

    .line 44
    move-object v12, v3

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 48
    .line 49
    sput-object v2, Lcom/google/protobuf/FieldType;->INT64:Lcom/google/protobuf/FieldType;

    .line 50
    .line 51
    new-instance v4, Lcom/google/protobuf/FieldType;

    .line 52
    .line 53
    const-string v8, "UINT64"

    .line 54
    const/4 v9, 0x3

    .line 55
    const/4 v10, 0x3

    .line 56
    move-object v7, v4

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 60
    .line 61
    sput-object v4, Lcom/google/protobuf/FieldType;->UINT64:Lcom/google/protobuf/FieldType;

    .line 62
    .line 63
    new-instance v5, Lcom/google/protobuf/FieldType;

    .line 64
    .line 65
    const-string v8, "INT32"

    .line 66
    const/4 v9, 0x4

    .line 67
    const/4 v10, 0x4

    .line 68
    .line 69
    sget-object v21, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    .line 70
    move-object v7, v5

    .line 71
    .line 72
    move-object/from16 v12, v21

    .line 73
    .line 74
    .line 75
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 76
    .line 77
    sput-object v5, Lcom/google/protobuf/FieldType;->INT32:Lcom/google/protobuf/FieldType;

    .line 78
    .line 79
    new-instance v22, Lcom/google/protobuf/FieldType;

    .line 80
    .line 81
    const-string v8, "FIXED64"

    .line 82
    const/4 v9, 0x5

    .line 83
    const/4 v10, 0x5

    .line 84
    .line 85
    move-object/from16 v7, v22

    .line 86
    move-object v12, v3

    .line 87
    .line 88
    .line 89
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 90
    .line 91
    sput-object v22, Lcom/google/protobuf/FieldType;->FIXED64:Lcom/google/protobuf/FieldType;

    .line 92
    .line 93
    new-instance v23, Lcom/google/protobuf/FieldType;

    .line 94
    .line 95
    const-string v8, "FIXED32"

    .line 96
    const/4 v9, 0x6

    .line 97
    const/4 v10, 0x6

    .line 98
    .line 99
    move-object/from16 v7, v23

    .line 100
    .line 101
    move-object/from16 v12, v21

    .line 102
    .line 103
    .line 104
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 105
    .line 106
    sput-object v23, Lcom/google/protobuf/FieldType;->FIXED32:Lcom/google/protobuf/FieldType;

    .line 107
    .line 108
    new-instance v24, Lcom/google/protobuf/FieldType;

    .line 109
    .line 110
    const-string v8, "BOOL"

    .line 111
    const/4 v9, 0x7

    .line 112
    const/4 v10, 0x7

    .line 113
    .line 114
    sget-object v25, Lcom/google/protobuf/JavaType;->BOOLEAN:Lcom/google/protobuf/JavaType;

    .line 115
    .line 116
    move-object/from16 v7, v24

    .line 117
    .line 118
    move-object/from16 v12, v25

    .line 119
    .line 120
    .line 121
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 122
    .line 123
    sput-object v24, Lcom/google/protobuf/FieldType;->BOOL:Lcom/google/protobuf/FieldType;

    .line 124
    .line 125
    new-instance v26, Lcom/google/protobuf/FieldType;

    .line 126
    .line 127
    const-string v8, "STRING"

    .line 128
    .line 129
    const/16 v9, 0x8

    .line 130
    .line 131
    const/16 v10, 0x8

    .line 132
    .line 133
    sget-object v27, Lcom/google/protobuf/JavaType;->STRING:Lcom/google/protobuf/JavaType;

    .line 134
    .line 135
    move-object/from16 v7, v26

    .line 136
    .line 137
    move-object/from16 v12, v27

    .line 138
    .line 139
    .line 140
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 141
    .line 142
    sput-object v26, Lcom/google/protobuf/FieldType;->STRING:Lcom/google/protobuf/FieldType;

    .line 143
    .line 144
    new-instance v28, Lcom/google/protobuf/FieldType;

    .line 145
    .line 146
    const-string v8, "MESSAGE"

    .line 147
    .line 148
    const/16 v9, 0x9

    .line 149
    .line 150
    const/16 v10, 0x9

    .line 151
    .line 152
    sget-object v29, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    .line 153
    .line 154
    move-object/from16 v7, v28

    .line 155
    .line 156
    move-object/from16 v12, v29

    .line 157
    .line 158
    .line 159
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 160
    .line 161
    sput-object v28, Lcom/google/protobuf/FieldType;->MESSAGE:Lcom/google/protobuf/FieldType;

    .line 162
    .line 163
    new-instance v30, Lcom/google/protobuf/FieldType;

    .line 164
    .line 165
    const-string v8, "BYTES"

    .line 166
    .line 167
    const/16 v9, 0xa

    .line 168
    .line 169
    const/16 v10, 0xa

    .line 170
    .line 171
    sget-object v31, Lcom/google/protobuf/JavaType;->BYTE_STRING:Lcom/google/protobuf/JavaType;

    .line 172
    .line 173
    move-object/from16 v7, v30

    .line 174
    .line 175
    move-object/from16 v12, v31

    .line 176
    .line 177
    .line 178
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 179
    .line 180
    sput-object v30, Lcom/google/protobuf/FieldType;->BYTES:Lcom/google/protobuf/FieldType;

    .line 181
    .line 182
    new-instance v32, Lcom/google/protobuf/FieldType;

    .line 183
    .line 184
    const-string v8, "UINT32"

    .line 185
    .line 186
    const/16 v9, 0xb

    .line 187
    .line 188
    const/16 v10, 0xb

    .line 189
    .line 190
    move-object/from16 v7, v32

    .line 191
    .line 192
    move-object/from16 v12, v21

    .line 193
    .line 194
    .line 195
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 196
    .line 197
    sput-object v32, Lcom/google/protobuf/FieldType;->UINT32:Lcom/google/protobuf/FieldType;

    .line 198
    .line 199
    new-instance v33, Lcom/google/protobuf/FieldType;

    .line 200
    .line 201
    const-string v8, "ENUM"

    .line 202
    .line 203
    const/16 v9, 0xc

    .line 204
    .line 205
    const/16 v10, 0xc

    .line 206
    .line 207
    sget-object v34, Lcom/google/protobuf/JavaType;->ENUM:Lcom/google/protobuf/JavaType;

    .line 208
    .line 209
    move-object/from16 v7, v33

    .line 210
    .line 211
    move-object/from16 v12, v34

    .line 212
    .line 213
    .line 214
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 215
    .line 216
    sput-object v33, Lcom/google/protobuf/FieldType;->ENUM:Lcom/google/protobuf/FieldType;

    .line 217
    .line 218
    new-instance v35, Lcom/google/protobuf/FieldType;

    .line 219
    .line 220
    const-string v8, "SFIXED32"

    .line 221
    .line 222
    const/16 v9, 0xd

    .line 223
    .line 224
    const/16 v10, 0xd

    .line 225
    .line 226
    move-object/from16 v7, v35

    .line 227
    .line 228
    move-object/from16 v12, v21

    .line 229
    .line 230
    .line 231
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 232
    .line 233
    sput-object v35, Lcom/google/protobuf/FieldType;->SFIXED32:Lcom/google/protobuf/FieldType;

    .line 234
    .line 235
    new-instance v36, Lcom/google/protobuf/FieldType;

    .line 236
    .line 237
    const-string v8, "SFIXED64"

    .line 238
    .line 239
    const/16 v9, 0xe

    .line 240
    .line 241
    const/16 v10, 0xe

    .line 242
    .line 243
    move-object/from16 v7, v36

    .line 244
    move-object v12, v3

    .line 245
    .line 246
    .line 247
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 248
    .line 249
    sput-object v36, Lcom/google/protobuf/FieldType;->SFIXED64:Lcom/google/protobuf/FieldType;

    .line 250
    .line 251
    new-instance v37, Lcom/google/protobuf/FieldType;

    .line 252
    .line 253
    const-string v8, "SINT32"

    .line 254
    .line 255
    const/16 v9, 0xf

    .line 256
    .line 257
    const/16 v10, 0xf

    .line 258
    .line 259
    move-object/from16 v7, v37

    .line 260
    .line 261
    move-object/from16 v12, v21

    .line 262
    .line 263
    .line 264
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 265
    .line 266
    sput-object v37, Lcom/google/protobuf/FieldType;->SINT32:Lcom/google/protobuf/FieldType;

    .line 267
    .line 268
    new-instance v38, Lcom/google/protobuf/FieldType;

    .line 269
    .line 270
    const-string v8, "SINT64"

    .line 271
    .line 272
    const/16 v9, 0x10

    .line 273
    .line 274
    const/16 v10, 0x10

    .line 275
    .line 276
    move-object/from16 v7, v38

    .line 277
    move-object v12, v3

    .line 278
    .line 279
    .line 280
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 281
    .line 282
    sput-object v38, Lcom/google/protobuf/FieldType;->SINT64:Lcom/google/protobuf/FieldType;

    .line 283
    .line 284
    new-instance v39, Lcom/google/protobuf/FieldType;

    .line 285
    .line 286
    const-string v8, "GROUP"

    .line 287
    .line 288
    const/16 v9, 0x11

    .line 289
    .line 290
    const/16 v10, 0x11

    .line 291
    .line 292
    move-object/from16 v7, v39

    .line 293
    .line 294
    move-object/from16 v12, v29

    .line 295
    .line 296
    .line 297
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 298
    .line 299
    sput-object v39, Lcom/google/protobuf/FieldType;->GROUP:Lcom/google/protobuf/FieldType;

    .line 300
    .line 301
    new-instance v13, Lcom/google/protobuf/FieldType;

    .line 302
    .line 303
    const-string v8, "DOUBLE_LIST"

    .line 304
    .line 305
    const/16 v9, 0x12

    .line 306
    .line 307
    const/16 v10, 0x12

    .line 308
    .line 309
    sget-object v40, Lcom/google/protobuf/FieldType$b;->VECTOR:Lcom/google/protobuf/FieldType$b;

    .line 310
    move-object v7, v13

    .line 311
    .line 312
    move-object/from16 v11, v40

    .line 313
    move-object v12, v14

    .line 314
    .line 315
    .line 316
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 317
    .line 318
    sput-object v13, Lcom/google/protobuf/FieldType;->DOUBLE_LIST:Lcom/google/protobuf/FieldType;

    .line 319
    .line 320
    new-instance v41, Lcom/google/protobuf/FieldType;

    .line 321
    .line 322
    const-string v16, "FLOAT_LIST"

    .line 323
    .line 324
    const/16 v17, 0x13

    .line 325
    .line 326
    const/16 v18, 0x13

    .line 327
    .line 328
    move-object/from16 v15, v41

    .line 329
    .line 330
    move-object/from16 v19, v40

    .line 331
    .line 332
    move-object/from16 v20, v1

    .line 333
    .line 334
    .line 335
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 336
    .line 337
    sput-object v41, Lcom/google/protobuf/FieldType;->FLOAT_LIST:Lcom/google/protobuf/FieldType;

    .line 338
    .line 339
    new-instance v42, Lcom/google/protobuf/FieldType;

    .line 340
    .line 341
    const-string v16, "INT64_LIST"

    .line 342
    .line 343
    const/16 v17, 0x14

    .line 344
    .line 345
    const/16 v18, 0x14

    .line 346
    .line 347
    move-object/from16 v15, v42

    .line 348
    .line 349
    move-object/from16 v20, v3

    .line 350
    .line 351
    .line 352
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 353
    .line 354
    sput-object v42, Lcom/google/protobuf/FieldType;->INT64_LIST:Lcom/google/protobuf/FieldType;

    .line 355
    .line 356
    new-instance v43, Lcom/google/protobuf/FieldType;

    .line 357
    .line 358
    const-string v16, "UINT64_LIST"

    .line 359
    .line 360
    const/16 v17, 0x15

    .line 361
    .line 362
    const/16 v18, 0x15

    .line 363
    .line 364
    move-object/from16 v15, v43

    .line 365
    .line 366
    .line 367
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 368
    .line 369
    sput-object v43, Lcom/google/protobuf/FieldType;->UINT64_LIST:Lcom/google/protobuf/FieldType;

    .line 370
    .line 371
    new-instance v44, Lcom/google/protobuf/FieldType;

    .line 372
    .line 373
    const-string v16, "INT32_LIST"

    .line 374
    .line 375
    const/16 v17, 0x16

    .line 376
    .line 377
    const/16 v18, 0x16

    .line 378
    .line 379
    move-object/from16 v15, v44

    .line 380
    .line 381
    move-object/from16 v20, v21

    .line 382
    .line 383
    .line 384
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 385
    .line 386
    sput-object v44, Lcom/google/protobuf/FieldType;->INT32_LIST:Lcom/google/protobuf/FieldType;

    .line 387
    .line 388
    new-instance v45, Lcom/google/protobuf/FieldType;

    .line 389
    .line 390
    const-string v16, "FIXED64_LIST"

    .line 391
    .line 392
    const/16 v17, 0x17

    .line 393
    .line 394
    const/16 v18, 0x17

    .line 395
    .line 396
    move-object/from16 v15, v45

    .line 397
    .line 398
    move-object/from16 v20, v3

    .line 399
    .line 400
    .line 401
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 402
    .line 403
    sput-object v45, Lcom/google/protobuf/FieldType;->FIXED64_LIST:Lcom/google/protobuf/FieldType;

    .line 404
    .line 405
    new-instance v46, Lcom/google/protobuf/FieldType;

    .line 406
    .line 407
    const-string v16, "FIXED32_LIST"

    .line 408
    .line 409
    const/16 v17, 0x18

    .line 410
    .line 411
    const/16 v18, 0x18

    .line 412
    .line 413
    move-object/from16 v15, v46

    .line 414
    .line 415
    move-object/from16 v20, v21

    .line 416
    .line 417
    .line 418
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 419
    .line 420
    sput-object v46, Lcom/google/protobuf/FieldType;->FIXED32_LIST:Lcom/google/protobuf/FieldType;

    .line 421
    .line 422
    new-instance v47, Lcom/google/protobuf/FieldType;

    .line 423
    .line 424
    const-string v16, "BOOL_LIST"

    .line 425
    .line 426
    const/16 v17, 0x19

    .line 427
    .line 428
    const/16 v18, 0x19

    .line 429
    .line 430
    move-object/from16 v15, v47

    .line 431
    .line 432
    move-object/from16 v20, v25

    .line 433
    .line 434
    .line 435
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 436
    .line 437
    sput-object v47, Lcom/google/protobuf/FieldType;->BOOL_LIST:Lcom/google/protobuf/FieldType;

    .line 438
    .line 439
    new-instance v48, Lcom/google/protobuf/FieldType;

    .line 440
    .line 441
    const-string v16, "STRING_LIST"

    .line 442
    .line 443
    const/16 v17, 0x1a

    .line 444
    .line 445
    const/16 v18, 0x1a

    .line 446
    .line 447
    move-object/from16 v15, v48

    .line 448
    .line 449
    move-object/from16 v20, v27

    .line 450
    .line 451
    .line 452
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 453
    .line 454
    sput-object v48, Lcom/google/protobuf/FieldType;->STRING_LIST:Lcom/google/protobuf/FieldType;

    .line 455
    .line 456
    new-instance v27, Lcom/google/protobuf/FieldType;

    .line 457
    .line 458
    const-string v16, "MESSAGE_LIST"

    .line 459
    .line 460
    const/16 v17, 0x1b

    .line 461
    .line 462
    const/16 v18, 0x1b

    .line 463
    .line 464
    move-object/from16 v15, v27

    .line 465
    .line 466
    move-object/from16 v20, v29

    .line 467
    .line 468
    .line 469
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 470
    .line 471
    sput-object v27, Lcom/google/protobuf/FieldType;->MESSAGE_LIST:Lcom/google/protobuf/FieldType;

    .line 472
    .line 473
    new-instance v49, Lcom/google/protobuf/FieldType;

    .line 474
    .line 475
    const-string v16, "BYTES_LIST"

    .line 476
    .line 477
    const/16 v17, 0x1c

    .line 478
    .line 479
    const/16 v18, 0x1c

    .line 480
    .line 481
    move-object/from16 v15, v49

    .line 482
    .line 483
    move-object/from16 v20, v31

    .line 484
    .line 485
    .line 486
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 487
    .line 488
    sput-object v49, Lcom/google/protobuf/FieldType;->BYTES_LIST:Lcom/google/protobuf/FieldType;

    .line 489
    .line 490
    new-instance v31, Lcom/google/protobuf/FieldType;

    .line 491
    .line 492
    const-string v16, "UINT32_LIST"

    .line 493
    .line 494
    const/16 v17, 0x1d

    .line 495
    .line 496
    const/16 v18, 0x1d

    .line 497
    .line 498
    move-object/from16 v15, v31

    .line 499
    .line 500
    move-object/from16 v20, v21

    .line 501
    .line 502
    .line 503
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 504
    .line 505
    sput-object v31, Lcom/google/protobuf/FieldType;->UINT32_LIST:Lcom/google/protobuf/FieldType;

    .line 506
    .line 507
    new-instance v50, Lcom/google/protobuf/FieldType;

    .line 508
    .line 509
    const-string v16, "ENUM_LIST"

    .line 510
    .line 511
    const/16 v17, 0x1e

    .line 512
    .line 513
    const/16 v18, 0x1e

    .line 514
    .line 515
    move-object/from16 v15, v50

    .line 516
    .line 517
    move-object/from16 v20, v34

    .line 518
    .line 519
    .line 520
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 521
    .line 522
    sput-object v50, Lcom/google/protobuf/FieldType;->ENUM_LIST:Lcom/google/protobuf/FieldType;

    .line 523
    .line 524
    new-instance v51, Lcom/google/protobuf/FieldType;

    .line 525
    .line 526
    const-string v16, "SFIXED32_LIST"

    .line 527
    .line 528
    const/16 v17, 0x1f

    .line 529
    .line 530
    const/16 v18, 0x1f

    .line 531
    .line 532
    move-object/from16 v15, v51

    .line 533
    .line 534
    move-object/from16 v20, v21

    .line 535
    .line 536
    .line 537
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 538
    .line 539
    sput-object v51, Lcom/google/protobuf/FieldType;->SFIXED32_LIST:Lcom/google/protobuf/FieldType;

    .line 540
    .line 541
    new-instance v52, Lcom/google/protobuf/FieldType;

    .line 542
    .line 543
    const-string v16, "SFIXED64_LIST"

    .line 544
    .line 545
    const/16 v17, 0x20

    .line 546
    .line 547
    const/16 v18, 0x20

    .line 548
    .line 549
    move-object/from16 v15, v52

    .line 550
    .line 551
    move-object/from16 v20, v3

    .line 552
    .line 553
    .line 554
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 555
    .line 556
    sput-object v52, Lcom/google/protobuf/FieldType;->SFIXED64_LIST:Lcom/google/protobuf/FieldType;

    .line 557
    .line 558
    new-instance v53, Lcom/google/protobuf/FieldType;

    .line 559
    .line 560
    const-string v16, "SINT32_LIST"

    .line 561
    .line 562
    const/16 v17, 0x21

    .line 563
    .line 564
    const/16 v18, 0x21

    .line 565
    .line 566
    move-object/from16 v15, v53

    .line 567
    .line 568
    move-object/from16 v20, v21

    .line 569
    .line 570
    .line 571
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 572
    .line 573
    sput-object v53, Lcom/google/protobuf/FieldType;->SINT32_LIST:Lcom/google/protobuf/FieldType;

    .line 574
    .line 575
    new-instance v54, Lcom/google/protobuf/FieldType;

    .line 576
    .line 577
    const-string v16, "SINT64_LIST"

    .line 578
    .line 579
    const/16 v17, 0x22

    .line 580
    .line 581
    const/16 v18, 0x22

    .line 582
    .line 583
    move-object/from16 v15, v54

    .line 584
    .line 585
    move-object/from16 v20, v3

    .line 586
    .line 587
    .line 588
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 589
    .line 590
    sput-object v54, Lcom/google/protobuf/FieldType;->SINT64_LIST:Lcom/google/protobuf/FieldType;

    .line 591
    .line 592
    new-instance v55, Lcom/google/protobuf/FieldType;

    .line 593
    .line 594
    const-string v8, "DOUBLE_LIST_PACKED"

    .line 595
    .line 596
    const/16 v9, 0x23

    .line 597
    .line 598
    const/16 v10, 0x23

    .line 599
    .line 600
    sget-object v56, Lcom/google/protobuf/FieldType$b;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$b;

    .line 601
    .line 602
    move-object/from16 v7, v55

    .line 603
    .line 604
    move-object/from16 v11, v56

    .line 605
    .line 606
    .line 607
    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 608
    .line 609
    sput-object v55, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 610
    .line 611
    new-instance v7, Lcom/google/protobuf/FieldType;

    .line 612
    .line 613
    const-string v16, "FLOAT_LIST_PACKED"

    .line 614
    .line 615
    const/16 v17, 0x24

    .line 616
    .line 617
    const/16 v18, 0x24

    .line 618
    move-object v15, v7

    .line 619
    .line 620
    move-object/from16 v19, v56

    .line 621
    .line 622
    move-object/from16 v20, v1

    .line 623
    .line 624
    .line 625
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 626
    .line 627
    sput-object v7, Lcom/google/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 628
    .line 629
    new-instance v1, Lcom/google/protobuf/FieldType;

    .line 630
    .line 631
    const-string v16, "INT64_LIST_PACKED"

    .line 632
    .line 633
    const/16 v17, 0x25

    .line 634
    .line 635
    const/16 v18, 0x25

    .line 636
    move-object v15, v1

    .line 637
    .line 638
    move-object/from16 v20, v3

    .line 639
    .line 640
    .line 641
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 642
    .line 643
    sput-object v1, Lcom/google/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 644
    .line 645
    new-instance v8, Lcom/google/protobuf/FieldType;

    .line 646
    .line 647
    const-string v16, "UINT64_LIST_PACKED"

    .line 648
    .line 649
    const/16 v17, 0x26

    .line 650
    .line 651
    const/16 v18, 0x26

    .line 652
    move-object v15, v8

    .line 653
    .line 654
    .line 655
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 656
    .line 657
    sput-object v8, Lcom/google/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 658
    .line 659
    new-instance v9, Lcom/google/protobuf/FieldType;

    .line 660
    .line 661
    const-string v16, "INT32_LIST_PACKED"

    .line 662
    .line 663
    const/16 v17, 0x27

    .line 664
    .line 665
    const/16 v18, 0x27

    .line 666
    move-object v15, v9

    .line 667
    .line 668
    move-object/from16 v20, v21

    .line 669
    .line 670
    .line 671
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 672
    .line 673
    sput-object v9, Lcom/google/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 674
    .line 675
    new-instance v10, Lcom/google/protobuf/FieldType;

    .line 676
    .line 677
    const-string v16, "FIXED64_LIST_PACKED"

    .line 678
    .line 679
    const/16 v17, 0x28

    .line 680
    .line 681
    const/16 v18, 0x28

    .line 682
    move-object v15, v10

    .line 683
    .line 684
    move-object/from16 v20, v3

    .line 685
    .line 686
    .line 687
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 688
    .line 689
    sput-object v10, Lcom/google/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 690
    .line 691
    new-instance v11, Lcom/google/protobuf/FieldType;

    .line 692
    .line 693
    const-string v16, "FIXED32_LIST_PACKED"

    .line 694
    .line 695
    const/16 v17, 0x29

    .line 696
    .line 697
    const/16 v18, 0x29

    .line 698
    move-object v15, v11

    .line 699
    .line 700
    move-object/from16 v20, v21

    .line 701
    .line 702
    .line 703
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 704
    .line 705
    sput-object v11, Lcom/google/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 706
    .line 707
    new-instance v12, Lcom/google/protobuf/FieldType;

    .line 708
    .line 709
    const-string v16, "BOOL_LIST_PACKED"

    .line 710
    .line 711
    const/16 v17, 0x2a

    .line 712
    .line 713
    const/16 v18, 0x2a

    .line 714
    move-object v15, v12

    .line 715
    .line 716
    move-object/from16 v20, v25

    .line 717
    .line 718
    .line 719
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 720
    .line 721
    sput-object v12, Lcom/google/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 722
    .line 723
    new-instance v14, Lcom/google/protobuf/FieldType;

    .line 724
    .line 725
    const-string v16, "UINT32_LIST_PACKED"

    .line 726
    .line 727
    const/16 v17, 0x2b

    .line 728
    .line 729
    const/16 v18, 0x2b

    .line 730
    move-object v15, v14

    .line 731
    .line 732
    move-object/from16 v20, v21

    .line 733
    .line 734
    .line 735
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 736
    .line 737
    sput-object v14, Lcom/google/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 738
    .line 739
    new-instance v25, Lcom/google/protobuf/FieldType;

    .line 740
    .line 741
    const-string v16, "ENUM_LIST_PACKED"

    .line 742
    .line 743
    const/16 v17, 0x2c

    .line 744
    .line 745
    const/16 v18, 0x2c

    .line 746
    .line 747
    move-object/from16 v15, v25

    .line 748
    .line 749
    move-object/from16 v20, v34

    .line 750
    .line 751
    .line 752
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 753
    .line 754
    sput-object v25, Lcom/google/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 755
    .line 756
    new-instance v34, Lcom/google/protobuf/FieldType;

    .line 757
    .line 758
    const-string v16, "SFIXED32_LIST_PACKED"

    .line 759
    .line 760
    const/16 v17, 0x2d

    .line 761
    .line 762
    const/16 v18, 0x2d

    .line 763
    .line 764
    move-object/from16 v15, v34

    .line 765
    .line 766
    move-object/from16 v20, v21

    .line 767
    .line 768
    .line 769
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 770
    .line 771
    sput-object v34, Lcom/google/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 772
    .line 773
    new-instance v57, Lcom/google/protobuf/FieldType;

    .line 774
    .line 775
    const-string v16, "SFIXED64_LIST_PACKED"

    .line 776
    .line 777
    const/16 v17, 0x2e

    .line 778
    .line 779
    const/16 v18, 0x2e

    .line 780
    .line 781
    move-object/from16 v15, v57

    .line 782
    .line 783
    move-object/from16 v20, v3

    .line 784
    .line 785
    .line 786
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 787
    .line 788
    sput-object v57, Lcom/google/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 789
    .line 790
    new-instance v58, Lcom/google/protobuf/FieldType;

    .line 791
    .line 792
    const-string v16, "SINT32_LIST_PACKED"

    .line 793
    .line 794
    const/16 v17, 0x2f

    .line 795
    .line 796
    const/16 v18, 0x2f

    .line 797
    .line 798
    move-object/from16 v15, v58

    .line 799
    .line 800
    move-object/from16 v20, v21

    .line 801
    .line 802
    .line 803
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 804
    .line 805
    sput-object v58, Lcom/google/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 806
    .line 807
    new-instance v21, Lcom/google/protobuf/FieldType;

    .line 808
    .line 809
    const-string v16, "SINT64_LIST_PACKED"

    .line 810
    .line 811
    const/16 v17, 0x30

    .line 812
    .line 813
    const/16 v18, 0x30

    .line 814
    .line 815
    move-object/from16 v15, v21

    .line 816
    .line 817
    move-object/from16 v20, v3

    .line 818
    .line 819
    .line 820
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 821
    .line 822
    sput-object v21, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 823
    .line 824
    new-instance v3, Lcom/google/protobuf/FieldType;

    .line 825
    .line 826
    const-string v16, "GROUP_LIST"

    .line 827
    .line 828
    const/16 v17, 0x31

    .line 829
    .line 830
    const/16 v18, 0x31

    .line 831
    move-object v15, v3

    .line 832
    .line 833
    move-object/from16 v19, v40

    .line 834
    .line 835
    move-object/from16 v20, v29

    .line 836
    .line 837
    .line 838
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 839
    .line 840
    sput-object v3, Lcom/google/protobuf/FieldType;->GROUP_LIST:Lcom/google/protobuf/FieldType;

    .line 841
    .line 842
    new-instance v15, Lcom/google/protobuf/FieldType;

    .line 843
    .line 844
    const-string v60, "MAP"

    .line 845
    .line 846
    const/16 v61, 0x32

    .line 847
    .line 848
    const/16 v62, 0x32

    .line 849
    .line 850
    sget-object v63, Lcom/google/protobuf/FieldType$b;->MAP:Lcom/google/protobuf/FieldType$b;

    .line 851
    .line 852
    sget-object v64, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    .line 853
    .line 854
    move-object/from16 v59, v15

    .line 855
    .line 856
    .line 857
    invoke-direct/range {v59 .. v64}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V

    .line 858
    .line 859
    sput-object v15, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    .line 860
    .line 861
    move-object/from16 v16, v15

    .line 862
    .line 863
    const/16 v15, 0x33

    .line 864
    .line 865
    new-array v15, v15, [Lcom/google/protobuf/FieldType;

    .line 866
    .line 867
    move-object/from16 v17, v3

    .line 868
    const/4 v3, 0x0

    .line 869
    .line 870
    aput-object v6, v15, v3

    .line 871
    const/4 v6, 0x1

    .line 872
    .line 873
    aput-object v0, v15, v6

    .line 874
    const/4 v0, 0x2

    .line 875
    .line 876
    aput-object v2, v15, v0

    .line 877
    const/4 v0, 0x3

    .line 878
    .line 879
    aput-object v4, v15, v0

    .line 880
    const/4 v0, 0x4

    .line 881
    .line 882
    aput-object v5, v15, v0

    .line 883
    const/4 v0, 0x5

    .line 884
    .line 885
    aput-object v22, v15, v0

    .line 886
    const/4 v0, 0x6

    .line 887
    .line 888
    aput-object v23, v15, v0

    .line 889
    const/4 v0, 0x7

    .line 890
    .line 891
    aput-object v24, v15, v0

    .line 892
    .line 893
    const/16 v0, 0x8

    .line 894
    .line 895
    aput-object v26, v15, v0

    .line 896
    .line 897
    const/16 v0, 0x9

    .line 898
    .line 899
    aput-object v28, v15, v0

    .line 900
    .line 901
    const/16 v0, 0xa

    .line 902
    .line 903
    aput-object v30, v15, v0

    .line 904
    .line 905
    const/16 v0, 0xb

    .line 906
    .line 907
    aput-object v32, v15, v0

    .line 908
    .line 909
    const/16 v0, 0xc

    .line 910
    .line 911
    aput-object v33, v15, v0

    .line 912
    .line 913
    const/16 v0, 0xd

    .line 914
    .line 915
    aput-object v35, v15, v0

    .line 916
    .line 917
    const/16 v0, 0xe

    .line 918
    .line 919
    aput-object v36, v15, v0

    .line 920
    .line 921
    const/16 v0, 0xf

    .line 922
    .line 923
    aput-object v37, v15, v0

    .line 924
    .line 925
    const/16 v0, 0x10

    .line 926
    .line 927
    aput-object v38, v15, v0

    .line 928
    .line 929
    const/16 v0, 0x11

    .line 930
    .line 931
    aput-object v39, v15, v0

    .line 932
    .line 933
    const/16 v0, 0x12

    .line 934
    .line 935
    aput-object v13, v15, v0

    .line 936
    .line 937
    const/16 v0, 0x13

    .line 938
    .line 939
    aput-object v41, v15, v0

    .line 940
    .line 941
    const/16 v0, 0x14

    .line 942
    .line 943
    aput-object v42, v15, v0

    .line 944
    .line 945
    const/16 v0, 0x15

    .line 946
    .line 947
    aput-object v43, v15, v0

    .line 948
    .line 949
    const/16 v0, 0x16

    .line 950
    .line 951
    aput-object v44, v15, v0

    .line 952
    .line 953
    const/16 v0, 0x17

    .line 954
    .line 955
    aput-object v45, v15, v0

    .line 956
    .line 957
    const/16 v0, 0x18

    .line 958
    .line 959
    aput-object v46, v15, v0

    .line 960
    .line 961
    const/16 v0, 0x19

    .line 962
    .line 963
    aput-object v47, v15, v0

    .line 964
    .line 965
    const/16 v0, 0x1a

    .line 966
    .line 967
    aput-object v48, v15, v0

    .line 968
    .line 969
    const/16 v0, 0x1b

    .line 970
    .line 971
    aput-object v27, v15, v0

    .line 972
    .line 973
    const/16 v0, 0x1c

    .line 974
    .line 975
    aput-object v49, v15, v0

    .line 976
    .line 977
    const/16 v0, 0x1d

    .line 978
    .line 979
    aput-object v31, v15, v0

    .line 980
    .line 981
    const/16 v0, 0x1e

    .line 982
    .line 983
    aput-object v50, v15, v0

    .line 984
    .line 985
    const/16 v0, 0x1f

    .line 986
    .line 987
    aput-object v51, v15, v0

    .line 988
    .line 989
    const/16 v0, 0x20

    .line 990
    .line 991
    aput-object v52, v15, v0

    .line 992
    .line 993
    const/16 v0, 0x21

    .line 994
    .line 995
    aput-object v53, v15, v0

    .line 996
    .line 997
    const/16 v0, 0x22

    .line 998
    .line 999
    aput-object v54, v15, v0

    .line 1000
    .line 1001
    const/16 v0, 0x23

    .line 1002
    .line 1003
    aput-object v55, v15, v0

    .line 1004
    .line 1005
    const/16 v0, 0x24

    .line 1006
    .line 1007
    aput-object v7, v15, v0

    .line 1008
    .line 1009
    const/16 v0, 0x25

    .line 1010
    .line 1011
    aput-object v1, v15, v0

    .line 1012
    .line 1013
    const/16 v0, 0x26

    .line 1014
    .line 1015
    aput-object v8, v15, v0

    .line 1016
    .line 1017
    const/16 v0, 0x27

    .line 1018
    .line 1019
    aput-object v9, v15, v0

    .line 1020
    .line 1021
    const/16 v0, 0x28

    .line 1022
    .line 1023
    aput-object v10, v15, v0

    .line 1024
    .line 1025
    const/16 v0, 0x29

    .line 1026
    .line 1027
    aput-object v11, v15, v0

    .line 1028
    .line 1029
    const/16 v0, 0x2a

    .line 1030
    .line 1031
    aput-object v12, v15, v0

    .line 1032
    .line 1033
    const/16 v0, 0x2b

    .line 1034
    .line 1035
    aput-object v14, v15, v0

    .line 1036
    .line 1037
    const/16 v0, 0x2c

    .line 1038
    .line 1039
    aput-object v25, v15, v0

    .line 1040
    .line 1041
    const/16 v0, 0x2d

    .line 1042
    .line 1043
    aput-object v34, v15, v0

    .line 1044
    .line 1045
    const/16 v0, 0x2e

    .line 1046
    .line 1047
    aput-object v57, v15, v0

    .line 1048
    .line 1049
    const/16 v0, 0x2f

    .line 1050
    .line 1051
    aput-object v58, v15, v0

    .line 1052
    .line 1053
    const/16 v0, 0x30

    .line 1054
    .line 1055
    aput-object v21, v15, v0

    .line 1056
    .line 1057
    const/16 v0, 0x31

    .line 1058
    .line 1059
    aput-object v17, v15, v0

    .line 1060
    .line 1061
    const/16 v0, 0x32

    .line 1062
    .line 1063
    aput-object v16, v15, v0

    .line 1064
    .line 1065
    sput-object v15, Lcom/google/protobuf/FieldType;->$VALUES:[Lcom/google/protobuf/FieldType;

    .line 1066
    .line 1067
    new-array v0, v3, [Ljava/lang/reflect/Type;

    .line 1068
    .line 1069
    sput-object v0, Lcom/google/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 1070
    .line 1071
    .line 1072
    invoke-static {}, Lcom/google/protobuf/FieldType;->values()[Lcom/google/protobuf/FieldType;

    .line 1073
    move-result-object v0

    .line 1074
    array-length v1, v0

    .line 1075
    .line 1076
    new-array v1, v1, [Lcom/google/protobuf/FieldType;

    .line 1077
    .line 1078
    sput-object v1, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    .line 1079
    array-length v1, v0

    .line 1080
    .line 1081
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1082
    .line 1083
    aget-object v2, v0, v3

    .line 1084
    .line 1085
    sget-object v4, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    .line 1086
    .line 1087
    iget v5, v2, Lcom/google/protobuf/FieldType;->id:I

    .line 1088
    .line 1089
    aput-object v2, v4, v5

    .line 1090
    .line 1091
    add-int/lit8 v3, v3, 0x1

    .line 1092
    goto :goto_0

    .line 1093
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$b;Lcom/google/protobuf/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/FieldType$b;",
            "Lcom/google/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Lcom/google/protobuf/FieldType;->id:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$b;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    .line 10
    .line 11
    sget-object p1, Lcom/google/protobuf/FieldType$a;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result p2

    .line 16
    .line 17
    aget p1, p1, p2

    .line 18
    const/4 p2, 0x2

    .line 19
    const/4 p3, 0x1

    .line 20
    .line 21
    if-eq p1, p3, :cond_1

    .line 22
    .line 23
    if-eq p1, p2, :cond_0

    .line 24
    const/4 p1, 0x0

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 41
    .line 42
    :goto_0
    sget-object p1, Lcom/google/protobuf/FieldType$b;->SCALAR:Lcom/google/protobuf/FieldType$b;

    .line 43
    .line 44
    if-ne p4, p1, :cond_2

    .line 45
    .line 46
    sget-object p1, Lcom/google/protobuf/FieldType$a;->$SwitchMap$com$google$protobuf$JavaType:[I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 50
    move-result p4

    .line 51
    .line 52
    aget p1, p1, p4

    .line 53
    .line 54
    if-eq p1, p3, :cond_2

    .line 55
    .line 56
    if-eq p1, p2, :cond_2

    .line 57
    const/4 p2, 0x3

    .line 58
    .line 59
    if-eq p1, p2, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p3, 0x0

    .line 62
    .line 63
    :goto_1
    iput-boolean p3, p0, Lcom/google/protobuf/FieldType;->primitiveScalar:Z

    .line 64
    return-void
.end method

.method public static forId(I)Lcom/google/protobuf/FieldType;
    .locals 2

    .line 1
    .line 2
    if-ltz p0, :cond_1

    .line 3
    .line 4
    sget-object v0, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    .line 5
    array-length v1, v0

    .line 6
    .line 7
    if-lt p0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    aget-object p0, v0, p0

    .line 11
    return-object p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method private static getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    :goto_0
    const-class v3, Ljava/util/List;

    .line 9
    .line 10
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget-object v4, v0, v2

    .line 13
    .line 14
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    move-object v5, v4

    .line 18
    .line 19
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 20
    .line 21
    .line 22
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    check-cast v5, Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    return-object v4

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    move-object v0, p0

    .line 45
    .line 46
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    return-object p0

    .line 60
    :cond_2
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method private static getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    .line 2
    :goto_0
    const-class v0, Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eq p0, v0, :cond_8

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/protobuf/FieldType;->getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    .line 12
    .line 13
    if-eqz v3, :cond_5

    .line 14
    .line 15
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 19
    move-result-object v0

    .line 20
    move v3, v1

    .line 21
    :goto_1
    array-length v4, v0

    .line 22
    .line 23
    if-ge v3, v4, :cond_4

    .line 24
    .line 25
    aget-object v4, v0, v3

    .line 26
    .line 27
    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    .line 28
    .line 29
    if-eqz v5, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 33
    move-result-object v5

    .line 34
    array-length v6, p1

    .line 35
    array-length v7, v5

    .line 36
    .line 37
    if-ne v6, v7, :cond_2

    .line 38
    move v6, v1

    .line 39
    :goto_2
    array-length v7, v5

    .line 40
    .line 41
    if-ge v6, v7, :cond_1

    .line 42
    .line 43
    aget-object v7, v5, v6

    .line 44
    .line 45
    if-ne v4, v7, :cond_0

    .line 46
    .line 47
    aget-object v4, p1, v6

    .line 48
    .line 49
    aput-object v4, v0, v3

    .line 50
    goto :goto_3

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v0, "Unable to find replacement for "

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0

    .line 77
    .line 78
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    const-string p1, "Type array mismatch"

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0

    .line 85
    .line 86
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_1

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    check-cast p0, Ljava/lang/Class;

    .line 94
    move-object p1, v0

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_5
    sget-object p1, Lcom/google/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 101
    move-result-object v2

    .line 102
    array-length v3, v2

    .line 103
    .line 104
    :goto_4
    if-ge v1, v3, :cond_7

    .line 105
    .line 106
    aget-object v4, v2, v1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 110
    move-result v5

    .line 111
    .line 112
    if-eqz v5, :cond_6

    .line 113
    move-object p0, v4

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 117
    goto :goto_4

    .line 118
    .line 119
    .line 120
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 121
    move-result-object p0

    .line 122
    goto :goto_0

    .line 123
    :cond_8
    array-length p0, p1

    .line 124
    const/4 v0, 0x1

    .line 125
    .line 126
    if-ne p0, v0, :cond_9

    .line 127
    .line 128
    aget-object p0, p1, v1

    .line 129
    return-object p0

    .line 130
    .line 131
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    .line 132
    .line 133
    const-string p1, "Unable to identify parameter type for List<T>"

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p0
.end method

.method private isValidForList(Ljava/lang/reflect/Field;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/protobuf/JavaType;->getType()Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lcom/google/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {v0, v1}, Lcom/google/protobuf/FieldType;->getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    instance-of v0, p1, Ljava/lang/Class;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 51
    .line 52
    check-cast p1, Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    move-result p1

    .line 57
    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/FieldType;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/google/protobuf/FieldType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/google/protobuf/FieldType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/FieldType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/protobuf/FieldType;->$VALUES:[Lcom/google/protobuf/FieldType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/google/protobuf/FieldType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/google/protobuf/FieldType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/google/protobuf/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    return-object v0
.end method

.method public id()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/FieldType;->id:I

    return v0
.end method

.method public isList()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/FieldType$b;->isList()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isMap()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$b;

    .line 3
    .line 4
    sget-object v1, Lcom/google/protobuf/FieldType$b;->MAP:Lcom/google/protobuf/FieldType$b;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isPacked()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/protobuf/FieldType$b;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$b;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isPrimitiveScalar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/FieldType;->primitiveScalar:Z

    return v0
.end method

.method public isScalar()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$b;

    .line 3
    .line 4
    sget-object v1, Lcom/google/protobuf/FieldType$b;->SCALAR:Lcom/google/protobuf/FieldType$b;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/protobuf/FieldType$b;->VECTOR:Lcom/google/protobuf/FieldType$b;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/FieldType;->isValidForList(Ljava/lang/reflect/Field;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/JavaType;->getType()Ljava/lang/Class;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method
