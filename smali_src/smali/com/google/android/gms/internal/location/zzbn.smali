.class public final Lcom/google/android/gms/internal/location/zzbn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    .line 5
    if-ge v1, v2, :cond_2

    .line 6
    .line 7
    aget-object v2, p1, v1

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string v2, "null"

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    :catch_0
    move-exception v9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 40
    move-result v4

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 48
    move-result v5

    .line 49
    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 53
    add-int/2addr v4, v5

    .line 54
    .line 55
    .line 56
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const/16 v3, 0x40

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    const-string v3, "com.google.common.base.Strings"

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object v5

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 87
    move-result v6

    .line 88
    .line 89
    const-string v7, "Exception during lenientFormat for "

    .line 90
    .line 91
    if-eqz v6, :cond_1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v5

    .line 96
    :goto_1
    move-object v7, v5

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_1
    new-instance v5, Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :goto_2
    const-string v5, "com.google.common.base.Strings"

    .line 106
    .line 107
    const-string v6, "lenientToString"

    .line 108
    move-object v8, v9

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    .line 122
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 127
    move-result v4

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 131
    move-result v5

    .line 132
    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    add-int/lit8 v4, v4, 0x9

    .line 136
    add-int/2addr v4, v5

    .line 137
    .line 138
    .line 139
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 140
    .line 141
    const-string v4, "<"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v2, " threw "

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v2, ">"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    :goto_3
    aput-object v2, p1, v1

    .line 167
    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 176
    move-result v3

    .line 177
    .line 178
    mul-int/lit8 v2, v2, 0x10

    .line 179
    add-int/2addr v3, v2

    .line 180
    .line 181
    .line 182
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 183
    move v2, v0

    .line 184
    :goto_4
    array-length v3, p1

    .line 185
    .line 186
    if-ge v0, v3, :cond_4

    .line 187
    .line 188
    const-string v4, "%s"

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 192
    move-result v4

    .line 193
    const/4 v5, -0x1

    .line 194
    .line 195
    if-ne v4, v5, :cond_3

    .line 196
    goto :goto_5

    .line 197
    .line 198
    .line 199
    :cond_3
    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    add-int/lit8 v2, v0, 0x1

    .line 202
    .line 203
    aget-object v0, p1, v0

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    add-int/lit8 v0, v4, 0x2

    .line 209
    move v10, v2

    .line 210
    move v2, v0

    .line 211
    move v0, v10

    .line 212
    goto :goto_4

    .line 213
    .line 214
    .line 215
    :cond_4
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 216
    move-result v4

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    if-ge v0, v3, :cond_6

    .line 222
    .line 223
    const-string p0, " ["

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    add-int/lit8 p0, v0, 0x1

    .line 229
    .line 230
    aget-object v0, p1, v0

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    :goto_6
    array-length v0, p1

    .line 235
    .line 236
    if-ge p0, v0, :cond_5

    .line 237
    .line 238
    const-string v0, ", "

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    add-int/lit8 v0, p0, 0x1

    .line 244
    .line 245
    aget-object p0, p1, p0

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    move p0, v0

    .line 250
    goto :goto_6

    .line 251
    .line 252
    :cond_5
    const/16 p0, 0x5d

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object p0

    .line 260
    return-object p0
.end method
