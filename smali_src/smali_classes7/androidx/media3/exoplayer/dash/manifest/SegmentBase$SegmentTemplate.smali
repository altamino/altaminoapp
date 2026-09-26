.class public final Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;
.super Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentTemplate"
.end annotation


# instance fields
.field final endNumber:J

.field final initializationTemplate:Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mediaTemplate:Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJJLjava/util/List;JLandroidx/media3/exoplayer/dash/manifest/UrlTemplate;Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;JJ)V
    .locals 17
    .param p12    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/dash/manifest/RangedUri;",
            "JJJJJ",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;",
            "Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;",
            "JJ)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    move-wide/from16 v2, p2

    .line 9
    .line 10
    move-wide/from16 v4, p4

    .line 11
    .line 12
    move-wide/from16 v6, p6

    .line 13
    .line 14
    move-wide/from16 v8, p10

    .line 15
    .line 16
    move-object/from16 v10, p12

    .line 17
    .line 18
    move-wide/from16 v11, p13

    .line 19
    .line 20
    move-wide/from16 v13, p17

    .line 21
    .line 22
    move-wide/from16 v15, p19

    .line 23
    .line 24
    .line 25
    invoke-direct/range {v0 .. v16}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;-><init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V

    .line 26
    .line 27
    move-object/from16 v1, p15

    .line 28
    .line 29
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    .line 30
    .line 31
    move-object/from16 v1, p16

    .line 32
    .line 33
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    .line 34
    .line 35
    move-wide/from16 v1, p8

    .line 36
    .line 37
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->endNumber:J

    .line 38
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/dash/manifest/Representation;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/media3/exoplayer/dash/manifest/Representation;->format:Landroidx/media3/common/Format;

    .line 7
    .line 8
    iget-object v1, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    iget v4, p1, Landroidx/media3/common/Format;->bitrate:I

    .line 13
    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->a(Ljava/lang/String;JIJ)Ljava/lang/String;

    .line 18
    move-result-object v8

    .line 19
    .line 20
    new-instance p1, Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 21
    .line 22
    const-wide/16 v9, 0x0

    .line 23
    .line 24
    const-wide/16 v11, -0x1

    .line 25
    move-object v7, p1

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v7 .. v12}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 29
    return-object p1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->a(Landroidx/media3/exoplayer/dash/manifest/Representation;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public g(J)J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result p1

    .line 9
    int-to-long p1, p1

    .line 10
    return-wide p1

    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->endNumber:J

    .line 13
    .line 14
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    iget-wide p1, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 21
    sub-long/2addr v0, p1

    .line 22
    .line 23
    const-wide/16 p1, 0x1

    .line 24
    add-long/2addr v0, p1

    .line 25
    return-wide v0

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    cmp-long v0, p1, v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    const-wide/32 v0, 0xf4240

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2, v0}, Lcom/google/common/math/a;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    .line 75
    move-result-wide p1

    .line 76
    return-wide p1

    .line 77
    :cond_2
    return-wide v2
.end method

.method public k(Landroidx/media3/exoplayer/dash/manifest/Representation;J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-wide v2, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 8
    .line 9
    sub-long v2, p2, v2

    .line 10
    long-to-int v2, v2

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    .line 17
    .line 18
    iget-wide v1, v1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    .line 19
    :goto_0
    move-wide v6, v1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    iget-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 23
    .line 24
    sub-long v1, p2, v1

    .line 25
    .line 26
    iget-wide v3, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 27
    mul-long/2addr v1, v3

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :goto_1
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    .line 31
    move-object v2, p1

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/media3/exoplayer/dash/manifest/Representation;->format:Landroidx/media3/common/Format;

    .line 34
    .line 35
    iget-object v3, v2, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 36
    .line 37
    iget v5, v2, Landroidx/media3/common/Format;->bitrate:I

    .line 38
    move-object v2, v3

    .line 39
    .line 40
    move-wide/from16 v3, p2

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->a(Ljava/lang/String;JIJ)Ljava/lang/String;

    .line 44
    move-result-object v9

    .line 45
    .line 46
    new-instance v1, Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 47
    .line 48
    const-wide/16 v10, 0x0

    .line 49
    .line 50
    const-wide/16 v12, -0x1

    .line 51
    move-object v8, v1

    .line 52
    .line 53
    .line 54
    invoke-direct/range {v8 .. v13}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 55
    return-object v1
.end method
