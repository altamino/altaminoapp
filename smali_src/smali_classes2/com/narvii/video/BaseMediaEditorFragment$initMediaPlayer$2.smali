.class public final Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;
.super Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment;->initMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->onDoNextVideoSeek$lambda$1(Lcom/narvii/video/BaseMediaEditorFragment;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->onDoNextVideoSeek$lambda$0(Lcom/narvii/video/BaseMediaEditorFragment;)V

    return-void
.end method

.method private static final onDoNextVideoSeek$lambda$0(Lcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getSeekRequestQueue()Ljava/util/LinkedList;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    xor-int/2addr v0, v1

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getSeekRequestQueue()Ljava/util/LinkedList;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v5

    .line 46
    .line 47
    if-ne v5, v2, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getDragging()Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    const/4 v0, 0x2

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v4, v4, v0, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    invoke-static {p0, v4, v0, v1, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->seekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    .line 78
    :cond_2
    :goto_1
    return-void
.end method

.method private static final onDoNextVideoSeek$lambda$1(Lcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getDragging()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public onAudioTrackAllPrepared()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onAudioTrackAllPrepared()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->access$setHasAudioPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x2

    .line 27
    const/4 v4, 0x0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->access$getHasVideoPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v4, v4, v3, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1, v4, v3, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 49
    :goto_0
    return-void
.end method

.method public onDoNextVideoSeek()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onDoNextVideoSeek()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->access$getControllerActive$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getSeekRequestQueue()Ljava/util/LinkedList;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    move-result v0

    .line 31
    xor-int/2addr v0, v1

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 41
    .line 42
    new-instance v2, Lcom/narvii/video/u;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v0}, Lcom/narvii/video/u;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 52
    .line 53
    new-instance v2, Lcom/narvii/video/v;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v0}, Lcom/narvii/video/v;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    sget v2, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v0, 0x0

    .line 78
    .line 79
    :goto_1
    if-eqz v0, :cond_5

    .line 80
    .line 81
    iget-object v2, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {v2}, Lcom/narvii/video/BaseMediaEditorFragment;->access$getControllerActive$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z

    .line 85
    move-result v3

    .line 86
    .line 87
    if-nez v3, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    .line 91
    move-result v3

    .line 92
    .line 93
    if-nez v3, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    .line 97
    move-result v3

    .line 98
    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurRecyclerViewState()I

    .line 103
    move-result v0

    .line 104
    .line 105
    if-ne v0, v1, :cond_3

    .line 106
    goto :goto_2

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {v2}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->unMute()V

    .line 114
    const/4 v0, 0x0

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->access$setMute$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V

    .line 118
    goto :goto_3

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->pauseWhenNextSeek()Z

    .line 126
    move-result v0

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->pause()V

    .line 136
    :cond_5
    :goto_3
    return-void
.end method

.method public onVideoError(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onVideoError(Ljava/lang/Exception;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v2, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    .line 12
    return-void
.end method

.method public onVideoPrepared()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onVideoPrepared()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->access$setHasVideoPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->innerOnVideoPrepared()V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    return-void

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x2

    .line 41
    const/4 v4, 0x0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->access$getHasAudioPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v4, v4, v3, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1, v4, v3, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 63
    :goto_0
    return-void
.end method

.method public onVideoWindowIndexChanged(IZ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onVideoWindowIndexChanged(IZ)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onActiveVideoChanged(IZ)V

    .line 9
    return-void
.end method
