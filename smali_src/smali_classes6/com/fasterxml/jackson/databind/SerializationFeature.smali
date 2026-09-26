.class public final enum Lcom/fasterxml/jackson/databind/SerializationFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/SerializationFeature;",
        ">;",
        "Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;


# instance fields
.field private final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 3
    .line 4
    const-string v1, "WRAP_ROOT_VALUE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 9
    .line 10
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 11
    .line 12
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 13
    .line 14
    const-string v3, "INDENT_OUTPUT"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 19
    .line 20
    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 21
    .line 22
    new-instance v3, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 23
    .line 24
    const-string v5, "FAIL_ON_EMPTY_BEANS"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 29
    .line 30
    sput-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 31
    .line 32
    new-instance v5, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 33
    .line 34
    const-string v7, "WRAP_EXCEPTIONS"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 39
    .line 40
    sput-object v5, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 41
    .line 42
    new-instance v7, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 43
    .line 44
    const-string v9, "CLOSE_CLOSEABLE"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 49
    .line 50
    sput-object v7, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 51
    .line 52
    new-instance v9, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 53
    .line 54
    const-string v11, "FLUSH_AFTER_WRITE_VALUE"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 59
    .line 60
    sput-object v9, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 61
    .line 62
    new-instance v11, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 63
    .line 64
    const-string v13, "WRITE_DATES_AS_TIMESTAMPS"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 69
    .line 70
    sput-object v11, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 71
    .line 72
    new-instance v13, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 73
    .line 74
    const-string v15, "WRITE_DATE_KEYS_AS_TIMESTAMPS"

    .line 75
    const/4 v14, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v13, v15, v14, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 79
    .line 80
    sput-object v13, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 81
    .line 82
    new-instance v15, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 83
    .line 84
    const-string v14, "WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v14, v12, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 90
    .line 91
    sput-object v15, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 92
    .line 93
    new-instance v14, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 94
    .line 95
    const-string v12, "WRITE_ENUMS_USING_TO_STRING"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v14, v12, v10, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 101
    .line 102
    sput-object v14, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 103
    .line 104
    new-instance v12, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 105
    .line 106
    const-string v10, "WRITE_ENUMS_USING_INDEX"

    .line 107
    .line 108
    const/16 v8, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v12, v10, v8, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 112
    .line 113
    sput-object v12, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 114
    .line 115
    new-instance v10, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 116
    .line 117
    const-string v8, "WRITE_NULL_MAP_VALUES"

    .line 118
    .line 119
    const/16 v6, 0xb

    .line 120
    .line 121
    .line 122
    invoke-direct {v10, v8, v6, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 123
    .line 124
    sput-object v10, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 125
    .line 126
    new-instance v8, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 127
    .line 128
    const-string v6, "WRITE_EMPTY_JSON_ARRAYS"

    .line 129
    .line 130
    const/16 v2, 0xc

    .line 131
    .line 132
    .line 133
    invoke-direct {v8, v6, v2, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 134
    .line 135
    sput-object v8, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 136
    .line 137
    new-instance v6, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 138
    .line 139
    const-string v2, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    .line 140
    .line 141
    const/16 v4, 0xd

    .line 142
    .line 143
    move-object/from16 v16, v8

    .line 144
    const/4 v8, 0x0

    .line 145
    .line 146
    .line 147
    invoke-direct {v6, v2, v4, v8}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 148
    .line 149
    sput-object v6, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 150
    .line 151
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 152
    .line 153
    const-string v4, "WRITE_BIGDECIMAL_AS_PLAIN"

    .line 154
    .line 155
    move-object/from16 v17, v6

    .line 156
    .line 157
    const/16 v6, 0xe

    .line 158
    .line 159
    .line 160
    invoke-direct {v2, v4, v6, v8}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 161
    .line 162
    sput-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 163
    .line 164
    new-instance v4, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 165
    .line 166
    const-string v6, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    .line 167
    .line 168
    const/16 v8, 0xf

    .line 169
    .line 170
    move-object/from16 v18, v2

    .line 171
    const/4 v2, 0x1

    .line 172
    .line 173
    .line 174
    invoke-direct {v4, v6, v8, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 175
    .line 176
    sput-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 177
    .line 178
    new-instance v6, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 179
    .line 180
    const-string v8, "ORDER_MAP_ENTRIES_BY_KEYS"

    .line 181
    .line 182
    const/16 v2, 0x10

    .line 183
    .line 184
    move-object/from16 v19, v4

    .line 185
    const/4 v4, 0x0

    .line 186
    .line 187
    .line 188
    invoke-direct {v6, v8, v2, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 189
    .line 190
    sput-object v6, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 191
    .line 192
    new-instance v8, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 193
    .line 194
    const-string v2, "EAGER_SERIALIZER_FETCH"

    .line 195
    .line 196
    const/16 v4, 0x11

    .line 197
    .line 198
    move-object/from16 v20, v6

    .line 199
    const/4 v6, 0x1

    .line 200
    .line 201
    .line 202
    invoke-direct {v8, v2, v4, v6}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 203
    .line 204
    sput-object v8, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 205
    .line 206
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 207
    .line 208
    const-string v4, "USE_EQUALITY_FOR_OBJECT_ID"

    .line 209
    .line 210
    const/16 v6, 0x12

    .line 211
    .line 212
    move-object/from16 v21, v8

    .line 213
    const/4 v8, 0x0

    .line 214
    .line 215
    .line 216
    invoke-direct {v2, v4, v6, v8}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 217
    .line 218
    sput-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 219
    .line 220
    const/16 v4, 0x13

    .line 221
    .line 222
    new-array v4, v4, [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 223
    .line 224
    aput-object v0, v4, v8

    .line 225
    const/4 v0, 0x1

    .line 226
    .line 227
    aput-object v1, v4, v0

    .line 228
    const/4 v0, 0x2

    .line 229
    .line 230
    aput-object v3, v4, v0

    .line 231
    const/4 v0, 0x3

    .line 232
    .line 233
    aput-object v5, v4, v0

    .line 234
    const/4 v0, 0x4

    .line 235
    .line 236
    aput-object v7, v4, v0

    .line 237
    const/4 v0, 0x5

    .line 238
    .line 239
    aput-object v9, v4, v0

    .line 240
    const/4 v0, 0x6

    .line 241
    .line 242
    aput-object v11, v4, v0

    .line 243
    const/4 v0, 0x7

    .line 244
    .line 245
    aput-object v13, v4, v0

    .line 246
    .line 247
    const/16 v0, 0x8

    .line 248
    .line 249
    aput-object v15, v4, v0

    .line 250
    .line 251
    const/16 v0, 0x9

    .line 252
    .line 253
    aput-object v14, v4, v0

    .line 254
    .line 255
    const/16 v0, 0xa

    .line 256
    .line 257
    aput-object v12, v4, v0

    .line 258
    .line 259
    const/16 v0, 0xb

    .line 260
    .line 261
    aput-object v10, v4, v0

    .line 262
    .line 263
    const/16 v0, 0xc

    .line 264
    .line 265
    aput-object v16, v4, v0

    .line 266
    .line 267
    const/16 v0, 0xd

    .line 268
    .line 269
    aput-object v17, v4, v0

    .line 270
    .line 271
    const/16 v0, 0xe

    .line 272
    .line 273
    aput-object v18, v4, v0

    .line 274
    .line 275
    const/16 v0, 0xf

    .line 276
    .line 277
    aput-object v19, v4, v0

    .line 278
    .line 279
    const/16 v0, 0x10

    .line 280
    .line 281
    aput-object v20, v4, v0

    .line 282
    .line 283
    const/16 v0, 0x11

    .line 284
    .line 285
    aput-object v21, v4, v0

    .line 286
    .line 287
    aput-object v2, v4, v6

    .line 288
    .line 289
    sput-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 290
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
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_defaultState:Z

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/SerializationFeature;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/SerializationFeature;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/SerializationFeature;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 9
    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    move-result v1

    .line 6
    shl-int/2addr v0, v1

    .line 7
    return v0
.end method
