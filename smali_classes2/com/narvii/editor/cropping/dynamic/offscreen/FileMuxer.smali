.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;
.super Ljava/lang/Object;
.source "FileMuxer.kt"


# static fields
.field public static final INSTANCE:Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;

.field public static final TAG:Ljava/lang/String; = "FileMuxer"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;

    invoke-direct {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;-><init>()V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;->INSTANCE:Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final muxeVideoAndAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "audioPath"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "videoPath"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "destPath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v3, Landroid/media/MediaMuxer;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    const/high16 v2, 0x100000

    .line 17
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 22
    new-instance v5, Landroid/media/MediaExtractor;

    invoke-direct {v5}, Landroid/media/MediaExtractor;-><init>()V

    .line 23
    invoke-virtual {v5, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x2

    const-string v10, "mime"

    const/4 v11, -0x1

    if-ge v7, v6, :cond_1

    .line 25
    invoke-virtual {v5, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    .line 26
    invoke-virtual {v12, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 27
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "audio"

    invoke-static {v12, v13, v4, v9, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    :goto_1
    const-string v6, "FileMuxer"

    if-ne v7, v11, :cond_2

    .line 33
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no audio track : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {v5, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v12, "audioExtractor.getTrackFormat(audioTrackIndex)"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v5, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 37
    invoke-virtual {v3, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    .line 43
    :goto_2
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 44
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_4

    .line 46
    invoke-virtual {v0, v13}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v14

    .line 47
    invoke-virtual {v14, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 48
    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v15, "video/"

    invoke-static {v14, v15, v4, v9, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, -0x1

    :goto_4
    if-ne v13, v11, :cond_5

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no video track: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :cond_5
    invoke-virtual {v0, v13}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 58
    invoke-virtual {v0, v13}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string/jumbo v8, "videoExtractor.getTrackFormat(videoTrackIndex)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    .line 61
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 64
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 65
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v9, 0x0

    .line 66
    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 67
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    :goto_5
    if-lez v11, :cond_6

    .line 69
    iput v11, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 70
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v11

    iput v11, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 71
    iput v4, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 72
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    iput-wide v11, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 73
    invoke-virtual {v3, v6, v2, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 74
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 75
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    goto :goto_5

    .line 79
    :cond_6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 80
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 81
    iput-wide v9, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 82
    invoke-virtual {v5, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    :goto_6
    if-lez v8, :cond_7

    .line 84
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 85
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 86
    iput v4, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 87
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 88
    invoke-virtual {v3, v7, v2, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 89
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    .line 90
    invoke-virtual {v5, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    goto :goto_6

    .line 93
    :cond_7
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 94
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 95
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->stop()V

    .line 96
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_8
    return-void
.end method
