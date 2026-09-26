.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "UTC"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result p0

    .line 11
    .line 12
    if-ne p0, p2, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 6

    .line 3
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x4

    if-eqz p1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    add-int/2addr v2, v1

    .line 5
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    :goto_1
    add-int/2addr v2, v1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x2d

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v4, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v3, 0x54

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v3, 0x3a

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    .line 15
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v1, v4, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xd

    .line 17
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v1, v4, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    if-eqz p1, :cond_2

    const/16 p1, 0x2e

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xe

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v4, 0x3

    invoke-static {v1, p1, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 20
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    if-eqz p1, :cond_4

    const p2, 0xea60

    .line 21
    div-int p2, p1, p2

    div-int/lit8 v0, p2, 0x3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 22
    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 p0, 0x2b

    .line 23
    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {v1, v0, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {v1, p2, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    goto :goto_3

    :cond_4
    const/16 p0, 0x5a

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge p1, v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result v0

    .line 11
    .line 12
    const/16 v1, 0x30

    .line 13
    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x39

    .line 17
    .line 18
    if-le v0, v1, :cond_0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return p1

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    sub-int/2addr p2, v0

    .line 10
    .line 11
    :goto_0
    if-lez p2, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x30

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    add-int/lit8 p2, p2, -0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 8
    move-result v0

    .line 9
    .line 10
    add-int/lit8 v3, v0, 0x4

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 14
    move-result v4

    .line 15
    .line 16
    const/16 v5, 0x2d

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 20
    move-result v6

    .line 21
    const/4 v7, 0x5

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    add-int/lit8 v3, v0, 0x5

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v0, v3, 0x2

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 31
    move-result v6

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 35
    move-result v8

    .line 36
    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    add-int/lit8 v0, v3, 0x3

    .line 40
    .line 41
    :cond_1
    add-int/lit8 v3, v0, 0x2

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 45
    move-result v8

    .line 46
    .line 47
    const/16 v9, 0x54

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v3, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 51
    move-result v9

    .line 52
    const/4 v10, 0x1

    .line 53
    const/4 v11, 0x0

    .line 54
    .line 55
    if-nez v9, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 59
    move-result v12

    .line 60
    .line 61
    if-gt v12, v3, :cond_2

    .line 62
    .line 63
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 64
    sub-int/2addr v6, v10

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v4, v6, v8}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->setLenient(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .line 81
    goto/16 :goto_7

    .line 82
    :catch_1
    move-exception v0

    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    :catch_2
    move-exception v0

    .line 86
    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :cond_2
    const/16 v12, 0x2b

    .line 90
    .line 91
    const/16 v13, 0x5a

    .line 92
    const/4 v14, 0x2

    .line 93
    .line 94
    if-eqz v9, :cond_a

    .line 95
    .line 96
    add-int/lit8 v3, v0, 0x3

    .line 97
    .line 98
    add-int/lit8 v9, v0, 0x5

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v3, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 102
    move-result v3

    .line 103
    .line 104
    const/16 v15, 0x3a

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v9, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 108
    move-result v16

    .line 109
    .line 110
    if-eqz v16, :cond_3

    .line 111
    .line 112
    add-int/lit8 v9, v0, 0x6

    .line 113
    .line 114
    :cond_3
    add-int/lit8 v0, v9, 0x2

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v9, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 118
    move-result v16

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v0, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 122
    move-result v15

    .line 123
    .line 124
    if-eqz v15, :cond_4

    .line 125
    .line 126
    add-int/lit8 v9, v9, 0x3

    .line 127
    move v0, v9

    .line 128
    .line 129
    .line 130
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 131
    move-result v9

    .line 132
    .line 133
    if-le v9, v0, :cond_9

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 137
    move-result v9

    .line 138
    .line 139
    if-eq v9, v13, :cond_9

    .line 140
    .line 141
    if-eq v9, v12, :cond_9

    .line 142
    .line 143
    if-eq v9, v5, :cond_9

    .line 144
    .line 145
    add-int/lit8 v9, v0, 0x2

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v0, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 149
    move-result v15

    .line 150
    .line 151
    const/16 v11, 0x3b

    .line 152
    .line 153
    if-le v15, v11, :cond_5

    .line 154
    .line 155
    const/16 v11, 0x3f

    .line 156
    .line 157
    if-ge v15, v11, :cond_5

    .line 158
    .line 159
    const/16 v15, 0x3b

    .line 160
    .line 161
    :cond_5
    const/16 v11, 0x2e

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v9, v11}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 165
    move-result v11

    .line 166
    .line 167
    if-eqz v11, :cond_8

    .line 168
    .line 169
    add-int/lit8 v9, v0, 0x3

    .line 170
    .line 171
    add-int/lit8 v11, v0, 0x4

    .line 172
    .line 173
    .line 174
    invoke-static {v1, v11}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    .line 175
    move-result v11

    .line 176
    .line 177
    add-int/lit8 v0, v0, 0x6

    .line 178
    .line 179
    .line 180
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    .line 181
    move-result v0

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v9, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 185
    move-result v17

    .line 186
    sub-int/2addr v0, v9

    .line 187
    .line 188
    if-eq v0, v10, :cond_7

    .line 189
    .line 190
    if-eq v0, v14, :cond_6

    .line 191
    goto :goto_0

    .line 192
    .line 193
    :cond_6
    mul-int/lit8 v17, v17, 0xa

    .line 194
    goto :goto_0

    .line 195
    .line 196
    :cond_7
    mul-int/lit8 v17, v17, 0x64

    .line 197
    :goto_0
    move v0, v3

    .line 198
    move v3, v11

    .line 199
    .line 200
    move/from16 v9, v16

    .line 201
    .line 202
    move/from16 v11, v17

    .line 203
    goto :goto_1

    .line 204
    :cond_8
    move v0, v3

    .line 205
    move v3, v9

    .line 206
    .line 207
    move/from16 v9, v16

    .line 208
    const/4 v11, 0x0

    .line 209
    goto :goto_1

    .line 210
    .line 211
    :cond_9
    move/from16 v9, v16

    .line 212
    const/4 v11, 0x0

    .line 213
    const/4 v15, 0x0

    .line 214
    .line 215
    move/from16 v18, v3

    .line 216
    move v3, v0

    .line 217
    .line 218
    move/from16 v0, v18

    .line 219
    goto :goto_1

    .line 220
    :cond_a
    const/4 v0, 0x0

    .line 221
    const/4 v9, 0x0

    .line 222
    const/4 v11, 0x0

    .line 223
    const/4 v15, 0x0

    .line 224
    .line 225
    .line 226
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 227
    move-result v14

    .line 228
    .line 229
    if-le v14, v3, :cond_13

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 233
    move-result v14

    .line 234
    .line 235
    if-ne v14, v13, :cond_b

    .line 236
    .line 237
    sget-object v5, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 238
    add-int/2addr v3, v10

    .line 239
    .line 240
    goto/16 :goto_6

    .line 241
    .line 242
    :cond_b
    if-eq v14, v12, :cond_d

    .line 243
    .line 244
    if-ne v14, v5, :cond_c

    .line 245
    goto :goto_2

    .line 246
    .line 247
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 248
    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    const-string v4, "Invalid time zone indicator \'"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v4, "\'"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object v3

    .line 270
    .line 271
    .line 272
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 273
    throw v0

    .line 274
    .line 275
    .line 276
    :cond_d
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 277
    move-result-object v5

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 281
    move-result v12

    .line 282
    .line 283
    if-lt v12, v7, :cond_e

    .line 284
    goto :goto_3

    .line 285
    .line 286
    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v5, "00"

    .line 295
    .line 296
    .line 297
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object v5

    .line 302
    .line 303
    .line 304
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 305
    move-result v12

    .line 306
    add-int/2addr v3, v12

    .line 307
    .line 308
    const-string v12, "+0000"

    .line 309
    .line 310
    .line 311
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    move-result v12

    .line 313
    .line 314
    if-nez v12, :cond_12

    .line 315
    .line 316
    const-string v12, "+00:00"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    move-result v12

    .line 321
    .line 322
    if-eqz v12, :cond_f

    .line 323
    goto :goto_5

    .line 324
    .line 325
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    const-string v13, "GMT"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    move-result-object v5

    .line 341
    .line 342
    .line 343
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 344
    move-result-object v12

    .line 345
    .line 346
    .line 347
    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 348
    move-result-object v13

    .line 349
    .line 350
    .line 351
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    move-result v14

    .line 353
    .line 354
    if-nez v14, :cond_11

    .line 355
    .line 356
    const-string v14, ":"

    .line 357
    .line 358
    const-string v7, ""

    .line 359
    .line 360
    .line 361
    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 362
    move-result-object v7

    .line 363
    .line 364
    .line 365
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    move-result v7

    .line 367
    .line 368
    if-eqz v7, :cond_10

    .line 369
    goto :goto_4

    .line 370
    .line 371
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 372
    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    const-string v4, "Mismatching time zone indicator: "

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v4, " given, resolves to "

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 393
    move-result-object v4

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    move-result-object v3

    .line 401
    .line 402
    .line 403
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 404
    throw v0

    .line 405
    :cond_11
    :goto_4
    move-object v5, v12

    .line 406
    goto :goto_6

    .line 407
    .line 408
    :cond_12
    :goto_5
    sget-object v5, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 409
    .line 410
    :goto_6
    new-instance v7, Ljava/util/GregorianCalendar;

    .line 411
    .line 412
    .line 413
    invoke-direct {v7, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 414
    const/4 v5, 0x0

    .line 415
    .line 416
    .line 417
    invoke-virtual {v7, v5}, Ljava/util/Calendar;->setLenient(Z)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 421
    sub-int/2addr v6, v10

    .line 422
    const/4 v4, 0x2

    .line 423
    .line 424
    .line 425
    invoke-virtual {v7, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 426
    const/4 v4, 0x5

    .line 427
    .line 428
    .line 429
    invoke-virtual {v7, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 430
    .line 431
    const/16 v4, 0xb

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 435
    .line 436
    const/16 v0, 0xc

    .line 437
    .line 438
    .line 439
    invoke-virtual {v7, v0, v9}, Ljava/util/Calendar;->set(II)V

    .line 440
    .line 441
    const/16 v0, 0xd

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 445
    .line 446
    const/16 v0, 0xe

    .line 447
    .line 448
    .line 449
    invoke-virtual {v7, v0, v11}, Ljava/util/Calendar;->set(II)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 456
    move-result-object v0

    .line 457
    return-object v0

    .line 458
    .line 459
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 460
    .line 461
    const-string v3, "No time zone indicator"

    .line 462
    .line 463
    .line 464
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 465
    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .line 467
    :goto_7
    if-nez v1, :cond_14

    .line 468
    const/4 v1, 0x0

    .line 469
    goto :goto_8

    .line 470
    .line 471
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    const/16 v4, 0x22

    .line 477
    .line 478
    .line 479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    move-result-object v1

    .line 490
    .line 491
    .line 492
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 493
    move-result-object v3

    .line 494
    .line 495
    if-eqz v3, :cond_15

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 499
    move-result v4

    .line 500
    .line 501
    if-eqz v4, :cond_16

    .line 502
    .line 503
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    const-string v4, "("

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    move-result-object v4

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 519
    move-result-object v4

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v4, ")"

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    move-result-object v3

    .line 532
    .line 533
    :cond_16
    new-instance v4, Ljava/text/ParseException;

    .line 534
    .line 535
    new-instance v5, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .line 540
    const-string v6, "Failed to parse date ["

    .line 541
    .line 542
    .line 543
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    const-string v1, "]: "

    .line 549
    .line 550
    .line 551
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    move-result-object v1

    .line 559
    .line 560
    .line 561
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 562
    move-result v2

    .line 563
    .line 564
    .line 565
    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 569
    throw v4
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-gt p2, v0, :cond_4

    .line 9
    .line 10
    if-gt p1, p2, :cond_4

    .line 11
    .line 12
    const-string v0, "Invalid number: "

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    if-ge p1, p2, :cond_1

    .line 17
    .line 18
    add-int/lit8 v2, p1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 22
    move-result v3

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-ltz v3, :cond_0

    .line 29
    neg-int v3, v3

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v1

    .line 56
    :cond_1
    const/4 v3, 0x0

    .line 57
    move v2, p1

    .line 58
    .line 59
    :goto_0
    if-ge v2, p2, :cond_3

    .line 60
    .line 61
    add-int/lit8 v4, v2, 0x1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    .line 69
    move-result v2

    .line 70
    .line 71
    if-ltz v2, :cond_2

    .line 72
    .line 73
    mul-int/lit8 v3, v3, 0xa

    .line 74
    sub-int/2addr v3, v2

    .line 75
    move v2, v4

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 101
    throw v1

    .line 102
    :cond_3
    neg-int p0, v3

    .line 103
    return p0

    .line 104
    .line 105
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p1
.end method
