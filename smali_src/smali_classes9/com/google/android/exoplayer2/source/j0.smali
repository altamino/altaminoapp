.class final Lcom/google/android/exoplayer2/source/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/y;
.implements Lcom/google/android/exoplayer2/source/y$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/j0$a;,
        Lcom/google/android/exoplayer2/source/j0$c;,
        Lcom/google/android/exoplayer2/source/j0$b;
    }
.end annotation


# instance fields
.field private callback:Lcom/google/android/exoplayer2/source/y$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/source/f1;",
            "Lcom/google/android/exoplayer2/source/f1;",
            ">;"
        }
    .end annotation
.end field

.field private final childrenPendingPreparation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/y;",
            ">;"
        }
    .end annotation
.end field

.field private compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/x0;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/i;

.field private enabledPeriods:[Lcom/google/android/exoplayer2/source/y;

.field private final periods:[Lcom/google/android/exoplayer2/source/y;

.field private final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/w0;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lcom/google/android/exoplayer2/source/h1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/i;[J[Lcom/google/android/exoplayer2/source/y;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/i;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/x0;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/source/i;->a([Lcom/google/android/exoplayer2/source/x0;)Lcom/google/android/exoplayer2/source/x0;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/x0;

    .line 31
    .line 32
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    .line 38
    .line 39
    new-array p1, v0, [Lcom/google/android/exoplayer2/source/y;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->enabledPeriods:[Lcom/google/android/exoplayer2/source/y;

    .line 42
    :goto_0
    array-length p1, p3

    .line 43
    .line 44
    if-ge v0, p1, :cond_1

    .line 45
    .line 46
    aget-wide v1, p2, v0

    .line 47
    .line 48
    const-wide/16 v3, 0x0

    .line 49
    .line 50
    cmp-long p1, v1, v3

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 55
    .line 56
    new-instance v3, Lcom/google/android/exoplayer2/source/j0$b;

    .line 57
    .line 58
    aget-object v4, p3, v0

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/exoplayer2/source/j0$b;-><init>(Lcom/google/android/exoplayer2/source/y;J)V

    .line 62
    .line 63
    aput-object v3, p1, v0

    .line 64
    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/source/y;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/j0$b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/exoplayer2/source/j0$b;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/j0$b;->a(Lcom/google/android/exoplayer2/source/j0$b;)Lcom/google/android/exoplayer2/source/y;

    .line 14
    move-result-object p1

    .line 15
    :cond_0
    return-object p1
.end method

.method public b([Lcom/google/android/exoplayer2/trackselection/s;[Z[Lcom/google/android/exoplayer2/source/w0;[ZJ)J
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    array-length v3, v1

    .line 8
    .line 9
    new-array v3, v3, [I

    .line 10
    array-length v4, v1

    .line 11
    .line 12
    new-array v4, v4, [I

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    array-length v7, v1

    .line 15
    const/4 v8, 0x0

    .line 16
    .line 17
    if-ge v6, v7, :cond_4

    .line 18
    .line 19
    aget-object v7, v2, v6

    .line 20
    .line 21
    if-nez v7, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/j0;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v7

    .line 29
    move-object v8, v7

    .line 30
    .line 31
    check-cast v8, Ljava/lang/Integer;

    .line 32
    :goto_1
    const/4 v7, -0x1

    .line 33
    .line 34
    if-nez v8, :cond_1

    .line 35
    move v8, v7

    .line 36
    goto :goto_2

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v8

    .line 41
    .line 42
    :goto_2
    aput v8, v3, v6

    .line 43
    .line 44
    aput v7, v4, v6

    .line 45
    .line 46
    aget-object v8, v1, v6

    .line 47
    .line 48
    if-eqz v8, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-interface {v8}, Lcom/google/android/exoplayer2/trackselection/v;->getTrackGroup()Lcom/google/android/exoplayer2/source/f1;

    .line 52
    move-result-object v8

    .line 53
    .line 54
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/j0;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v8

    .line 59
    .line 60
    check-cast v8, Lcom/google/android/exoplayer2/source/f1;

    .line 61
    .line 62
    .line 63
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v8

    .line 65
    .line 66
    check-cast v8, Lcom/google/android/exoplayer2/source/f1;

    .line 67
    const/4 v9, 0x0

    .line 68
    .line 69
    :goto_3
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 70
    array-length v11, v10

    .line 71
    .line 72
    if-ge v9, v11, :cond_3

    .line 73
    .line 74
    aget-object v10, v10, v9

    .line 75
    .line 76
    .line 77
    invoke-interface {v10}, Lcom/google/android/exoplayer2/source/y;->getTrackGroups()Lcom/google/android/exoplayer2/source/h1;

    .line 78
    move-result-object v10

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/source/h1;->c(Lcom/google/android/exoplayer2/source/f1;)I

    .line 82
    move-result v10

    .line 83
    .line 84
    if-eq v10, v7, :cond_2

    .line 85
    .line 86
    aput v9, v4, v6

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 90
    goto :goto_3

    .line 91
    .line 92
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_4
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/j0;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 99
    array-length v6, v1

    .line 100
    .line 101
    new-array v7, v6, [Lcom/google/android/exoplayer2/source/w0;

    .line 102
    array-length v9, v1

    .line 103
    .line 104
    new-array v9, v9, [Lcom/google/android/exoplayer2/source/w0;

    .line 105
    array-length v10, v1

    .line 106
    .line 107
    new-array v15, v10, [Lcom/google/android/exoplayer2/trackselection/s;

    .line 108
    .line 109
    new-instance v14, Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 112
    array-length v10, v10

    .line 113
    .line 114
    .line 115
    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .line 117
    move-wide/from16 v17, p5

    .line 118
    const/4 v13, 0x0

    .line 119
    .line 120
    :goto_5
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 121
    array-length v10, v10

    .line 122
    .line 123
    if-ge v13, v10, :cond_f

    .line 124
    const/4 v10, 0x0

    .line 125
    :goto_6
    array-length v11, v1

    .line 126
    .line 127
    if-ge v10, v11, :cond_7

    .line 128
    .line 129
    aget v11, v3, v10

    .line 130
    .line 131
    if-ne v11, v13, :cond_5

    .line 132
    .line 133
    aget-object v11, v2, v10

    .line 134
    goto :goto_7

    .line 135
    :cond_5
    move-object v11, v8

    .line 136
    .line 137
    :goto_7
    aput-object v11, v9, v10

    .line 138
    .line 139
    aget v11, v4, v10

    .line 140
    .line 141
    if-ne v11, v13, :cond_6

    .line 142
    .line 143
    aget-object v11, v1, v10

    .line 144
    .line 145
    .line 146
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object v11

    .line 148
    .line 149
    check-cast v11, Lcom/google/android/exoplayer2/trackselection/s;

    .line 150
    .line 151
    .line 152
    invoke-interface {v11}, Lcom/google/android/exoplayer2/trackselection/v;->getTrackGroup()Lcom/google/android/exoplayer2/source/f1;

    .line 153
    move-result-object v12

    .line 154
    .line 155
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/j0;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-result-object v5

    .line 160
    .line 161
    check-cast v5, Lcom/google/android/exoplayer2/source/f1;

    .line 162
    .line 163
    .line 164
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-result-object v5

    .line 166
    .line 167
    check-cast v5, Lcom/google/android/exoplayer2/source/f1;

    .line 168
    .line 169
    new-instance v12, Lcom/google/android/exoplayer2/source/j0$a;

    .line 170
    .line 171
    .line 172
    invoke-direct {v12, v11, v5}, Lcom/google/android/exoplayer2/source/j0$a;-><init>(Lcom/google/android/exoplayer2/trackselection/s;Lcom/google/android/exoplayer2/source/f1;)V

    .line 173
    .line 174
    aput-object v12, v15, v10

    .line 175
    goto :goto_8

    .line 176
    .line 177
    :cond_6
    aput-object v8, v15, v10

    .line 178
    .line 179
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 180
    goto :goto_6

    .line 181
    .line 182
    :cond_7
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 183
    .line 184
    aget-object v10, v5, v13

    .line 185
    move-object v11, v15

    .line 186
    .line 187
    move-object/from16 v12, p2

    .line 188
    move v5, v13

    .line 189
    move-object v13, v9

    .line 190
    move-object v8, v14

    .line 191
    .line 192
    move-object/from16 v14, p4

    .line 193
    .line 194
    move-object/from16 v19, v15

    .line 195
    .line 196
    move-wide/from16 v15, v17

    .line 197
    .line 198
    .line 199
    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/y;->b([Lcom/google/android/exoplayer2/trackselection/s;[Z[Lcom/google/android/exoplayer2/source/w0;[ZJ)J

    .line 200
    move-result-wide v10

    .line 201
    .line 202
    if-nez v5, :cond_8

    .line 203
    .line 204
    move-wide/from16 v17, v10

    .line 205
    goto :goto_9

    .line 206
    .line 207
    :cond_8
    cmp-long v10, v10, v17

    .line 208
    .line 209
    if-nez v10, :cond_e

    .line 210
    :goto_9
    const/4 v10, 0x0

    .line 211
    const/4 v11, 0x0

    .line 212
    :goto_a
    array-length v12, v1

    .line 213
    .line 214
    if-ge v10, v12, :cond_c

    .line 215
    .line 216
    aget v12, v4, v10

    .line 217
    const/4 v13, 0x1

    .line 218
    .line 219
    if-ne v12, v5, :cond_9

    .line 220
    .line 221
    aget-object v11, v9, v10

    .line 222
    .line 223
    .line 224
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    move-result-object v11

    .line 226
    .line 227
    check-cast v11, Lcom/google/android/exoplayer2/source/w0;

    .line 228
    .line 229
    aget-object v12, v9, v10

    .line 230
    .line 231
    aput-object v12, v7, v10

    .line 232
    .line 233
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/j0;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    .line 234
    .line 235
    .line 236
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    move-result-object v14

    .line 238
    .line 239
    .line 240
    invoke-virtual {v12, v11, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move v11, v13

    .line 242
    goto :goto_c

    .line 243
    .line 244
    :cond_9
    aget v12, v3, v10

    .line 245
    .line 246
    if-ne v12, v5, :cond_b

    .line 247
    .line 248
    aget-object v12, v9, v10

    .line 249
    .line 250
    if-nez v12, :cond_a

    .line 251
    goto :goto_b

    .line 252
    :cond_a
    const/4 v13, 0x0

    .line 253
    .line 254
    .line 255
    :goto_b
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 256
    .line 257
    :cond_b
    :goto_c
    add-int/lit8 v10, v10, 0x1

    .line 258
    goto :goto_a

    .line 259
    .line 260
    :cond_c
    if-eqz v11, :cond_d

    .line 261
    .line 262
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 263
    .line 264
    aget-object v10, v10, v5

    .line 265
    .line 266
    .line 267
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    :cond_d
    add-int/lit8 v13, v5, 0x1

    .line 270
    move-object v14, v8

    .line 271
    .line 272
    move-object/from16 v15, v19

    .line 273
    const/4 v8, 0x0

    .line 274
    .line 275
    goto/16 :goto_5

    .line 276
    .line 277
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 278
    .line 279
    const-string v2, "Children enabled at different positions."

    .line 280
    .line 281
    .line 282
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 283
    throw v1

    .line 284
    :cond_f
    move-object v8, v14

    .line 285
    const/4 v1, 0x0

    .line 286
    .line 287
    .line 288
    invoke-static {v7, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    .line 290
    new-array v1, v1, [Lcom/google/android/exoplayer2/source/y;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 294
    move-result-object v1

    .line 295
    .line 296
    check-cast v1, [Lcom/google/android/exoplayer2/source/y;

    .line 297
    .line 298
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/j0;->enabledPeriods:[Lcom/google/android/exoplayer2/source/y;

    .line 299
    .line 300
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/j0;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/i;

    .line 301
    .line 302
    .line 303
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/i;->a([Lcom/google/android/exoplayer2/source/x0;)Lcom/google/android/exoplayer2/source/x0;

    .line 304
    move-result-object v1

    .line 305
    .line 306
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/j0;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/x0;

    .line 307
    return-wide v17
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/source/x0;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/j0;->g(Lcom/google/android/exoplayer2/source/y;)V

    .line 6
    return-void
.end method

.method public continueLoading(J)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    .line 18
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/j0;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    check-cast v3, Lcom/google/android/exoplayer2/source/y;

    .line 27
    .line 28
    .line 29
    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/y;->continueLoading(J)Z

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return v1

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/x0;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/x0;->continueLoading(J)Z

    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/source/y;)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    move v3, v2

    .line 21
    .line 22
    :goto_0
    if-ge v2, v0, :cond_1

    .line 23
    .line 24
    aget-object v4, p1, v2

    .line 25
    .line 26
    .line 27
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/y;->getTrackGroups()Lcom/google/android/exoplayer2/source/h1;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    iget v4, v4, Lcom/google/android/exoplayer2/source/h1;->length:I

    .line 31
    add-int/2addr v3, v4

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    new-array p1, v3, [Lcom/google/android/exoplayer2/source/f1;

    .line 37
    move v0, v1

    .line 38
    move v2, v0

    .line 39
    .line 40
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 41
    array-length v4, v3

    .line 42
    .line 43
    if-ge v0, v4, :cond_3

    .line 44
    .line 45
    aget-object v3, v3, v0

    .line 46
    .line 47
    .line 48
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/y;->getTrackGroups()Lcom/google/android/exoplayer2/source/h1;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    iget v4, v3, Lcom/google/android/exoplayer2/source/h1;->length:I

    .line 52
    move v5, v1

    .line 53
    .line 54
    :goto_2
    if-ge v5, v4, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/source/h1;->b(I)Lcom/google/android/exoplayer2/source/f1;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v8, ":"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iget-object v8, v6, Lcom/google/android/exoplayer2/source/f1;->id:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v7

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/f1;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/f1;

    .line 84
    move-result-object v7

    .line 85
    .line 86
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/j0;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    add-int/lit8 v6, v2, 0x1

    .line 92
    .line 93
    aput-object v7, p1, v2

    .line 94
    .line 95
    add-int/lit8 v5, v5, 0x1

    .line 96
    move v2, v6

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/source/h1;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/h1;-><init>([Lcom/google/android/exoplayer2/source/f1;)V

    .line 106
    .line 107
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 108
    .line 109
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    check-cast p1, Lcom/google/android/exoplayer2/source/y$a;

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/y$a;->d(Lcom/google/android/exoplayer2/source/y;)V

    .line 119
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->enabledPeriods:[Lcom/google/android/exoplayer2/source/y;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    .line 11
    invoke-interface {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/y;->discardBuffer(JZ)V

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public e(JLcom/google/android/exoplayer2/r3;)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->enabledPeriods:[Lcom/google/android/exoplayer2/source/y;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    aget-object v0, v0, v2

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 12
    .line 13
    aget-object v0, v0, v2

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/y;->e(JLcom/google/android/exoplayer2/r3;)J

    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public f(Lcom/google/android/exoplayer2/source/y$a;J)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    aget-object v2, p1, v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/exoplayer2/source/y;->f(Lcom/google/android/exoplayer2/source/y$a;J)V

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/source/y;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/j0;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/source/y$a;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/x0$a;->c(Lcom/google/android/exoplayer2/source/x0;)V

    .line 12
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/x0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/x0;->getBufferedPositionUs()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/x0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/x0;->getNextLoadPositionUs()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/h1;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/source/h1;

    .line 9
    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/x0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/x0;->isLoading()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->periods:[Lcom/google/android/exoplayer2/source/y;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    .line 11
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/y;->maybeThrowPrepareError()V

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 15

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->enabledPeriods:[Lcom/google/android/exoplayer2/source/y;

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    const/4 v4, 0x0

    .line 10
    move-wide v6, v2

    .line 11
    move v5, v4

    .line 12
    .line 13
    :goto_0
    if-ge v5, v1, :cond_8

    .line 14
    .line 15
    aget-object v8, v0, v5

    .line 16
    .line 17
    .line 18
    invoke-interface {v8}, Lcom/google/android/exoplayer2/source/y;->readDiscontinuity()J

    .line 19
    move-result-wide v9

    .line 20
    .line 21
    cmp-long v11, v9, v2

    .line 22
    .line 23
    const-string v12, "Unexpected child seekToUs result."

    .line 24
    .line 25
    if-eqz v11, :cond_5

    .line 26
    .line 27
    cmp-long v11, v6, v2

    .line 28
    .line 29
    if-nez v11, :cond_3

    .line 30
    .line 31
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/j0;->enabledPeriods:[Lcom/google/android/exoplayer2/source/y;

    .line 32
    array-length v7, v6

    .line 33
    move v11, v4

    .line 34
    .line 35
    :goto_1
    if-ge v11, v7, :cond_2

    .line 36
    .line 37
    aget-object v13, v6, v11

    .line 38
    .line 39
    if-ne v13, v8, :cond_0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-interface {v13, v9, v10}, Lcom/google/android/exoplayer2/source/y;->seekToUs(J)J

    .line 44
    move-result-wide v13

    .line 45
    .line 46
    cmp-long v13, v13, v9

    .line 47
    .line 48
    if-nez v13, :cond_1

    .line 49
    .line 50
    add-int/lit8 v11, v11, 0x1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0

    .line 58
    :cond_2
    :goto_2
    move-wide v6, v9

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_3
    cmp-long v8, v9, v6

    .line 62
    .line 63
    if-nez v8, :cond_4

    .line 64
    goto :goto_3

    .line 65
    .line 66
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "Conflicting discontinuities."

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v0

    .line 73
    .line 74
    :cond_5
    cmp-long v9, v6, v2

    .line 75
    .line 76
    if-eqz v9, :cond_7

    .line 77
    .line 78
    .line 79
    invoke-interface {v8, v6, v7}, Lcom/google/android/exoplayer2/source/y;->seekToUs(J)J

    .line 80
    move-result-wide v8

    .line 81
    .line 82
    cmp-long v8, v8, v6

    .line 83
    .line 84
    if-nez v8, :cond_6

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    throw v0

    .line 92
    .line 93
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_8
    return-wide v6
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/x0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/x0;->reevaluateBuffer(J)V

    .line 6
    return-void
.end method

.method public seekToUs(J)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0;->enabledPeriods:[Lcom/google/android/exoplayer2/source/y;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/y;->seekToUs(J)J

    .line 9
    move-result-wide p1

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/j0;->enabledPeriods:[Lcom/google/android/exoplayer2/source/y;

    .line 13
    array-length v2, v1

    .line 14
    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/y;->seekToUs(J)J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    cmp-long v1, v1, p1

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string p2, "Unexpected child seekToUs result."

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1

    .line 37
    :cond_1
    return-wide p1
.end method
