.class public Lcom/narvii/model/CurrentQuizzesResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODE_HELL:I = 0x1

.field public static final MODE_NORMAL:I


# instance fields
.field public beatRate:F

.field public hellIsFinished:Z

.field public highestMode:I

.field public highestScore:I

.field public isFinished:Z

.field public lastBeatRate:F

.field public latestMode:I

.field public latestScore:I

.field public totalTimes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getCurBeatRate()I
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x42c80000    # 100.0f

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/model/CurrentQuizzesResult;->beatRate:F

    .line 5
    mul-float/2addr v1, v0

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 9
    move-result v0

    .line 10
    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    move v0, v1

    .line 15
    .line 16
    :cond_0
    if-gez v0, :cond_1

    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_1
    return v0
.end method

.method public getLastBeatRate()I
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x42c80000    # 100.0f

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/model/CurrentQuizzesResult;->lastBeatRate:F

    .line 5
    mul-float/2addr v1, v0

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 9
    move-result v0

    .line 10
    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    move v0, v1

    .line 15
    .line 16
    :cond_0
    if-gez v0, :cond_1

    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_1
    return v0
.end method
