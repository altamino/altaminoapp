.class public final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$ObjectType;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$StreamType;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$StreamingFormat;
    }
.end annotation


# static fields
.field public static final OBJECT_TYPE_AUDIO_ONLY:Ljava/lang/String; = "a"

.field public static final OBJECT_TYPE_INIT_SEGMENT:Ljava/lang/String; = "i"

.field public static final OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO:Ljava/lang/String; = "av"

.field public static final OBJECT_TYPE_VIDEO_ONLY:Ljava/lang/String; = "v"

.field public static final STREAMING_FORMAT_DASH:Ljava/lang/String; = "d"

.field public static final STREAMING_FORMAT_HLS:Ljava/lang/String; = "h"

.field public static final STREAMING_FORMAT_SS:Ljava/lang/String; = "s"

.field public static final STREAM_TYPE_LIVE:Ljava/lang/String; = "l"

.field public static final STREAM_TYPE_VOD:Ljava/lang/String; = "v"


# instance fields
.field private final bufferedDurationUs:J

.field private chunkDurationUs:J

.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

.field private final isLive:Z

.field private objectType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final streamingFormat:Ljava/lang/String;

.field private final trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;JLjava/lang/String;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p3, v0

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 18
    .line 19
    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 20
    .line 21
    iput-wide p3, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->bufferedDurationUs:J

    .line 22
    .line 23
    iput-object p5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->streamingFormat:Ljava/lang/String;

    .line 24
    .line 25
    iput-boolean p6, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->isLive:Z

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    .line 33
    return-void
.end method

.method private b()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "i"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public static c(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)I

    .line 19
    move-result v1

    .line 20
    const/4 v2, -0x1

    .line 21
    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)I

    .line 32
    move-result v1

    .line 33
    .line 34
    :cond_1
    if-ne v1, v0, :cond_2

    .line 35
    .line 36
    const-string p0, "a"

    .line 37
    return-object p0

    .line 38
    :cond_2
    const/4 p0, 0x2

    .line 39
    .line 40
    if-ne v1, p0, :cond_3

    .line 41
    .line 42
    .line 43
    const-string/jumbo p0, "v"

    .line 44
    return-object p0

    .line 45
    :cond_3
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/b0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/b0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->b()Lcom/google/common/collect/b0;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget v1, v1, Landroidx/media3/common/Format;->bitrate:I

    .line 17
    .line 18
    const/16 v2, 0x3e8

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->l(II)I

    .line 22
    move-result v1

    .line 23
    .line 24
    new-instance v3, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;-><init>()V

    .line 28
    .line 29
    const-string v4, "CMCD-Object"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->h(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->b()Z

    .line 43
    move-result v4

    .line 44
    .line 45
    const-wide/16 v5, 0x3e8

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->a()Z

    .line 53
    move-result v4

    .line 54
    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->g(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 59
    .line 60
    :cond_0
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->k()Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 69
    .line 70
    .line 71
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    iget-object v7, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 75
    .line 76
    .line 77
    invoke-interface {v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    .line 78
    move-result-object v7

    .line 79
    .line 80
    iget v7, v7, Landroidx/media3/common/Format;->bitrate:I

    .line 81
    const/4 v8, 0x0

    .line 82
    .line 83
    :goto_0
    iget v9, v4, Landroidx/media3/common/TrackGroup;->length:I

    .line 84
    .line 85
    if-ge v8, v9, :cond_1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v8}, Landroidx/media3/common/TrackGroup;->c(I)Landroidx/media3/common/Format;

    .line 89
    move-result-object v9

    .line 90
    .line 91
    iget v9, v9, Landroidx/media3/common/Format;->bitrate:I

    .line 92
    .line 93
    .line 94
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 95
    move-result v7

    .line 96
    .line 97
    add-int/lit8 v8, v8, 0x1

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :cond_1
    invoke-static {v7, v2}, Landroidx/media3/common/util/Util;->l(II)I

    .line 102
    move-result v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->k(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 106
    .line 107
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->f()Z

    .line 111
    move-result v2

    .line 112
    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    iget-wide v7, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 121
    .line 122
    cmp-long v2, v7, v9

    .line 123
    .line 124
    if-eqz v2, :cond_3

    .line 125
    div-long/2addr v7, v5

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v7, v8}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->i(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 129
    .line 130
    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->g()Z

    .line 134
    move-result v2

    .line 135
    .line 136
    if-eqz v2, :cond_4

    .line 137
    .line 138
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->j(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 142
    .line 143
    :cond_4
    new-instance v2, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 144
    .line 145
    .line 146
    invoke-direct {v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;-><init>()V

    .line 147
    .line 148
    const-string v4, "CMCD-Request"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v4}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-result-object v4

    .line 153
    .line 154
    check-cast v4, Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->f(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    .line 161
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->b()Z

    .line 162
    move-result v4

    .line 163
    .line 164
    if-nez v4, :cond_5

    .line 165
    .line 166
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->b()Z

    .line 170
    move-result v4

    .line 171
    .line 172
    if-eqz v4, :cond_5

    .line 173
    .line 174
    iget-wide v7, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->bufferedDurationUs:J

    .line 175
    div-long/2addr v7, v5

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v7, v8}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->e(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 179
    .line 180
    :cond_5
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->e()Z

    .line 184
    move-result v4

    .line 185
    .line 186
    if-eqz v4, :cond_6

    .line 187
    .line 188
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 189
    .line 190
    .line 191
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->d()J

    .line 192
    move-result-wide v7

    .line 193
    .line 194
    const-wide/high16 v9, -0x8000000000000000L

    .line 195
    .line 196
    cmp-long v4, v7, v9

    .line 197
    .line 198
    if-eqz v4, :cond_6

    .line 199
    .line 200
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 201
    .line 202
    .line 203
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->d()J

    .line 204
    move-result-wide v7

    .line 205
    .line 206
    .line 207
    invoke-static {v7, v8, v5, v6}, Landroidx/media3/common/util/Util;->m(JJ)J

    .line 208
    move-result-wide v4

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->g(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 212
    .line 213
    :cond_6
    new-instance v4, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 214
    .line 215
    .line 216
    invoke-direct {v4}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;-><init>()V

    .line 217
    .line 218
    const-string v5, "CMCD-Session"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v5}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-result-object v5

    .line 223
    .line 224
    check-cast v5, Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->h(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 228
    move-result-object v4

    .line 229
    .line 230
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->c()Z

    .line 234
    move-result v5

    .line 235
    .line 236
    if-eqz v5, :cond_7

    .line 237
    .line 238
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 239
    .line 240
    iget-object v5, v5, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->contentId:Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->g(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 244
    .line 245
    :cond_7
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->h()Z

    .line 249
    move-result v5

    .line 250
    .line 251
    if-eqz v5, :cond_8

    .line 252
    .line 253
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 254
    .line 255
    iget-object v5, v5, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->sessionId:Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->i(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 259
    .line 260
    :cond_8
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->j()Z

    .line 264
    move-result v5

    .line 265
    .line 266
    if-eqz v5, :cond_9

    .line 267
    .line 268
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->streamingFormat:Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->k(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 272
    .line 273
    :cond_9
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->i()Z

    .line 277
    move-result v5

    .line 278
    .line 279
    if-eqz v5, :cond_b

    .line 280
    .line 281
    iget-boolean v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->isLive:Z

    .line 282
    .line 283
    if-eqz v5, :cond_a

    .line 284
    .line 285
    const-string v5, "l"

    .line 286
    goto :goto_1

    .line 287
    .line 288
    .line 289
    :cond_a
    const-string/jumbo v5, "v"

    .line 290
    .line 291
    .line 292
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->j(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 293
    .line 294
    :cond_b
    new-instance v5, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 295
    .line 296
    .line 297
    invoke-direct {v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;-><init>()V

    .line 298
    .line 299
    const-string v6, "CMCD-Status"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v6}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    move-result-object v0

    .line 304
    .line 305
    check-cast v0, Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->d(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 309
    move-result-object v0

    .line 310
    .line 311
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->d()Z

    .line 315
    move-result v5

    .line 316
    .line 317
    if-eqz v5, :cond_c

    .line 318
    .line 319
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 320
    .line 321
    iget-object v5, v5, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 322
    .line 323
    .line 324
    invoke-interface {v5, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->c(I)I

    .line 325
    move-result v1

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->e(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 329
    .line 330
    .line 331
    :cond_c
    invoke-static {}, Lcom/google/common/collect/b0;->a()Lcom/google/common/collect/b0$a;

    .line 332
    move-result-object v1

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->f()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;

    .line 336
    move-result-object v3

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->a(Lcom/google/common/collect/b0$a;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->d()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;

    .line 343
    move-result-object v2

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;->a(Lcom/google/common/collect/b0$a;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->f()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;

    .line 350
    move-result-object v2

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->a(Lcom/google/common/collect/b0$a;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->c()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;

    .line 357
    move-result-object v0

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;->a(Lcom/google/common/collect/b0$a;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1}, Lcom/google/common/collect/b0$a;->c()Lcom/google/common/collect/b0;

    .line 364
    move-result-object v0

    .line 365
    return-object v0
.end method

.method public d(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 13
    .line 14
    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    .line 15
    return-object p0
.end method

.method public e(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    return-object p0
.end method
