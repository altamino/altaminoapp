.class final Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/frame/VideoFrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameRangeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo$Companion;
    }
.end annotation


# static fields
.field private static ACCEPT_KEY_FRAME_IN_RANGE:Z

.field public static final Companion:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static KEY_FRAME_ONLY:Z


# instance fields
.field private endNextSyncPts:J

.field private flushDecoder:Z

.field private keyFrameIsOkay:Z

.field private startNextSyncPts:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->Companion:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo$Companion;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->KEY_FRAME_ONLY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->startNextSyncPts:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->endNextSyncPts:J

    .line 10
    return-void
.end method

.method public static final synthetic access$getACCEPT_KEY_FRAME_IN_RANGE$cp()Z
    .locals 1

    sget-boolean v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->ACCEPT_KEY_FRAME_IN_RANGE:Z

    return v0
.end method

.method public static final synthetic access$getKEY_FRAME_ONLY$cp()Z
    .locals 1

    sget-boolean v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->KEY_FRAME_ONLY:Z

    return v0
.end method

.method public static final synthetic access$setACCEPT_KEY_FRAME_IN_RANGE$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->ACCEPT_KEY_FRAME_IN_RANGE:Z

    return-void
.end method

.method public static final synthetic access$setKEY_FRAME_ONLY$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->KEY_FRAME_ONLY:Z

    return-void
.end method

.method private final seekToKeyFrameAfter(Landroid/media/MediaExtractor;J)J
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2, p3, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method private final seekToKeyFrameBefore(Landroid/media/MediaExtractor;J)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2, p3, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method


# virtual methods
.method public final getFlushDecoder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    return v0
.end method

.method public final getKeyFrameIsOkay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    return v0
.end method

.method public final seekTo(JJLandroid/media/MediaExtractor;)V
    .locals 5
    .param p5    # Landroid/media/MediaExtractor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "extractor"

    .line 3
    .line 4
    .line 5
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-boolean v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->KEY_FRAME_ONLY:Z

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5, p1, p2, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    cmp-long v0, p1, v3

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p5, p3, p4}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekToKeyFrameAfter(Landroid/media/MediaExtractor;J)J

    .line 29
    move-result-wide p1

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->endNextSyncPts:J

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p5, p3, p4}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekToKeyFrameBefore(Landroid/media/MediaExtractor;J)J

    .line 35
    move-result-wide p1

    .line 36
    .line 37
    iput-wide p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->startNextSyncPts:J

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    iget-wide v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->endNextSyncPts:J

    .line 48
    .line 49
    cmp-long v0, v3, p3

    .line 50
    .line 51
    if-lez v0, :cond_3

    .line 52
    .line 53
    iget-wide p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->startNextSyncPts:J

    .line 54
    .line 55
    .line 56
    invoke-virtual {p5}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 57
    move-result-wide v3

    .line 58
    .line 59
    cmp-long p3, p3, v3

    .line 60
    .line 61
    if-lez p3, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p5, p1, p2}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekToKeyFrameBefore(Landroid/media/MediaExtractor;J)J

    .line 65
    move-result-wide p1

    .line 66
    .line 67
    iput-wide p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->startNextSyncPts:J

    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 70
    .line 71
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-direct {p0, p5, p3, p4}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekToKeyFrameAfter(Landroid/media/MediaExtractor;J)J

    .line 81
    move-result-wide v3

    .line 82
    .line 83
    iput-wide v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->endNextSyncPts:J

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p5, p3, p4}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekToKeyFrameBefore(Landroid/media/MediaExtractor;J)J

    .line 87
    move-result-wide p3

    .line 88
    .line 89
    iput-wide p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->startNextSyncPts:J

    .line 90
    .line 91
    sget-boolean p3, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->ACCEPT_KEY_FRAME_IN_RANGE:Z

    .line 92
    .line 93
    if-eqz p3, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-virtual {p5, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-virtual {p5, p1, p2, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 105
    .line 106
    iput-boolean v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 107
    .line 108
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    .line 109
    :goto_0
    return-void
.end method

.method public final setFlushDecoder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    return-void
.end method

.method public final setKeyFrameIsOkay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    return-void
.end method
