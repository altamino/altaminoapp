.class public Lcom/narvii/chat/screenroom/widgets/VideoPlayView;
.super Lcom/narvii/widget/RoundFrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/screenroom/VideoPlayListener;
.implements Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;


# instance fields
.field public addVideoView:Landroid/view/View;

.field buffering:Z

.field private glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

.field public loadingLayout:Landroid/view/View;

.field playList:Lcom/narvii/model/PlayList;

.field screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field public thumbnail:Lcom/narvii/widget/NVImageView;

.field userSeeked:Z

.field videoButtonClickListener:Lcom/narvii/chat/screenroom/VideoButtonClickListener;

.field public videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d0072

    .line 3
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "screenRoom"

    .line 5
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 6
    sget-object v0, Lcom/narvii/amino/R$styleable;->VideoPlayView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0a0f93

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->userSeeked:Z

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget v2, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v2, v4}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget v0, v0, Lcom/narvii/model/PlayListItem;->type:I

    .line 82
    const/4 v2, 0x3

    .line 83
    .line 84
    if-ne v0, v2, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 96
    .line 97
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v2, v4}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 108
    .line 109
    const/16 v2, 0x8

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->addVideoView:Landroid/view/View;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 124
    move-result v2

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 130
    .line 131
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    .line 138
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 139
    move-result v2

    .line 140
    xor-int/2addr v2, v3

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 144
    .line 145
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->buffering:Z

    .line 146
    const/4 v2, 0x4

    .line 147
    .line 148
    if-eqz v0, :cond_3

    .line 149
    .line 150
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 151
    .line 152
    if-eqz v0, :cond_3

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    if-eqz v0, :cond_3

    .line 159
    .line 160
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 161
    .line 162
    iget v0, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 163
    const/4 v3, 0x2

    .line 164
    .line 165
    if-ne v0, v3, :cond_3

    .line 166
    .line 167
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isShowing()Z

    .line 171
    move-result v0

    .line 172
    .line 173
    if-nez v0, :cond_3

    .line 174
    .line 175
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->loadingLayout:Landroid/view/View;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 181
    .line 182
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playButtonsLayout:Landroid/view/View;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 191
    goto :goto_1

    .line 192
    .line 193
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->loadingLayout:Landroid/view/View;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playButtonsLayout:Landroid/view/View;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :goto_1
    return-void
.end method


# virtual methods
.method public onBuffering(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->buffering:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->updateViews()V

    .line 6
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0822

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->loadingLayout:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0e77

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0f7b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->addControllerVisibleChangeListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0a00a5

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->addVideoView:Landroid/view/View;

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/VideoPlayView$1;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView$1;-><init>(Lcom/narvii/chat/screenroom/widgets/VideoPlayView;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;ZZ)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->updateViews()V

    .line 6
    return-void
.end method

.method public onUserSeeked(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->userSeeked:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->updateViews()V

    .line 6
    return-void
.end method

.method public onVideoControllerVisibleChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->updateViews()V

    .line 4
    return-void
.end method

.method public setGlVideoView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0a061d

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setMediaController(Lcom/narvii/chat/screenroom/widgets/VideoController;)V

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 33
    :cond_0
    return-void
.end method

.method public setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoButtonClickListener:Lcom/narvii/chat/screenroom/VideoButtonClickListener;

    return-void
.end method
