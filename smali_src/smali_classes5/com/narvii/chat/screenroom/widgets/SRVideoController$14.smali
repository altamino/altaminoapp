.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->c(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    if-nez p3, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->c(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->getDuration()I

    .line 22
    move-result p1

    .line 23
    int-to-long v0, p1

    .line 24
    int-to-long p1, p2

    .line 25
    mul-long/2addr v0, p1

    .line 26
    .line 27
    const-wide/16 p1, 0x3e8

    .line 28
    div-long/2addr v0, p1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->c(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 34
    move-result-object p1

    .line 35
    long-to-int p2, v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, p2}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->seekTo(I)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->onSeekPositionChangedListener:Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;->onUserSeeked()V

    .line 48
    .line 49
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->a(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/TextView;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->a(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/TextView;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iget-object p3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 64
    .line 65
    .line 66
    invoke-static {p3, p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->k(Lcom/narvii/chat/screenroom/widgets/SRVideoController;I)Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    .line 5
    const v0, 0x36ee80

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->g(Lcom/narvii/chat/screenroom/widgets/SRVideoController;Z)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->e(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Ljava/lang/Runnable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->g(Lcom/narvii/chat/screenroom/widgets/SRVideoController;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->j(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->e(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Ljava/lang/Runnable;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method
