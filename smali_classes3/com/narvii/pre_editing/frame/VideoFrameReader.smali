.class public final Lcom/narvii/pre_editing/frame/VideoFrameReader;
.super Ljava/lang/Object;
.source "VideoFrameReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;,
        Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;,
        Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;,
        Lcom/narvii/pre_editing/frame/VideoFrameReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoFrameReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoFrameReader.kt\ncom/narvii/pre_editing/frame/VideoFrameReader\n*L\n1#1,326:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/pre_editing/frame/VideoFrameReader$Companion;

.field private static final TIMEOUT_USEC:J = 0x2710L


# instance fields
.field private decoder:Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

.field private final extractor:Landroid/media/MediaExtractor;

.field private frameToReadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private isReleased:Z

.field private rangeInfo:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

.field private videoDuration:J

.field private videoTrackIndex:I

.field private working:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->Companion:Lcom/narvii/pre_editing/frame/VideoFrameReader$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "srcPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoDuration:J

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->findVideoTrackIndex()I

    move-result p1

    iput p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    .line 38
    new-instance p1, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

    invoke-direct {p1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->rangeInfo:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

    .line 39
    iget p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    if-ltz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 41
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    iget v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    .line 43
    :try_start_0
    new-instance v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

    const-string v1, "format"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;-><init>(Landroid/media/MediaFormat;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "VideoFrameReader init error"

    .line 46
    invoke-static {v0, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 42
    :goto_0
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->decoder:Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

    const-string p2, "durationUs"

    .line 49
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoDuration:J

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0xf0

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/pre_editing/frame/VideoFrameReader;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private final findVideoTrackIndex()I
    .locals 7

    .line 147
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 148
    iget-object v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    .line 149
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "video/"

    invoke-static {v3, v6, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private final getFrame(JJ)Landroid/graphics/Bitmap;
    .locals 9

    .line 103
    iget v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_5

    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->isReleased:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->rangeInfo:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

    iget-object v7, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekTo(JJLandroid/media/MediaExtractor;)V

    .line 108
    iget-object p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->rangeInfo:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

    invoke-virtual {p3}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->getFlushDecoder()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 109
    iget-object p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->decoder:Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->flush()V

    .line 112
    :cond_1
    iget-object p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->decoder:Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

    if-eqz p3, :cond_5

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    const-wide/16 v0, 0x2710

    .line 118
    invoke-virtual {p3, v0, v1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->dequeueInputBuffer(J)I

    move-result v3

    if-ltz v3, :cond_3

    .line 120
    invoke-virtual {p3, v3}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0, p4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-gez v5, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    move-object v2, p3

    .line 125
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    iget v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->videoTrackIndex:I

    if-ne v0, v1, :cond_3

    .line 129
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, p3

    .line 130
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->queueInputBuffer(IIIJI)V

    .line 131
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 139
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->rangeInfo:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;

    invoke-virtual {v0}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->getKeyFrameIsOkay()Z

    move-result v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->tryExtractFrame(ZJ)Z

    move-result v0

    goto :goto_0

    .line 141
    :cond_4
    invoke-virtual {p3}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->getVideoBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object v1
.end method

.method private final pollNextFrame()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->isReleased:Z

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 79
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 85
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->getFrame(JJ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "VideoFrameReader retrieve frame error"

    .line 89
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 92
    :goto_1
    sget-object v2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/narvii/pre_editing/frame/VideoFrameReader$pollNextFrame$1;

    invoke-direct {v3, v0, v1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$pollNextFrame$1;-><init>(Lkotlin/Pair;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->pollNextFrame()V

    goto :goto_2

    .line 97
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->working:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->isReleased:Z

    .line 66
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->decoder:Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->release()V

    :cond_0
    return-void
.end method

.method public final isWorking()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->working:Z

    return v0
.end method

.method public final start(Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
    .locals 6
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

    const-string v0, "timeMsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->working:Z

    .line 56
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 58
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader;->frameToReadList:Ljava/util/List;

    new-instance v3, Lkotlin/Pair;

    const/16 v4, 0x3e8

    int-to-long v4, v4

    mul-long v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->pollNextFrame()V

    :cond_1
    return-void
.end method
