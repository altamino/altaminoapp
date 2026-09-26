.class public final enum Lcom/fasterxml/jackson/databind/DeserializationFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
        ">;",
        "Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ADJUST_DATES_TO_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum EAGER_DESERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_IGNORED_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_INVALID_SUBTYPE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_READING_DUP_TREE_KEY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;


# instance fields
.field private final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 3
    .line 4
    const-string v1, "USE_BIG_DECIMAL_FOR_FLOATS"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 9
    .line 10
    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 11
    .line 12
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 13
    .line 14
    const-string v3, "USE_BIG_INTEGER_FOR_INTS"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 19
    .line 20
    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 21
    .line 22
    new-instance v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 23
    .line 24
    const-string v5, "USE_JAVA_ARRAY_FOR_JSON_ARRAY"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 29
    .line 30
    sput-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 31
    .line 32
    new-instance v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 33
    .line 34
    const-string v7, "READ_ENUMS_USING_TO_STRING"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 39
    .line 40
    sput-object v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 41
    .line 42
    new-instance v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 43
    .line 44
    const-string v9, "FAIL_ON_UNKNOWN_PROPERTIES"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 49
    .line 50
    sput-object v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 51
    .line 52
    new-instance v9, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 53
    .line 54
    const-string v11, "FAIL_ON_NULL_FOR_PRIMITIVES"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 59
    .line 60
    sput-object v9, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 61
    .line 62
    new-instance v11, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 63
    .line 64
    const-string v13, "FAIL_ON_NUMBERS_FOR_ENUMS"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 69
    .line 70
    sput-object v11, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 71
    .line 72
    new-instance v13, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 73
    .line 74
    const-string v15, "FAIL_ON_INVALID_SUBTYPE"

    .line 75
    const/4 v14, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v13, v15, v14, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 79
    .line 80
    sput-object v13, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_INVALID_SUBTYPE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 81
    .line 82
    new-instance v15, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 83
    .line 84
    const-string v14, "FAIL_ON_READING_DUP_TREE_KEY"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v14, v12, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 90
    .line 91
    sput-object v15, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_READING_DUP_TREE_KEY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 92
    .line 93
    new-instance v14, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 94
    .line 95
    const-string v12, "FAIL_ON_IGNORED_PROPERTIES"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v14, v12, v10, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 101
    .line 102
    sput-object v14, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_IGNORED_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 103
    .line 104
    new-instance v12, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 105
    .line 106
    const-string v10, "WRAP_EXCEPTIONS"

    .line 107
    .line 108
    const/16 v8, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v12, v10, v8, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 112
    .line 113
    sput-object v12, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 114
    .line 115
    new-instance v10, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 116
    .line 117
    const-string v8, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    .line 118
    .line 119
    const/16 v6, 0xb

    .line 120
    .line 121
    .line 122
    invoke-direct {v10, v8, v6, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 123
    .line 124
    sput-object v10, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 125
    .line 126
    new-instance v8, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 127
    .line 128
    const-string v6, "UNWRAP_ROOT_VALUE"

    .line 129
    .line 130
    const/16 v4, 0xc

    .line 131
    .line 132
    .line 133
    invoke-direct {v8, v6, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 134
    .line 135
    sput-object v8, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 136
    .line 137
    new-instance v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 138
    .line 139
    const-string v4, "ACCEPT_EMPTY_STRING_AS_NULL_OBJECT"

    .line 140
    .line 141
    move-object/from16 v16, v8

    .line 142
    .line 143
    const/16 v8, 0xd

    .line 144
    .line 145
    .line 146
    invoke-direct {v6, v4, v8, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 147
    .line 148
    sput-object v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 149
    .line 150
    new-instance v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 151
    .line 152
    const-string v8, "READ_UNKNOWN_ENUM_VALUES_AS_NULL"

    .line 153
    .line 154
    move-object/from16 v17, v6

    .line 155
    .line 156
    const/16 v6, 0xe

    .line 157
    .line 158
    .line 159
    invoke-direct {v4, v8, v6, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 160
    .line 161
    sput-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 162
    .line 163
    new-instance v8, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 164
    .line 165
    const-string v6, "READ_DATE_TIMESTAMPS_AS_NANOSECONDS"

    .line 166
    .line 167
    const/16 v2, 0xf

    .line 168
    .line 169
    move-object/from16 v19, v4

    .line 170
    const/4 v4, 0x1

    .line 171
    .line 172
    .line 173
    invoke-direct {v8, v6, v2, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 174
    .line 175
    sput-object v8, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 176
    .line 177
    new-instance v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 178
    .line 179
    const-string v2, "ADJUST_DATES_TO_CONTEXT_TIME_ZONE"

    .line 180
    .line 181
    move-object/from16 v20, v8

    .line 182
    .line 183
    const/16 v8, 0x10

    .line 184
    .line 185
    .line 186
    invoke-direct {v6, v2, v8, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 187
    .line 188
    sput-object v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ADJUST_DATES_TO_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 189
    .line 190
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 191
    .line 192
    const-string v8, "EAGER_DESERIALIZER_FETCH"

    .line 193
    .line 194
    move-object/from16 v21, v6

    .line 195
    .line 196
    const/16 v6, 0x11

    .line 197
    .line 198
    .line 199
    invoke-direct {v2, v8, v6, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 200
    .line 201
    sput-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->EAGER_DESERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 202
    .line 203
    const/16 v8, 0x12

    .line 204
    .line 205
    new-array v8, v8, [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 206
    .line 207
    const/16 v18, 0x0

    .line 208
    .line 209
    aput-object v0, v8, v18

    .line 210
    .line 211
    aput-object v1, v8, v4

    .line 212
    const/4 v0, 0x2

    .line 213
    .line 214
    aput-object v3, v8, v0

    .line 215
    const/4 v0, 0x3

    .line 216
    .line 217
    aput-object v5, v8, v0

    .line 218
    const/4 v0, 0x4

    .line 219
    .line 220
    aput-object v7, v8, v0

    .line 221
    const/4 v0, 0x5

    .line 222
    .line 223
    aput-object v9, v8, v0

    .line 224
    const/4 v0, 0x6

    .line 225
    .line 226
    aput-object v11, v8, v0

    .line 227
    const/4 v0, 0x7

    .line 228
    .line 229
    aput-object v13, v8, v0

    .line 230
    .line 231
    const/16 v0, 0x8

    .line 232
    .line 233
    aput-object v15, v8, v0

    .line 234
    .line 235
    const/16 v0, 0x9

    .line 236
    .line 237
    aput-object v14, v8, v0

    .line 238
    .line 239
    const/16 v0, 0xa

    .line 240
    .line 241
    aput-object v12, v8, v0

    .line 242
    .line 243
    const/16 v0, 0xb

    .line 244
    .line 245
    aput-object v10, v8, v0

    .line 246
    .line 247
    const/16 v0, 0xc

    .line 248
    .line 249
    aput-object v16, v8, v0

    .line 250
    .line 251
    const/16 v0, 0xd

    .line 252
    .line 253
    aput-object v17, v8, v0

    .line 254
    .line 255
    const/16 v0, 0xe

    .line 256
    .line 257
    aput-object v19, v8, v0

    .line 258
    .line 259
    const/16 v0, 0xf

    .line 260
    .line 261
    aput-object v20, v8, v0

    .line 262
    .line 263
    const/16 v0, 0x10

    .line 264
    .line 265
    aput-object v21, v8, v0

    .line 266
    .line 267
    aput-object v2, v8, v6

    .line 268
    .line 269
    sput-object v8, Lcom/fasterxml/jackson/databind/DeserializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 270
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
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_defaultState:Z

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/DeserializationFeature;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 9
    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_defaultState:Z

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
