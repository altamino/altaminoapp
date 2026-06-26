.class Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;
.super Landroid/app/SharedElementCallback;
.source "NVVideoListDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->setExitSharedElementCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 755
    invoke-super {p0, p1, p2, p3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 756
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p2, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    if-eqz p2, :cond_2

    iget p2, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    .line 757
    iget-object p3, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {p3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p3, p2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 758
    sget p2, Lcom/narvii/lib/R$id;->video_tag_media:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p2, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object p1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 762
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p3, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iget-object v0, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, p3, v0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 763
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p3, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p3, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 764
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->shouldPlay()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 765
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p2, p2}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(ZZ)V

    goto :goto_0

    .line 768
    :cond_1
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p3, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iget-object p1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    invoke-interface {p3, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 769
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p3, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p3, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 770
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->shouldPlay()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 771
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object p1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    nop

    :cond_2
    :goto_0
    return-void
.end method
