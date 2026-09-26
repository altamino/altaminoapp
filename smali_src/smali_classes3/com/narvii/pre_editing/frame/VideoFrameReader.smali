.class public final Lcom/narvii/pre_editing/frame/VideoFrameReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/frame/VideoFrameReader$Companion;,
        Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;,
        Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;,
        Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/pre_editing/frame/VideoFrameReader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TIMEOUT_USEC:J = 0x2710L


# instance fields
.field private decoder:Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final extractor:Landroid/media/MediaExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private frameToReadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw7/u<",
            "Ljava/lang/Long;",
            "Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isReleased:Z

.field private rangeInfo:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoDuration:J

.field private videoTrackIndex:I

.field private working:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->Companion:Lcom/narvii/pre_editing/frame/VideoFrameReader$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "srcPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    iput v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoDuration:J

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    .line 4
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->findVideoTrackIndex()I

    move-result p1

    iput p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    .line 6
    new-instance p1, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

    invoke-direct {p1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->rangeInfo:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

    iget p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    if-ltz p1, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iget p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    .line 8
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "getTrackFormat(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :try_start_0
    new-instance v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

    invoke-direct {v0, p1, p2}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;-><init>(Landroid/media/MediaFormat;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "VideoFrameReader init error"

    .line 10
    invoke-static {v0, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->decoder:Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

    const-string p2, "durationUs"

    .line 11
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoDuration:J

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0xf0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/pre_editing/frame/VideoFrameReader;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lw7/u;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->pollNextFrame$lambda$0(Lw7/u;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final findVideoTrackIndex()I
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, -0x1

    .line 10
    .line 11
    if-ge v2, v0, :cond_2

    .line 12
    .line 13
    iget-object v4, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    const-string v5, "getTrackFormat(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    const-string v5, "mime"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    return v3

    .line 32
    :cond_0
    const/4 v3, 0x2

    .line 33
    const/4 v5, 0x0

    .line 34
    .line 35
    const-string v6, "video/"

    .line 36
    .line 37
    .line 38
    invoke-static {v4, v6, v1, v3, v5}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    return v2

    .line 43
    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v3
.end method

.method private final getFrame(JJ)Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ltz v0, :cond_5

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->isReleased:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->rangeInfo:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

    .line 13
    .line 14
    iget-object v7, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    .line 15
    move-wide v3, p1

    .line 16
    move-wide v5, p3

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekTo(JJLandroid/media/MediaExtractor;)V

    .line 20
    .line 21
    iget-object p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->rangeInfo:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->getFlushDecoder()Z

    .line 25
    move-result p3

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    iget-object p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->decoder:Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->flush()V

    .line 35
    .line 36
    :cond_1
    iget-object p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->decoder:Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

    .line 37
    .line 38
    if-eqz p3, :cond_5

    .line 39
    .line 40
    :goto_0
    const-wide/16 v0, 0x2710

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v0, v1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->dequeueInputBuffer(J)I

    .line 44
    move-result v3

    .line 45
    .line 46
    if-ltz v3, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v3}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 50
    move-result-object p4

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p4, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 57
    move-result v5

    .line 58
    .line 59
    if-gez v5, :cond_2

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    .line 63
    const-wide/16 v6, 0x0

    .line 64
    const/4 v8, 0x4

    .line 65
    move-object v2, p3

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->queueInputBuffer(IIIJI)V

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    iget-object p4, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    .line 75
    move-result p4

    .line 76
    .line 77
    iget v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    .line 78
    .line 79
    if-ne p4, v0, :cond_3

    .line 80
    .line 81
    iget-object p4, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p4}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 85
    move-result-wide v6

    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    move-object v2, p3

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->queueInputBuffer(IIIJI)V

    .line 92
    .line 93
    iget-object p4, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4}, Landroid/media/MediaExtractor;->advance()Z

    .line 97
    .line 98
    :cond_3
    :goto_1
    iget-object p4, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->rangeInfo:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p4}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->getKeyFrameIsOkay()Z

    .line 102
    move-result p4

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p4, p1, p2}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->tryExtractFrame(ZJ)Z

    .line 106
    move-result p4

    .line 107
    .line 108
    if-nez p4, :cond_4

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {p3}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->getVideoBitmap()Landroid/graphics/Bitmap;

    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_5
    :goto_2
    return-object v1
.end method

.method private final pollNextFrame()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->isReleased:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lw7/u;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lw7/u;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Ljava/lang/Number;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 47
    move-result-wide v1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    const-wide/16 v1, -0x1

    .line 51
    .line 52
    .line 53
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Ljava/lang/Number;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 60
    move-result-wide v3

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v3, v4, v1, v2}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->getFrame(JJ)Landroid/graphics/Bitmap;

    .line 64
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .line 68
    const-string v2, "VideoFrameReader retrieve frame error"

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const/4 v1, 0x0

    .line 73
    .line 74
    :goto_1
    sget-object v2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 75
    .line 76
    new-instance v3, Lcom/narvii/pre_editing/frame/a;

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, v0, v1}, Lcom/narvii/pre_editing/frame/a;-><init>(Lw7/u;Landroid/graphics/Bitmap;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->pollNextFrame()V

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->working:Z

    .line 89
    :goto_2
    return-void
.end method

.method private static final pollNextFrame$lambda$0(Lw7/u;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "$curFrameInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lw7/u;->d()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lw7/u;->c()Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    check-cast p0, Ljava/lang/Number;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    const/16 p0, 0x3e8

    .line 24
    int-to-long v3, p0

    .line 25
    div-long/2addr v1, v3

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1, v2, p1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;->onFrameBitmapLoaded(JLandroid/graphics/Bitmap;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->isReleased:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->decoder:Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->release()V

    .line 21
    :cond_0
    return-void
.end method

.method public final isWorking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->working:Z

    return v0
.end method

.method public final start(Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "timeMsList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "callback"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->working:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Ljava/lang/Number;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    .line 41
    .line 42
    new-instance v3, Lw7/u;

    .line 43
    .line 44
    const/16 v4, 0x3e8

    .line 45
    int-to-long v4, v4

    .line 46
    mul-long/2addr v0, v4

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v0, p2}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->pollNextFrame()V

    .line 61
    return-void
.end method
