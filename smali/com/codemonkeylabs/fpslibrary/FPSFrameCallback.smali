.class public Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;
.super Ljava/lang/Object;
.source "FPSFrameCallback.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

.field private startSampleTimeInNs:J

.field private tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;


# direct methods
.method public constructor <init>(Lcom/codemonkeylabs/fpslibrary/FPSConfig;Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->enabled:Z

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->startSampleTimeInNs:J

    .line 22
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    .line 23
    iput-object p2, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->dataSet:Ljava/util/List;

    return-void
.end method

.method private collectSampleAndSend(J)V
    .locals 3

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->dataSet:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    iget-object v1, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    iget-object v2, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    invoke-virtual {v1, v2, v0}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->showData(Lcom/codemonkeylabs/fpslibrary/FPSConfig;Ljava/util/List;)V

    .line 76
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iput-wide p1, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->startSampleTimeInNs:J

    return-void
.end method

.method private destroy()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    .line 96
    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    return-void
.end method

.method private isFinishedWithSample(J)Z
    .locals 3

    .line 89
    iget-wide v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->startSampleTimeInNs:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    invoke-virtual {v0}, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->getSampleTimeInNs()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public doFrame(J)V
    .locals 7

    .line 35
    iget-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->enabled:Z

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->destroy()V

    return-void

    .line 41
    :cond_0
    iget-wide v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->startSampleTimeInNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 42
    iput-wide p1, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->startSampleTimeInNs:J

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    iget-object v0, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->frameDataCallback:Lcom/codemonkeylabs/fpslibrary/FrameDataCallback;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 48
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    iget v0, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->deviceRefreshRateInMs:F

    invoke-static {v2, v3, p1, p2, v0}, Lcom/codemonkeylabs/fpslibrary/Calculation;->droppedCount(JJF)I

    move-result v6

    .line 49
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    iget-object v1, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->frameDataCallback:Lcom/codemonkeylabs/fpslibrary/FrameDataCallback;

    move-wide v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/codemonkeylabs/fpslibrary/FrameDataCallback;->doFrame(JJI)V

    .line 54
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->isFinishedWithSample(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->collectSampleAndSend(J)V

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->dataSet:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->enabled:Z

    return-void
.end method
