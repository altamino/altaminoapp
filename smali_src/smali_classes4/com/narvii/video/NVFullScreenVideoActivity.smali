.class public Lcom/narvii/video/NVFullScreenVideoActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nvplayer/IVideoListener;
.implements Lcom/narvii/nvplayerview/ISurfaceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoFullScreen"


# instance fields
.field private animating:Z

.field private mPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field private mSurface:Landroid/view/Surface;

.field private mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

.field private mVideoView:Lcom/narvii/nvplayerview/NVVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    return-void
.end method

.method private getAttachedObject()Lcom/narvii/model/NVObject;
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "parentClass"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Class;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    const-string v2, "parent"

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 36
    return-object v0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/model/NVObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    return-object v0

    .line 48
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 49
    return-object v0
.end method

.method public static intent(Lcom/narvii/model/Media;)Landroid/content/Intent;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 4
    iget-object v2, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "thumbUrl"

    .line 5
    iget-object v2, p0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "title"

    .line 6
    iget-object p0, p0, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)Landroid/content/Intent;
    .locals 2

    .line 7
    invoke-static {p0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media"

    .line 8
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "parent"

    .line 9
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    instance-of p0, p1, Lcom/narvii/model/Feed;

    const-string v1, "parentClass"

    if-eqz p0, :cond_0

    const-class p0, Lcom/narvii/model/Feed;

    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 12
    :cond_0
    instance-of p0, p1, Lcom/narvii/model/SharedFile;

    if-eqz p0, :cond_1

    const-class p0, Lcom/narvii/model/SharedFile;

    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 14
    :cond_1
    instance-of p0, p1, Lcom/narvii/model/ChatMessage;

    if-eqz p0, :cond_2

    const-class p0, Lcom/narvii/model/ChatMessage;

    .line 15
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 16
    :cond_2
    instance-of p0, p1, Lcom/narvii/model/Comment;

    if-eqz p0, :cond_3

    const-class p0, Lcom/narvii/model/Comment;

    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 18
    :cond_3
    instance-of p0, p1, Lcom/narvii/model/User;

    if-eqz p0, :cond_4

    const-class p0, Lcom/narvii/model/User;

    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/model/NVObject;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 20
    invoke-static {p0, p1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 21
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "clz"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public static intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "clz"

    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static intent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-class v2, Lcom/narvii/video/NVFullScreenVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "video_play"

    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->onPressBack()V

    .line 6
    return-void
.end method

.method public synthetic onCachedBytesRead(JJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/b;->a(Lcom/narvii/nvplayer/IVideoListener;JJ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 3
    .line 4
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/controller/IVideoController;->onOrientationChanged(I)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/nvplayerview/NVVideoView;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 11
    .line 12
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 13
    const/4 v1, -0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "scale_type"

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 36
    move-result v0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Lcom/narvii/nvplayerview/NVVideoView;->setScaleType(I)V

    .line 42
    .line 43
    const-string v0, "ratio"

    .line 44
    .line 45
    const/high16 v2, -0x40800000    # -1.0f

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 49
    move-result v3

    .line 50
    .line 51
    iget-object v4, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p0}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 60
    .line 61
    iget-object v3, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 65
    move-result v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v0}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v2, p0, v3}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;-><init>(Lcom/narvii/nvplayerview/NVVideoView;Landroid/content/Context;Lcom/narvii/nvplayer/INVPlayer;)V

    .line 78
    .line 79
    iput-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->init()V

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 85
    .line 86
    .line 87
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 88
    move-result-object v0

    .line 89
    const/4 v2, 0x0

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 100
    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 113
    move-result v0

    .line 114
    .line 115
    if-nez v0, :cond_0

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 119
    .line 120
    .line 121
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    check-cast v0, Lcom/narvii/model/Media;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 133
    goto :goto_1

    .line 134
    :cond_1
    :goto_0
    move-object v0, v2

    .line 135
    .line 136
    .line 137
    :goto_1
    const-string/jumbo v3, "url"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    const-string v3, "animating"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v3, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 147
    move-result v1

    .line 148
    .line 149
    iput-boolean v1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->animating:Z

    .line 150
    .line 151
    if-eqz v1, :cond_3

    .line 152
    .line 153
    .line 154
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 155
    move-result v0

    .line 156
    .line 157
    if-eqz v0, :cond_3

    .line 158
    .line 159
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 160
    .line 161
    if-eqz v0, :cond_3

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->isError()Z

    .line 165
    move-result v0

    .line 166
    .line 167
    if-nez v0, :cond_3

    .line 168
    .line 169
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 170
    .line 171
    if-eqz p1, :cond_2

    .line 172
    .line 173
    .line 174
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    if-eqz p1, :cond_2

    .line 178
    .line 179
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 180
    .line 181
    .line 182
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p0}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 187
    .line 188
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 189
    .line 190
    .line 191
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    .line 195
    invoke-direct {p0}, Lcom/narvii/video/NVFullScreenVideoActivity;->getAttachedObject()Lcom/narvii/model/NVObject;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 200
    .line 201
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 202
    .line 203
    .line 204
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/narvii/nvplayer/VideoLogHelper;->resetIds()V

    .line 209
    .line 210
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getRenderView()Lcom/narvii/nvplayerview/IRenderView;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    check-cast p1, Landroid/view/View;

    .line 217
    .line 218
    const-string v0, "renderView"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 222
    .line 223
    new-instance p1, Lcom/narvii/util/DetailTransition;

    .line 224
    .line 225
    .line 226
    invoke-direct {p1}, Lcom/narvii/util/DetailTransition;-><init>()V

    .line 227
    .line 228
    const-wide/16 v0, 0x12c

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 235
    move-result-object v0

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, p1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, p1}, Landroid/view/Window;->setSharedElementExitTransition(Landroid/transition/Transition;)V

    .line 246
    .line 247
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 248
    .line 249
    .line 250
    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 251
    .line 252
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 253
    const/4 v0, 0x1

    .line 254
    .line 255
    .line 256
    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->setAnimating(Z)V

    .line 257
    goto :goto_3

    .line 258
    .line 259
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 260
    .line 261
    .line 262
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->reset()V

    .line 263
    .line 264
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 265
    .line 266
    .line 267
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->clearVideoSurface()V

    .line 268
    .line 269
    new-instance v0, Lcom/narvii/nvplayer/NVMediaSource;

    .line 270
    .line 271
    .line 272
    invoke-direct {v0}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 273
    .line 274
    new-instance v1, Ljava/util/ArrayList;

    .line 275
    .line 276
    .line 277
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 280
    .line 281
    const-string v1, "media"

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    move-result-object v1

    .line 286
    .line 287
    const-class v3, Lcom/narvii/model/Media;

    .line 288
    .line 289
    .line 290
    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 291
    move-result-object v1

    .line 292
    .line 293
    check-cast v1, Lcom/narvii/model/Media;

    .line 294
    .line 295
    if-eqz v1, :cond_4

    .line 296
    .line 297
    iget-object p1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 298
    .line 299
    .line 300
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    goto :goto_2

    .line 302
    .line 303
    :cond_4
    new-instance v1, Lcom/narvii/model/Media;

    .line 304
    .line 305
    .line 306
    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    .line 307
    .line 308
    const/16 v3, 0x66

    .line 309
    .line 310
    iput v3, v1, Lcom/narvii/model/Media;->type:I

    .line 311
    .line 312
    iput-object p1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 313
    .line 314
    iget-object p1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 315
    .line 316
    .line 317
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    :goto_2
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 321
    .line 322
    .line 323
    invoke-direct {p0}, Lcom/narvii/video/NVFullScreenVideoActivity;->getAttachedObject()Lcom/narvii/model/NVObject;

    .line 324
    move-result-object p1

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 328
    .line 329
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 330
    .line 331
    .line 332
    invoke-interface {p1, p0, v0, v2}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 333
    .line 334
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 335
    .line 336
    .line 337
    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 338
    .line 339
    :goto_3
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 340
    .line 341
    .line 342
    invoke-interface {p1}, Lcom/narvii/nvplayerview/controller/IVideoController;->setOptionMenu()V

    .line 343
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->destroy()V

    .line 9
    return-void
.end method

.method public synthetic onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->b(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->pause()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->lockMute(Z)V

    .line 15
    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    .line 6
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/narvii/nvplayerview/controller/IVideoController;->onPlayerStateChanged(ZI)V

    .line 6
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->e(Lcom/narvii/nvplayer/IVideoListener;I)V

    return-void
.end method

.method public synthetic onPreloadStrategyChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->f(Lcom/narvii/nvplayer/IVideoListener;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onRenderFirstFrameInterval(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/b;->g(Lcom/narvii/nvplayer/IVideoListener;J)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->setTotalTime()V

    .line 6
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mSurface:Landroid/view/Surface;

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->lockMute(Z)V

    .line 31
    :cond_1
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/b;->i(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

    :cond_0
    return-void
.end method

.method public synthetic onVideoSizeChanged(IIIF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/b;->k(Lcom/narvii/nvplayer/IVideoListener;IIIF)V

    return-void
.end method

.method public synthetic onVideoSupportLowResVideo(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->l(Lcom/narvii/nvplayer/IVideoListener;Z)V

    return-void
.end method

.method public synthetic shouldPauseForPageAboveVideo(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->m(Lcom/narvii/nvplayer/IVideoListener;I)Z

    move-result p1

    return p1
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 14
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method
