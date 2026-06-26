.class public Lcom/narvii/chat/screenroom/widgets/VideoWatchView;
.super Landroid/widget/FrameLayout;
.source "VideoWatchView.java"


# instance fields
.field private channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method private rebuildUserVideoView(Lcom/narvii/video/ui/UserStatusData;)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    if-ne v0, v1, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 62
    iget-object v0, p1, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;->stripView(Landroid/view/View;)V

    const v0, 0x7f090a88

    .line 63
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 64
    iget-object p1, p1, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public stripView(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    const v1, 0x7f090a88

    if-nez p1, :cond_1

    .line 33
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void

    .line 37
    :cond_1
    iget-object v0, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_4

    .line 40
    iget-object v2, v0, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    if-eqz v2, :cond_4

    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne v1, p1, :cond_3

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, v0, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    if-eq p1, v1, :cond_2

    .line 46
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;->rebuildUserVideoView(Lcom/narvii/video/ui/UserStatusData;)V

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 49
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;->rebuildUserVideoView(Lcom/narvii/video/ui/UserStatusData;)V

    goto :goto_1

    .line 52
    :cond_3
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;->rebuildUserVideoView(Lcom/narvii/video/ui/UserStatusData;)V

    :cond_4
    :goto_1
    return-void
.end method
