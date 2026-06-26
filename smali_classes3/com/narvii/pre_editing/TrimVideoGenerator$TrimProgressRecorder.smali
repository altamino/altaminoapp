.class final Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;
.super Ljava/lang/Object;
.source "TrimVideoGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrimProgressRecorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrimVideoGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrimVideoGenerator.kt\ncom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder\n*L\n1#1,496:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder$Companion;

.field public static final UPDATE_TYPE_AUDIO:I = 0x2

.field public static final UPDATE_TYPE_MIXED:I = 0x0

.field public static final UPDATE_TYPE_VIDEO:I = 0x1


# instance fields
.field private endTime:J

.field private lastUpdateAudioPts:J

.field private lastUpdateVideoPts:J

.field private realAudioStartTime:J

.field private realVideoStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic initTime$default(Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;JLandroid/media/MediaExtractor;Landroid/media/MediaExtractor;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 455
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->initTime(JLandroid/media/MediaExtractor;Landroid/media/MediaExtractor;)V

    return-void
.end method


# virtual methods
.method public final getCurrentProgress(IJ)F
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    .line 476
    :cond_0
    iput-wide p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateAudioPts:J

    .line 477
    iget-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    iget-wide v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateAudioPts:J

    add-long/2addr p1, v4

    iget-wide v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realVideoStartTime:J

    sub-long/2addr p1, v4

    iget-wide v6, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realAudioStartTime:J

    sub-long/2addr p1, v6

    long-to-float p1, p1

    mul-float p1, p1, v1

    int-to-long p2, v3

    .line 478
    iget-wide v1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->endTime:J

    goto :goto_0

    .line 471
    :cond_1
    iput-wide p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    .line 472
    iget-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    iget-wide v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateAudioPts:J

    add-long/2addr p1, v4

    iget-wide v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realVideoStartTime:J

    sub-long/2addr p1, v4

    iget-wide v6, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realAudioStartTime:J

    sub-long/2addr p1, v6

    long-to-float p1, p1

    mul-float p1, p1, v1

    int-to-long p2, v3

    .line 473
    iget-wide v1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->endTime:J

    :goto_0
    mul-long p2, p2, v1

    sub-long/2addr p2, v4

    sub-long/2addr p2, v6

    goto :goto_1

    .line 467
    :cond_2
    iget-wide v2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    .line 468
    iget-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    iget-wide v2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realVideoStartTime:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    mul-float p1, p1, v1

    iget-wide p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->endTime:J

    sub-long/2addr p2, v2

    :goto_1
    long-to-float p2, p2

    div-float/2addr p1, p2

    :goto_2
    const/16 p2, 0x64

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    goto :goto_3

    :cond_4
    move v0, p1

    :goto_3
    return v0
.end method

.method public final initTime(JLandroid/media/MediaExtractor;Landroid/media/MediaExtractor;)V
    .locals 2

    const-string v0, "videoEx"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realVideoStartTime:J

    if-eqz p4, :cond_0

    .line 457
    invoke-virtual {p4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide p3

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    :goto_0
    iput-wide p3, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realAudioStartTime:J

    .line 458
    iput-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->endTime:J

    .line 460
    iget-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realVideoStartTime:J

    iput-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    .line 461
    iget-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realAudioStartTime:J

    iput-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateAudioPts:J

    return-void
.end method
