.class Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->j(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/SeekBar;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->f(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayer/INVPlayer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    cmp-long v1, v1, v3

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->f(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayer/INVPlayer;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    .line 38
    move-result-wide v1

    .line 39
    long-to-float v1, v1

    .line 40
    .line 41
    const/high16 v2, 0x42c80000    # 100.0f

    .line 42
    mul-float/2addr v1, v2

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->f(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayer/INVPlayer;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    .line 54
    move-result-wide v2

    .line 55
    long-to-float v2, v2

    .line 56
    div-float/2addr v1, v2

    .line 57
    float-to-int v1, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setCurrentTime()V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setTotalTime()V

    .line 77
    return-void
.end method
