.class Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;
.super Landroid/app/SharedElementCallback;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 6
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 6
    .line 7
    iget-object p2, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    iget p2, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 12
    const/4 p3, -0x1

    .line 13
    .line 14
    if-eq p2, p3, :cond_2

    .line 15
    .line 16
    iget-object p3, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 20
    move-result v0

    .line 21
    sub-int/2addr p2, v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3, p2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    sget p2, Lcom/narvii/lib/R$id;->video_tag_media:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 39
    .line 40
    iget-object p2, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    const/4 p2, 0x1

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 56
    .line 57
    iget-object p3, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 58
    .line 59
    iget-object v0, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 60
    .line 61
    iget-object v1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p3, v0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 67
    .line 68
    iget-object p3, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 69
    .line 70
    .line 71
    invoke-interface {p3, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->shouldPlay()Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, p2, p2}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(ZZ)V

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_1
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 90
    .line 91
    iget-object p3, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    .line 94
    .line 95
    .line 96
    invoke-interface {p3, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 99
    .line 100
    iget-object p3, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 101
    .line 102
    .line 103
    invoke-interface {p3, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->shouldPlay()Z

    .line 109
    move-result p1

    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 119
    nop

    .line 120
    :cond_2
    :goto_0
    return-void
.end method
