.class public Lcom/codemonkeylabs/fpslibrary/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static DEFAULT_GRAVITY:I = 0x800033


# instance fields
.field public deviceRefreshRateInMs:F

.field public frameDataCallback:Lcom/codemonkeylabs/fpslibrary/e;

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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x3e4ccccd    # 0.2f

    .line 7
    .line 8
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/b;->redFlagPercentage:F

    .line 9
    .line 10
    .line 11
    const v0, 0x3d4ccccd    # 0.05f

    .line 12
    .line 13
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/b;->yellowFlagPercentage:F

    .line 14
    .line 15
    const/high16 v0, 0x42700000    # 60.0f

    .line 16
    .line 17
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/b;->refreshRate:F

    .line 18
    .line 19
    .line 20
    const v0, 0x4184cccd    # 16.6f

    .line 21
    .line 22
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/b;->deviceRefreshRateInMs:F

    .line 23
    .line 24
    const/16 v0, 0xc8

    .line 25
    .line 26
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/b;->startingXPosition:I

    .line 27
    .line 28
    const/16 v0, 0x258

    .line 29
    .line 30
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/b;->startingYPosition:I

    .line 31
    .line 32
    sget v0, Lcom/codemonkeylabs/fpslibrary/b;->DEFAULT_GRAVITY:I

    .line 33
    .line 34
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/b;->startingGravity:I

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/b;->xOrYSpecified:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/b;->gravitySpecified:Z

    .line 40
    .line 41
    const-wide/16 v0, 0x2e0

    .line 42
    .line 43
    iput-wide v0, p0, Lcom/codemonkeylabs/fpslibrary/b;->sampleTimeInMs:J

    .line 44
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    .line 4
    const-wide/16 v1, 0x2e0

    .line 5
    .line 6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method
