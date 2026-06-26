.class final Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;
.super Ljava/lang/Object;
.source "VideoFrameReader.kt"


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

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->Companion:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo$Companion;

    const/4 v0, 0x1

    .line 268
    sput-boolean v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->KEY_FRAME_ONLY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 261
    iput-wide v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->startNextSyncPts:J

    .line 262
    iput-wide v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->endNextSyncPts:J

    return-void
.end method

.method public static final synthetic access$getACCEPT_KEY_FRAME_IN_RANGE$cp()Z
    .locals 1

    .line 259
    sget-boolean v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->ACCEPT_KEY_FRAME_IN_RANGE:Z

    return v0
.end method

.method public static final synthetic access$getKEY_FRAME_ONLY$cp()Z
    .locals 1

    .line 259
    sget-boolean v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->KEY_FRAME_ONLY:Z

    return v0
.end method

.method public static final synthetic access$setACCEPT_KEY_FRAME_IN_RANGE$cp(Z)V
    .locals 0

    .line 259
    sput-boolean p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->ACCEPT_KEY_FRAME_IN_RANGE:Z

    return-void
.end method

.method public static final synthetic access$setKEY_FRAME_ONLY$cp(Z)V
    .locals 0

    .line 259
    sput-boolean p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->KEY_FRAME_ONLY:Z

    return-void
.end method

.method private final seekToKeyFrameAfter(Landroid/media/MediaExtractor;J)J
    .locals 1

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p1, p2, p3, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 318
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide p1

    return-wide p1
.end method

.method private final seekToKeyFrameBefore(Landroid/media/MediaExtractor;J)J
    .locals 1

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p1, p2, p3, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 323
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public final getFlushDecoder()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    return v0
.end method

.method public final getKeyFrameIsOkay()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    return v0
.end method

.method public final seekTo(JJLandroid/media/MediaExtractor;)V
    .locals 5

    const-string v0, "extractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    sget-boolean v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->KEY_FRAME_ONLY:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p5, p1, p2, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 275
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 276
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    return-void

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-nez v0, :cond_1

    .line 281
    invoke-direct {p0, p5, p3, p4}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekToKeyFrameAfter(Landroid/media/MediaExtractor;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->endNextSyncPts:J

    .line 282
    invoke-direct {p0, p5, p3, p4}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekToKeyFrameBefore(Landroid/media/MediaExtractor;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->startNextSyncPts:J

    .line 283
    invoke-virtual {p5, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 284
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 285
    iput-boolean v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    goto :goto_0

    .line 287
    :cond_1
    iget-wide v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->endNextSyncPts:J

    cmp-long v0, v3, p3

    if-lez v0, :cond_3

    .line 289
    iget-wide p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->startNextSyncPts:J

    invoke-virtual {p5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    cmp-long v0, p3, v3

    if-lez v0, :cond_2

    .line 291
    invoke-direct {p0, p5, p1, p2}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekToKeyFrameBefore(Landroid/media/MediaExtractor;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->startNextSyncPts:J

    .line 292
    iput-boolean v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 293
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    goto :goto_0

    .line 296
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 297
    iput-boolean v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    goto :goto_0

    .line 300
    :cond_3
    invoke-direct {p0, p5, p3, p4}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekToKeyFrameAfter(Landroid/media/MediaExtractor;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->endNextSyncPts:J

    .line 301
    invoke-direct {p0, p5, p3, p4}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->seekToKeyFrameBefore(Landroid/media/MediaExtractor;J)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->startNextSyncPts:J

    .line 303
    sget-boolean p3, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->ACCEPT_KEY_FRAME_IN_RANGE:Z

    if-eqz p3, :cond_4

    .line 304
    invoke-virtual {p5, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 305
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 306
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    goto :goto_0

    .line 308
    :cond_4
    invoke-virtual {p5, p1, p2, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 309
    iput-boolean v2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    .line 310
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    :goto_0
    return-void
.end method

.method public final setFlushDecoder(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->flushDecoder:Z

    return-void
.end method

.method public final setKeyFrameIsOkay(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->keyFrameIsOkay:Z

    return-void
.end method
