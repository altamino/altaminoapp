.class public Lcom/codemonkeylabs/fpslibrary/c;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field private fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

.field private startSampleTimeInNs:J

.field private tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/c;


# direct methods
.method public constructor <init>(Lcom/codemonkeylabs/fpslibrary/b;Lcom/codemonkeylabs/fpslibrary/ui/c;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->enabled:Z

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->startSampleTimeInNs:J

    .line 11
    .line 12
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/c;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/codemonkeylabs/fpslibrary/c;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/c;->dataSet:Ljava/util/List;

    .line 22
    return-void
.end method

.method private a(J)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/codemonkeylabs/fpslibrary/c;->dataSet:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/codemonkeylabs/fpslibrary/c;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/codemonkeylabs/fpslibrary/c;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/codemonkeylabs/fpslibrary/ui/c;->g(Lcom/codemonkeylabs/fpslibrary/b;Ljava/util/List;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->dataSet:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    .line 24
    iput-wide p1, p0, Lcom/codemonkeylabs/fpslibrary/c;->startSampleTimeInNs:J

    .line 25
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->dataSet:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 11
    return-void
.end method

.method private c(J)Z
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->startSampleTimeInNs:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/codemonkeylabs/fpslibrary/b;->a()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    cmp-long p1, p1, v0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method


# virtual methods
.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/c;->enabled:Z

    return-void
.end method

.method public doFrame(J)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->enabled:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/codemonkeylabs/fpslibrary/c;->b()V

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->startSampleTimeInNs:J

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/codemonkeylabs/fpslibrary/c;->startSampleTimeInNs:J

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/codemonkeylabs/fpslibrary/c;->c(J)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/codemonkeylabs/fpslibrary/c;->a(J)V

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/c;->dataSet:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 50
    return-void
.end method
