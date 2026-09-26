.class public final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_TIMELINE:I


# instance fields
.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media3/exoplayer/source/MediaPeriod;",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private playbackThreadHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timelineUpdateScheduled:Z


# direct methods
.method private static A0(JI)I
    .locals 2

    .line 1
    int-to-long v0, p2

    .line 2
    rem-long/2addr p0, v0

    .line 3
    long-to-int p0, p0

    .line 4
    return p0
.end method

.method private static B0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p0, Landroid/util/Pair;

    .line 3
    .line 4
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 5
    return-object p0
.end method

.method private static C0(JII)J
    .locals 2

    .line 1
    int-to-long v0, p2

    mul-long/2addr p0, v0

    int-to-long p2, p3

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private static E0(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static G0(JI)J
    .locals 2

    .line 1
    int-to-long v0, p2

    .line 2
    div-long/2addr p0, v0

    .line 3
    return-wide p0
.end method

.method private H0(Landroid/os/Message;)Z
    .locals 0

    .line 1
    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->L0()V

    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method private I0()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;
    .locals 32
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 8
    .line 9
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 24
    move-result-object v5

    .line 25
    const/4 v7, 0x1

    .line 26
    move v12, v7

    .line 27
    .line 28
    move/from16 v17, v12

    .line 29
    const/4 v11, 0x0

    .line 30
    const/4 v13, 0x0

    .line 31
    const/4 v14, 0x0

    .line 32
    .line 33
    const-wide/16 v15, 0x0

    .line 34
    .line 35
    const/16 v18, 0x0

    .line 36
    .line 37
    const-wide/16 v19, 0x0

    .line 38
    .line 39
    const-wide/16 v21, 0x0

    .line 40
    .line 41
    const/16 v23, 0x0

    .line 42
    .line 43
    :goto_0
    iget-object v6, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/a0;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 47
    move-result v6

    .line 48
    .line 49
    if-ge v11, v6, :cond_c

    .line 50
    .line 51
    iget-object v6, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/a0;

    .line 52
    .line 53
    .line 54
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 56
    .line 57
    check-cast v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 58
    .line 59
    iget-object v8, v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->H0()Landroidx/media3/common/Timeline;

    .line 63
    move-result-object v8

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->u()Z

    .line 67
    move-result v9

    .line 68
    xor-int/2addr v9, v7

    .line 69
    .line 70
    const-string v7, "Can\'t concatenate empty child Timeline."

    .line 71
    .line 72
    .line 73
    invoke-static {v9, v7}, Landroidx/media3/common/util/Assertions;->b(ZLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v8}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 77
    .line 78
    .line 79
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v7

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v7}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->m()I

    .line 87
    move-result v7

    .line 88
    add-int/2addr v14, v7

    .line 89
    const/4 v7, 0x0

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->t()I

    .line 93
    move-result v9

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    .line 99
    .line 100
    if-ge v7, v9, :cond_7

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8, v7, v1}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 104
    .line 105
    if-nez v23, :cond_0

    .line 106
    .line 107
    iget-object v9, v1, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 108
    move-object v13, v9

    .line 109
    .line 110
    const/16 v23, 0x1

    .line 111
    .line 112
    :cond_0
    if-eqz v12, :cond_1

    .line 113
    .line 114
    iget-object v9, v1, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-static {v13, v9}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    move-result v9

    .line 119
    .line 120
    if-eqz v9, :cond_1

    .line 121
    .line 122
    move/from16 v29, v11

    .line 123
    const/4 v12, 0x1

    .line 124
    goto :goto_2

    .line 125
    .line 126
    :cond_1
    move/from16 v29, v11

    .line 127
    const/4 v12, 0x0

    .line 128
    .line 129
    :goto_2
    iget-wide v10, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 130
    .line 131
    cmp-long v30, v10, v27

    .line 132
    .line 133
    if-nez v30, :cond_2

    .line 134
    .line 135
    iget-wide v10, v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    .line 136
    .line 137
    cmp-long v27, v10, v27

    .line 138
    .line 139
    if-nez v27, :cond_2

    .line 140
    const/4 v9, 0x0

    .line 141
    return-object v9

    .line 142
    :cond_2
    const/4 v9, 0x0

    .line 143
    .line 144
    add-long v19, v19, v10

    .line 145
    .line 146
    iget v10, v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    .line 147
    .line 148
    if-nez v10, :cond_3

    .line 149
    .line 150
    if-nez v7, :cond_3

    .line 151
    .line 152
    iget-wide v10, v1, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 153
    move-wide v15, v10

    .line 154
    .line 155
    iget-wide v9, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 156
    neg-long v9, v9

    .line 157
    .line 158
    move-wide/from16 v21, v15

    .line 159
    .line 160
    const-wide/16 v24, 0x0

    .line 161
    move-wide v15, v9

    .line 162
    goto :goto_4

    .line 163
    .line 164
    :cond_3
    iget-wide v9, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 165
    .line 166
    const-wide/16 v24, 0x0

    .line 167
    .line 168
    cmp-long v9, v9, v24

    .line 169
    .line 170
    if-nez v9, :cond_4

    .line 171
    const/4 v9, 0x1

    .line 172
    goto :goto_3

    .line 173
    :cond_4
    const/4 v9, 0x0

    .line 174
    .line 175
    :goto_3
    const-string v10, "Can\'t concatenate windows. A window has a non-zero offset in a period."

    .line 176
    .line 177
    .line 178
    invoke-static {v9, v10}, Landroidx/media3/common/util/Assertions;->b(ZLjava/lang/Object;)V

    .line 179
    .line 180
    :goto_4
    iget-boolean v9, v1, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    .line 181
    .line 182
    if-nez v9, :cond_6

    .line 183
    .line 184
    iget-boolean v9, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    .line 185
    .line 186
    if-eqz v9, :cond_5

    .line 187
    goto :goto_5

    .line 188
    :cond_5
    const/4 v9, 0x0

    .line 189
    goto :goto_6

    .line 190
    :cond_6
    :goto_5
    const/4 v9, 0x1

    .line 191
    .line 192
    :goto_6
    and-int v17, v17, v9

    .line 193
    .line 194
    iget-boolean v9, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    .line 195
    .line 196
    or-int v18, v18, v9

    .line 197
    .line 198
    add-int/lit8 v7, v7, 0x1

    .line 199
    .line 200
    move/from16 v11, v29

    .line 201
    goto :goto_1

    .line 202
    .line 203
    :cond_7
    move/from16 v29, v11

    .line 204
    .line 205
    const-wide/16 v24, 0x0

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->m()I

    .line 209
    move-result v7

    .line 210
    const/4 v9, 0x0

    .line 211
    .line 212
    :goto_7
    if-ge v9, v7, :cond_b

    .line 213
    .line 214
    .line 215
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 216
    move-result-object v10

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v10}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8, v9, v2}, Landroidx/media3/common/Timeline;->j(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 223
    .line 224
    iget-wide v10, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 225
    .line 226
    cmp-long v31, v10, v27

    .line 227
    .line 228
    if-nez v31, :cond_a

    .line 229
    .line 230
    move-object/from16 v31, v2

    .line 231
    const/4 v2, 0x1

    .line 232
    .line 233
    if-ne v7, v2, :cond_8

    .line 234
    move v10, v2

    .line 235
    goto :goto_8

    .line 236
    :cond_8
    const/4 v10, 0x0

    .line 237
    .line 238
    :goto_8
    const-string v11, "Can\'t concatenate multiple periods with unknown duration in one window."

    .line 239
    .line 240
    .line 241
    invoke-static {v10, v11}, Landroidx/media3/common/util/Assertions;->b(ZLjava/lang/Object;)V

    .line 242
    .line 243
    iget-wide v10, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 244
    .line 245
    cmp-long v26, v10, v27

    .line 246
    .line 247
    if-eqz v26, :cond_9

    .line 248
    .line 249
    :goto_9
    move-object/from16 v26, v3

    .line 250
    goto :goto_a

    .line 251
    .line 252
    :cond_9
    iget-wide v10, v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    .line 253
    goto :goto_9

    .line 254
    .line 255
    :goto_a
    iget-wide v2, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 256
    add-long/2addr v10, v2

    .line 257
    goto :goto_b

    .line 258
    .line 259
    :cond_a
    move-object/from16 v31, v2

    .line 260
    .line 261
    move-object/from16 v26, v3

    .line 262
    :goto_b
    add-long/2addr v15, v10

    .line 263
    .line 264
    add-int/lit8 v9, v9, 0x1

    .line 265
    .line 266
    move-object/from16 v3, v26

    .line 267
    .line 268
    move-object/from16 v2, v31

    .line 269
    goto :goto_7

    .line 270
    .line 271
    :cond_b
    move-object/from16 v31, v2

    .line 272
    .line 273
    move-object/from16 v26, v3

    .line 274
    .line 275
    add-int/lit8 v11, v29, 0x1

    .line 276
    const/4 v7, 0x1

    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_c
    move-object/from16 v26, v3

    .line 281
    .line 282
    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    .line 283
    .line 284
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 285
    .line 286
    .line 287
    invoke-virtual/range {v26 .. v26}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 288
    move-result-object v14

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 292
    move-result-object v15

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 296
    move-result-object v16

    .line 297
    .line 298
    if-eqz v12, :cond_d

    .line 299
    .line 300
    move-object/from16 v23, v13

    .line 301
    goto :goto_c

    .line 302
    .line 303
    :cond_d
    const/16 v23, 0x0

    .line 304
    :goto_c
    move-object v12, v1

    .line 305
    move-object v13, v2

    .line 306
    .line 307
    .line 308
    invoke-direct/range {v12 .. v23}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;-><init>(Landroidx/media3/common/MediaItem;Lcom/google/common/collect/a0;Lcom/google/common/collect/a0;Lcom/google/common/collect/a0;ZZJJLjava/lang/Object;)V

    .line 309
    return-object v1
.end method

.method private K0()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/os/Handler;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 24
    :cond_0
    return-void
.end method

.method private L0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->I0()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->i0(Landroidx/media3/common/Timeline;)V

    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic u0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->H0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static synthetic v0(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->z0(Ljava/lang/Object;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic w0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->B0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic x0(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->E0(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private y0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/a0;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/a0;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 18
    .line 19
    iget v2, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget v1, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->l0(Ljava/lang/Object;)V

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method private static z0(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p0, Landroid/util/Pair;

    .line 3
    .line 4
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public A(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->A(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 20
    .line 21
    iget p1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    iput p1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->y0()V

    .line 37
    :cond_0
    return-void
.end method

.method protected D0(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p2, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/a0;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->A0(JI)I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eq v1, v0, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_0
    iget-wide v0, p2, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/a0;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->G0(JI)J

    .line 32
    move-result-wide v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result p1

    .line 37
    .line 38
    iget-object v2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->E0(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e(J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method protected F0(Ljava/lang/Integer;I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method protected J0(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->K0()V

    .line 4
    return-void
.end method

.method public M(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->z0(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/a0;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 15
    .line 16
    iget-object v1, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->B0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iget-wide v2, p1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/a0;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 32
    move-result p1

    .line 33
    .line 34
    iget v4, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3, p1, v4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->C0(JII)J

    .line 38
    move-result-wide v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e(J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iget v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->m0(Ljava/lang/Object;)V

    .line 52
    .line 53
    iget v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    iput v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->E0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iget-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->y0()V

    .line 72
    return-object p1
.end method

.method protected e0()V
    .locals 0

    .line 1
    return-void
.end method

.method protected h0(Landroidx/media3/datasource/TransferListener;)V
    .locals 2
    .param p1    # Landroidx/media3/datasource/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->h0(Landroidx/media3/datasource/TransferListener;)V

    .line 4
    .line 5
    new-instance p1, Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v0, Landroidx/media3/exoplayer/source/c;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/c;-><init>(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/a0;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-ge p1, v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/a0;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->s0(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 42
    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->K0()V

    .line 48
    return-void
.end method

.method public j()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method protected j0()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->j0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    .line 13
    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 17
    return-void
.end method

.method protected bridge synthetic n0(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->D0(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public o()Landroidx/media3/common/Timeline;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->I0()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic p0(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->F0(Ljava/lang/Integer;I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected bridge synthetic r0(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->J0(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    .line 6
    return-void
.end method
