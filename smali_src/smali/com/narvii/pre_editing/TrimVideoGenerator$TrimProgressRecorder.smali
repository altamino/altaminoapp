.class final Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


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


# static fields
.field public static final Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic initTime$default(Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;JLandroid/media/MediaExtractor;Landroid/media/MediaExtractor;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p5, 0x4

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    const/4 p4, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->initTime(JLandroid/media/MediaExtractor;Landroid/media/MediaExtractor;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final getCurrentProgress(IJ)F
    .locals 8

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    if-eq p1, v2, :cond_1

    .line 10
    .line 11
    if-eq p1, v3, :cond_0

    .line 12
    move p3, v1

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    iput-wide p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateAudioPts:J

    .line 16
    .line 17
    iget-wide v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    .line 18
    add-long/2addr v4, p2

    .line 19
    .line 20
    iget-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realVideoStartTime:J

    .line 21
    sub-long/2addr v4, p1

    .line 22
    .line 23
    iget-wide v6, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realAudioStartTime:J

    .line 24
    sub-long/2addr v4, v6

    .line 25
    long-to-float p3, v4

    .line 26
    mul-float/2addr p3, v0

    .line 27
    int-to-long v2, v3

    .line 28
    .line 29
    iget-wide v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->endTime:J

    .line 30
    mul-long/2addr v2, v4

    .line 31
    sub-long/2addr v2, p1

    .line 32
    sub-long/2addr v2, v6

    .line 33
    long-to-float p1, v2

    .line 34
    div-float/2addr p3, p1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    iput-wide p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    .line 38
    .line 39
    iget-wide v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateAudioPts:J

    .line 40
    add-long/2addr p2, v4

    .line 41
    .line 42
    iget-wide v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realVideoStartTime:J

    .line 43
    sub-long/2addr p2, v4

    .line 44
    .line 45
    iget-wide v6, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realAudioStartTime:J

    .line 46
    sub-long/2addr p2, v6

    .line 47
    long-to-float p1, p2

    .line 48
    mul-float/2addr p1, v0

    .line 49
    int-to-long p2, v3

    .line 50
    .line 51
    iget-wide v2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->endTime:J

    .line 52
    mul-long/2addr p2, v2

    .line 53
    sub-long/2addr p2, v4

    .line 54
    sub-long/2addr p2, v6

    .line 55
    :goto_0
    long-to-float p2, p2

    .line 56
    .line 57
    div-float p3, p1, p2

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_2
    iget-wide v2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 64
    move-result-wide p1

    .line 65
    .line 66
    iput-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    .line 67
    .line 68
    iget-wide v2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realVideoStartTime:J

    .line 69
    sub-long/2addr p1, v2

    .line 70
    long-to-float p1, p1

    .line 71
    mul-float/2addr p1, v0

    .line 72
    .line 73
    iget-wide p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->endTime:J

    .line 74
    sub-long/2addr p2, v2

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :goto_1
    const/high16 p1, 0x42c80000    # 100.0f

    .line 78
    .line 79
    cmpl-float p2, p3, p1

    .line 80
    .line 81
    if-ltz p2, :cond_3

    .line 82
    move v1, p1

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_3
    cmpg-float p1, p3, v1

    .line 86
    .line 87
    if-gez p1, :cond_4

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    move v1, p3

    .line 90
    :goto_2
    return v1
.end method

.method public final initTime(JLandroid/media/MediaExtractor;Landroid/media/MediaExtractor;)V
    .locals 2
    .param p3    # Landroid/media/MediaExtractor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/media/MediaExtractor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "videoEx"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realVideoStartTime:J

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 17
    move-result-wide p3

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const-wide/16 p3, 0x0

    .line 21
    .line 22
    :goto_0
    iput-wide p3, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realAudioStartTime:J

    .line 23
    .line 24
    iput-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->endTime:J

    .line 25
    .line 26
    iget-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->realVideoStartTime:J

    .line 27
    .line 28
    iput-wide p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateVideoPts:J

    .line 29
    .line 30
    iput-wide p3, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->lastUpdateAudioPts:J

    .line 31
    return-void
.end method
