.class public Lcom/codemonkeylabs/fpslibrary/FPSConfig;
.super Ljava/lang/Object;
.source "FPSConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static DEFAULT_GRAVITY:I = 0x800033


# instance fields
.field public deviceRefreshRateInMs:F

.field public frameDataCallback:Lcom/codemonkeylabs/fpslibrary/FrameDataCallback;

.field public gravitySpecified:Z

.field public redFlagPercentage:F

.field public refreshRate:F

.field public final sampleTimeInMs:J

.field public startingGravity:I

.field public startingXPosition:I

.field public startingYPosition:I

.field public xOrYSpecified:Z

.field public yellowFlagPercentage:F


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 15
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->redFlagPercentage:F

    const v0, 0x3d4ccccd    # 0.05f

    .line 16
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->yellowFlagPercentage:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 17
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->refreshRate:F

    const v0, 0x4184cccd    # 16.6f

    .line 18
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->deviceRefreshRateInMs:F

    const/16 v0, 0xc8

    .line 21
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->startingXPosition:I

    const/16 v0, 0x258

    .line 22
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->startingYPosition:I

    .line 23
    sget v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->DEFAULT_GRAVITY:I

    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->startingGravity:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->xOrYSpecified:Z

    .line 25
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->gravitySpecified:Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->frameDataCallback:Lcom/codemonkeylabs/fpslibrary/FrameDataCallback;

    const-wide/16 v0, 0x2e0

    .line 32
    iput-wide v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->sampleTimeInMs:J

    return-void
.end method


# virtual methods
.method public getSampleTimeInNs()J
    .locals 4

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2e0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
