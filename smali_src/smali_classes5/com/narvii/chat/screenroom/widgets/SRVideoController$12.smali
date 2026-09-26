.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

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
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->j(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->b(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->f(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->c(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->c(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->e(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Ljava/lang/Runnable;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    rem-int/lit16 v0, v0, 0x3e8

    .line 51
    .line 52
    rsub-int v0, v0, 0x3e8

    .line 53
    int-to-long v3, v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    :cond_0
    return-void
.end method
