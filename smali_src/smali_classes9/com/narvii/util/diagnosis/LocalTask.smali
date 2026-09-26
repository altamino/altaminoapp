.class public Lcom/narvii/util/diagnosis/LocalTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "SourceFile"


# static fields
.field private static final key:Ljava/lang/String; = "1825D7DAD44DB4FD957743A45D5826E8"


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Local"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    const-string v0, "1825D7DAD44DB4FD957743A45D5826E8"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lc/f/b/e/q5;->c(Ljava/lang/String;)[B

    .line 6
    move-result-object v1

    .line 7
    .line 8
    sget-boolean v2, Lc/f/b/e/q5;->a:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object v2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 15
    .line 16
    const-string v2, "A"

    .line 17
    .line 18
    iput-object v2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {v1}, Lc/f/b/e/q5;->b([B)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    iput-object v2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v3, "B"

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lc/f/b/e/q5;->errc()I

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    iget-object v3, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v3, " B"

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :goto_1
    iput-object v2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 74
    :cond_2
    const/4 v2, 0x0

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0, v2}, Lc/f/b/e/q5;->d([BLjava/lang/String;I)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    const-string v3, ""

    .line 81
    .line 82
    const-string v4, "N"

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 88
    move-result v5

    .line 89
    .line 90
    .line 91
    const v6, -0x4fc53f1d

    .line 92
    .line 93
    if-eq v5, v6, :cond_7

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 97
    move-result v5

    .line 98
    .line 99
    .line 100
    const v6, -0x75035e79

    .line 101
    .line 102
    if-eq v5, v6, :cond_7

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 106
    move-result v5

    .line 107
    .line 108
    .line 109
    const v6, 0x156cde47

    .line 110
    .line 111
    if-eq v5, v6, :cond_7

    .line 112
    .line 113
    :cond_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 114
    .line 115
    iput-object v5, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 116
    .line 117
    if-nez v0, :cond_4

    .line 118
    move-object v5, v4

    .line 119
    goto :goto_2

    .line 120
    .line 121
    :cond_4
    const-string v5, "F"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 125
    move-result v0

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    goto :goto_2

    .line 129
    .line 130
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lc/f/b/e/q5;->errc()I

    .line 140
    move-result v5

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v5

    .line 148
    .line 149
    :goto_2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 150
    .line 151
    if-nez v0, :cond_6

    .line 152
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    const-string v6, "C"

    .line 159
    .line 160
    .line 161
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    goto :goto_4

    .line 170
    .line 171
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    iget-object v6, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v6, " C"

    .line 182
    goto :goto_3

    .line 183
    .line 184
    :goto_4
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 185
    .line 186
    :cond_7
    const-string v0, "1825D7DAD44DB4FD957743A45D5826E81825D7DAD44DB4FD957743A45D5826E8"

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v0, v2}, Lc/f/b/e/q5;->f([BLjava/lang/String;I)Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    if-eqz v0, :cond_8

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 196
    move-result v1

    .line 197
    .line 198
    .line 199
    const v2, 0x15a3f8dc

    .line 200
    .line 201
    if-eq v1, v2, :cond_b

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 205
    move-result v1

    .line 206
    .line 207
    .line 208
    const v2, 0x6f26f41

    .line 209
    .line 210
    if-eq v1, v2, :cond_b

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 214
    move-result v1

    .line 215
    .line 216
    .line 217
    const v2, 0x3c140f0f

    .line 218
    .line 219
    if-eq v1, v2, :cond_b

    .line 220
    .line 221
    :cond_8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 222
    .line 223
    iput-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 224
    .line 225
    if-nez v0, :cond_9

    .line 226
    goto :goto_5

    .line 227
    .line 228
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lc/f/b/e/q5;->errc()I

    .line 238
    move-result v1

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object v4

    .line 246
    .line 247
    :goto_5
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 248
    .line 249
    if-nez v0, :cond_a

    .line 250
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    const-string v1, "S"

    .line 257
    .line 258
    .line 259
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v0

    .line 267
    goto :goto_7

    .line 268
    .line 269
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v1, " S"

    .line 280
    goto :goto_6

    .line 281
    .line 282
    :goto_7
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 283
    .line 284
    :cond_b
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 285
    .line 286
    if-nez v0, :cond_c

    .line 287
    .line 288
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 289
    .line 290
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 291
    :cond_c
    return-void
.end method
