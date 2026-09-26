.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final RFC1123_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static formatEpochAsRfc1123(J)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->newRfc1123Formatter()Ljava/text/SimpleDateFormat;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static newRfc1123Formatter()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 5
    .line 6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    const-string v1, "GMT"

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 19
    return-object v0
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 9
    .line 10
    const-string v4, "Date"

    .line 11
    .line 12
    .line 13
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    check-cast v4, Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    .line 22
    move-result-wide v7

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const-wide/16 v7, 0x0

    .line 26
    .line 27
    :goto_0
    const-string v4, "Cache-Control"

    .line 28
    .line 29
    .line 30
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Ljava/lang/String;

    .line 34
    const/4 v9, 0x0

    .line 35
    .line 36
    if-eqz v4, :cond_8

    .line 37
    .line 38
    const-string v10, ","

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    move v10, v9

    .line 44
    .line 45
    const-wide/16 v11, 0x0

    .line 46
    .line 47
    const-wide/16 v13, 0x0

    .line 48
    :goto_1
    array-length v15, v4

    .line 49
    .line 50
    const/16 v16, 0x1

    .line 51
    .line 52
    if-ge v9, v15, :cond_7

    .line 53
    .line 54
    aget-object v15, v4, v9

    .line 55
    .line 56
    .line 57
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 58
    move-result-object v15

    .line 59
    .line 60
    .line 61
    const-string/jumbo v5, "no-cache"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v5

    .line 66
    .line 67
    if-nez v5, :cond_6

    .line 68
    .line 69
    .line 70
    const-string/jumbo v5, "no-store"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v5

    .line 75
    .line 76
    if-eqz v5, :cond_1

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_1
    const-string v5, "max-age="

    .line 80
    .line 81
    .line 82
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    move-result v5

    .line 84
    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    const/16 v5, 0x8

    .line 88
    .line 89
    .line 90
    :try_start_0
    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    .line 94
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 95
    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_2

    .line 97
    .line 98
    .line 99
    :cond_2
    const-string/jumbo v5, "stale-while-revalidate="

    .line 100
    .line 101
    .line 102
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    move-result v5

    .line 104
    .line 105
    if-eqz v5, :cond_3

    .line 106
    .line 107
    const/16 v5, 0x17

    .line 108
    .line 109
    .line 110
    :try_start_1
    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    .line 114
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 115
    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    goto :goto_2

    .line 117
    .line 118
    :cond_3
    const-string v5, "must-revalidate"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v5

    .line 123
    .line 124
    if-nez v5, :cond_4

    .line 125
    .line 126
    .line 127
    const-string/jumbo v5, "proxy-revalidate"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v5

    .line 132
    .line 133
    if-eqz v5, :cond_5

    .line 134
    .line 135
    :cond_4
    move/from16 v10, v16

    .line 136
    .line 137
    :catch_0
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 138
    goto :goto_1

    .line 139
    :cond_6
    :goto_3
    const/4 v0, 0x0

    .line 140
    return-object v0

    .line 141
    .line 142
    :cond_7
    move/from16 v9, v16

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    move v10, v9

    .line 145
    .line 146
    const-wide/16 v11, 0x0

    .line 147
    .line 148
    const-wide/16 v13, 0x0

    .line 149
    .line 150
    :goto_4
    const-string v4, "Expires"

    .line 151
    .line 152
    .line 153
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-result-object v4

    .line 155
    .line 156
    check-cast v4, Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v4, :cond_9

    .line 159
    .line 160
    .line 161
    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    .line 162
    move-result-wide v4

    .line 163
    goto :goto_5

    .line 164
    .line 165
    :cond_9
    const-wide/16 v4, 0x0

    .line 166
    .line 167
    :goto_5
    const-string v6, "Last-Modified"

    .line 168
    .line 169
    .line 170
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-result-object v6

    .line 172
    .line 173
    check-cast v6, Ljava/lang/String;

    .line 174
    .line 175
    if-eqz v6, :cond_a

    .line 176
    .line 177
    .line 178
    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    .line 179
    move-result-wide v15

    .line 180
    .line 181
    move-wide/from16 v17, v15

    .line 182
    goto :goto_6

    .line 183
    .line 184
    :cond_a
    const-wide/16 v17, 0x0

    .line 185
    .line 186
    :goto_6
    const-string v6, "ETag"

    .line 187
    .line 188
    .line 189
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    move-result-object v6

    .line 191
    .line 192
    check-cast v6, Ljava/lang/String;

    .line 193
    .line 194
    if-eqz v9, :cond_c

    .line 195
    .line 196
    const-wide/16 v4, 0x3e8

    .line 197
    mul-long/2addr v11, v4

    .line 198
    add-long/2addr v1, v11

    .line 199
    .line 200
    if-eqz v10, :cond_b

    .line 201
    move-wide v13, v1

    .line 202
    goto :goto_7

    .line 203
    .line 204
    .line 205
    :cond_b
    invoke-static {v13, v14}, Ljava/lang/Long;->signum(J)I

    .line 206
    mul-long/2addr v13, v4

    .line 207
    add-long/2addr v13, v1

    .line 208
    :goto_7
    move-wide v9, v13

    .line 209
    goto :goto_8

    .line 210
    .line 211
    :cond_c
    const-wide/16 v9, 0x0

    .line 212
    .line 213
    cmp-long v11, v7, v9

    .line 214
    .line 215
    if-lez v11, :cond_d

    .line 216
    .line 217
    cmp-long v11, v4, v7

    .line 218
    .line 219
    if-ltz v11, :cond_d

    .line 220
    sub-long/2addr v4, v7

    .line 221
    add-long/2addr v1, v4

    .line 222
    move-wide v9, v1

    .line 223
    goto :goto_8

    .line 224
    :cond_d
    move-wide v1, v9

    .line 225
    .line 226
    :goto_8
    new-instance v4, Lcom/android/volley/Cache$Entry;

    .line 227
    .line 228
    .line 229
    invoke-direct {v4}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 230
    .line 231
    iget-object v5, v0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 232
    .line 233
    iput-object v5, v4, Lcom/android/volley/Cache$Entry;->data:[B

    .line 234
    .line 235
    iput-object v6, v4, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 236
    .line 237
    iput-wide v1, v4, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 238
    .line 239
    iput-wide v9, v4, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 240
    .line 241
    iput-wide v7, v4, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 242
    .line 243
    move-wide/from16 v1, v17

    .line 244
    .line 245
    iput-wide v1, v4, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 246
    .line 247
    iput-object v3, v4, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    .line 250
    .line 251
    iput-object v0, v4, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 252
    return-object v4
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    .line 8
    invoke-static {p0, v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, ";"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    move v2, v0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 4
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 6
    aget-object v4, v3, v1

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    aget-object p0, v3, v0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->newRfc1123Formatter()Ljava/text/SimpleDateFormat;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 12
    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-wide v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    aput-object p0, v1, v2

    .line 21
    .line 22
    const-string p0, "Unable to parse dateStr: %s, falling back to 0"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p0, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    return-wide v0
.end method

.method static toAllHeaderList(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    new-instance v2, Lcom/android/volley/Header;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3, v1}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-object v0
.end method

.method static toHeaderMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/TreeMap;

    .line 3
    .line 4
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/android/volley/Header;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method
