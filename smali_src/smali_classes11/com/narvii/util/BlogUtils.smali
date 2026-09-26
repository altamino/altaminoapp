.class public Lcom/narvii/util/BlogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static getPollDurationText(Lcom/narvii/model/Blog;Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    if-eqz p0, :cond_9

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    move v2, v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    check-cast v3, Lcom/narvii/model/PollOption;

    .line 29
    .line 30
    iget v3, v3, Lcom/narvii/model/PollOption;->votesCount:I

    .line 31
    add-int/2addr v2, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v2, v1

    .line 34
    :cond_2
    const/4 v0, 0x1

    .line 35
    .line 36
    if-ne v2, v0, :cond_3

    .line 37
    .line 38
    .line 39
    const v2, 0x7f120ea1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_3
    new-array v3, v0, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    aput-object v2, v3, v1

    .line 53
    .line 54
    .line 55
    const v2, 0x7f120ea0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "  \u2022  "

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    iget-object p0, p0, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    .line 79
    .line 80
    if-nez p0, :cond_4

    .line 81
    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const v0, 0x7f1203e5

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 108
    move-result-wide v3

    .line 109
    .line 110
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    move-result-wide v5

    .line 113
    sub-long/2addr v3, v5

    .line 114
    .line 115
    .line 116
    const-wide/32 v5, 0x36ee80

    .line 117
    .line 118
    cmp-long p0, v3, v5

    .line 119
    .line 120
    if-gez p0, :cond_5

    .line 121
    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const v0, 0x7f1203da

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 143
    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    .line 147
    :cond_5
    const-wide/32 v7, 0x6ddd00

    .line 148
    .line 149
    cmp-long p0, v3, v7

    .line 150
    .line 151
    if-gez p0, :cond_6

    .line 152
    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const v0, 0x7f1203de

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    goto :goto_2

    .line 175
    .line 176
    .line 177
    :cond_6
    const-wide/32 v7, 0x5265c00

    .line 178
    .line 179
    cmp-long p0, v3, v7

    .line 180
    .line 181
    if-gez p0, :cond_7

    .line 182
    div-long/2addr v3, v5

    .line 183
    long-to-int p0, v3

    .line 184
    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    new-array v0, v0, [Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object p0

    .line 198
    .line 199
    aput-object p0, v0, v1

    .line 200
    .line 201
    .line 202
    const p0, 0x7f1203dc

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    move-result-object p0

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object p0

    .line 214
    goto :goto_2

    .line 215
    .line 216
    .line 217
    :cond_7
    const-wide/32 v5, 0xa4cb800

    .line 218
    .line 219
    cmp-long p0, v3, v5

    .line 220
    .line 221
    if-gez p0, :cond_8

    .line 222
    .line 223
    new-instance p0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const v0, 0x7f1203dd

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 236
    move-result-object p1

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object p0

    .line 244
    goto :goto_2

    .line 245
    :cond_8
    div-long/2addr v3, v7

    .line 246
    long-to-int p0, v3

    .line 247
    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    new-array v0, v0, [Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    move-result-object p0

    .line 261
    .line 262
    aput-object p0, v0, v1

    .line 263
    .line 264
    .line 265
    const p0, 0x7f1203db

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    move-result-object p0

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object p0

    .line 277
    :goto_2
    return-object p0

    .line 278
    :cond_9
    :goto_3
    const/4 p0, 0x0

    .line 279
    return-object p0
.end method

.method public static getQuizRecordText(Lcom/narvii/model/Blog;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    goto :goto_1

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getQuizPlayedTimes()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getQuizQuestionCount()I

    .line 13
    move-result p0

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    const v0, 0x7f120f90

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    aput-object v0, v1, v2

    .line 36
    .line 37
    .line 38
    const v0, 0x7f120f96

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    :goto_0
    if-eqz p0, :cond_2

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "  \u2022  "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    aput-object p0, v0, v2

    .line 78
    .line 79
    .line 80
    const p0, 0x7f120f80

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    :cond_2
    return-object v0

    .line 93
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 94
    return-object p0
.end method
