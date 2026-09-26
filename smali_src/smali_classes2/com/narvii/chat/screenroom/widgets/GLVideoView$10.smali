.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->A(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p4}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->y(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->o(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x3

    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v0

    .line 25
    .line 26
    :goto_0
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->r(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 30
    move-result p2

    .line 31
    .line 32
    if-ne p2, p3, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->q(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 38
    move-result p2

    .line 39
    .line 40
    if-ne p2, p4, :cond_1

    .line 41
    move v0, v1

    .line 42
    .line 43
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->f(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->l(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 59
    move-result p1

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->l(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 67
    move-result p2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->seekTo(I)V

    .line 71
    .line 72
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    .line 76
    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->z(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Landroid/view/SurfaceHolder;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->E(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    .line 11
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->z(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Landroid/view/SurfaceHolder;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->hide()V

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->F(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V

    .line 30
    return-void
.end method
