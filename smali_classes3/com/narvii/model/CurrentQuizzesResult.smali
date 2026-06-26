.class public Lcom/narvii/model/CurrentQuizzesResult;
.super Ljava/lang/Object;
.source "CurrentQuizzesResult.java"


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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurBeatRate()I
    .locals 2

    .line 24
    iget v0, p0, Lcom/narvii/model/CurrentQuizzesResult;->beatRate:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getLastBeatRate()I
    .locals 2

    .line 32
    iget v0, p0, Lcom/narvii/model/CurrentQuizzesResult;->lastBeatRate:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method
