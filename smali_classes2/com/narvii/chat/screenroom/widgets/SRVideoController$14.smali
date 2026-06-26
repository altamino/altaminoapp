.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;
.super Ljava/lang/Object;
.source "SRVideoController.java"

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

    .line 953
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 970
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$700(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 979
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$700(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->getDuration()I

    move-result p1

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long v0, v0, p1

    const-wide/16 p1, 0x3e8

    .line 980
    div-long/2addr v0, p1

    .line 981
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$700(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;

    move-result-object p1

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->seekTo(I)V

    .line 982
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->onSeekPositionChangedListener:Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;

    if-eqz p1, :cond_2

    .line 983
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;->onUserSeeked()V

    .line 985
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$1000(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 986
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$1000(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p3, p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$1100(Lcom/narvii/chat/screenroom/widgets/SRVideoController;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 956
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    const v0, 0x36ee80

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    .line 958
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$602(Lcom/narvii/chat/screenroom/widgets/SRVideoController;Z)Z

    .line 965
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$800(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 991
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$602(Lcom/narvii/chat/screenroom/widgets/SRVideoController;Z)Z

    .line 992
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$500(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)I

    .line 993
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 994
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 999
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$800(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
