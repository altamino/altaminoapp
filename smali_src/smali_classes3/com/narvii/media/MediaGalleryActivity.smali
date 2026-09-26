.class public Lcom/narvii/media/MediaGalleryActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nvplayerview/ISurfaceListener;
.implements Lcom/narvii/nvplayer/IVideoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/MediaGalleryActivity$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

.field caption:Landroid/widget/TextView;

.field downY:I

.field firstLoad:Z

.field lastView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field overlay:Landroid/view/View;

.field private pageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field pager:Lcom/narvii/widget/NVViewPager;

.field protected parent:Lcom/narvii/model/NVObject;

.field player:Lcom/narvii/nvplayer/INVPlayer;

.field position:I

.field smb:Lcom/narvii/widget/ShareMediaBar;

.field surface:Landroid/view/Surface;

.field target:Landroid/view/View;

.field videoView:Lcom/narvii/nvplayerview/NVVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/media/MediaGalleryActivity;->position:I

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/media/MediaGalleryActivity$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaGalleryActivity$1;-><init>(Lcom/narvii/media/MediaGalleryActivity;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 14
    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/media/MediaGalleryActivity;->onShareMediaButtonClicked()V

    .line 4
    return-void
.end method

.method private pageSelected(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/model/Media;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->lastView:Ljava/lang/ref/WeakReference;

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->lastView:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Landroid/view/View;

    .line 29
    .line 30
    sget v3, Lcom/narvii/lib/R$id;->image:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/media/MediaGalleryActivity;->lastView:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Landroid/view/View;

    .line 43
    .line 44
    sget v4, Lcom/narvii/lib/R$id;->video_view:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    check-cast v3, Lcom/narvii/nvplayerview/NVVideoView;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    :cond_0
    if-eqz v3, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Lcom/narvii/nvplayerview/NVVideoView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 61
    .line 62
    :cond_1
    iput-object v2, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    .line 63
    move v0, v1

    .line 64
    .line 65
    :goto_0
    iget-object v3, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 69
    move-result v3

    .line 70
    .line 71
    if-ge v0, v3, :cond_3

    .line 72
    .line 73
    iget-object v3, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    if-ne v3, p1, :cond_2

    .line 84
    .line 85
    iget-object v3, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 98
    .line 99
    if-nez v0, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-static {p0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 106
    .line 107
    const/high16 v3, 0x3f800000    # 1.0f

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v3}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 111
    .line 112
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 113
    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Lcom/narvii/nvplayerview/NVVideoView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 125
    .line 126
    :cond_5
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    .line 127
    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    .line 134
    move-result v0

    .line 135
    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    .line 139
    .line 140
    sget v1, Lcom/narvii/lib/R$id;->video_view:I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    check-cast v0, Lcom/narvii/nvplayerview/NVVideoView;

    .line 147
    .line 148
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 149
    const/4 v1, 0x1

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p0, v1}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;I)V

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/NVVideoView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 158
    .line 159
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getParentContext()Lcom/narvii/app/NVContext;

    .line 163
    move-result-object v3

    .line 164
    .line 165
    .line 166
    invoke-static {v3, p1}, Lcom/narvii/nvplayerview/Utils;->predictRatio(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;)F

    .line 167
    move-result v3

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 171
    .line 172
    new-instance v0, Lcom/narvii/nvplayer/NVMediaSource;

    .line 173
    .line 174
    .line 175
    invoke-direct {v0}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 176
    .line 177
    new-instance v3, Ljava/util/ArrayList;

    .line 178
    .line 179
    .line 180
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    iput-object v3, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 183
    .line 184
    .line 185
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->parent:Lcom/narvii/model/NVObject;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 194
    .line 195
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 196
    .line 197
    .line 198
    invoke-interface {p1, p0, v0, v2}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 199
    .line 200
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 201
    .line 202
    .line 203
    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getSurface()Landroid/view/Surface;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->surface:Landroid/view/Surface;

    .line 212
    .line 213
    if-eqz p1, :cond_6

    .line 214
    .line 215
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 216
    .line 217
    .line 218
    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 219
    .line 220
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 221
    .line 222
    .line 223
    invoke-interface {p1, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 224
    .line 225
    :cond_6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 226
    .line 227
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    .line 228
    .line 229
    .line 230
    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 231
    .line 232
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->lastView:Ljava/lang/ref/WeakReference;

    .line 233
    :cond_7
    return-void
.end method

.method public static synthetic s(Lcom/narvii/media/MediaGalleryActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/MediaGalleryActivity;->lambda$onCreate$0()V

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/media/MediaGalleryActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaGalleryActivity;->pageSelected(I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/media/MediaGalleryActivity;->downY:I

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public getCurrentMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/util/PagerGalleryAdapter;->getCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/model/Media;

    .line 25
    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->gallery_layout:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "media_gallery"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic onCachedBytesRead(JJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/b;->a(Lcom/narvii/nvplayer/IVideoListener;JJ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/media/MediaGalleryActivity;->getLayoutId()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 11
    .line 12
    sget v0, Lcom/narvii/lib/R$id;->pager:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/widget/NVViewPager;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 21
    .line 22
    sget v0, Lcom/narvii/lib/R$id;->overlay:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 29
    .line 30
    sget v0, Lcom/narvii/lib/R$id;->text:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->caption:Landroid/widget/TextView;

    .line 39
    .line 40
    sget v0, Lcom/narvii/lib/R$id;->share_media_bar:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/widget/ShareMediaBar;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    .line 49
    .line 50
    const-string v1, "Fullscreen Media"

    .line 51
    .line 52
    iput-object v1, v0, Lcom/narvii/widget/ShareMediaBar;->source:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "config"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 61
    .line 62
    const-string v0, "preview"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    .line 69
    .line 70
    const-string v2, "hideShareBar"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 74
    move-result v2

    .line 75
    .line 76
    if-nez v2, :cond_0

    .line 77
    .line 78
    if-nez v0, :cond_0

    .line 79
    const/4 v2, 0x0

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_0
    const/16 v2, 0x8

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    const-string v1, "parentClass"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    check-cast v0, Ljava/lang/Class;

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    :try_start_0
    const-class v1, Lcom/narvii/model/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    const-string v2, "parent"

    .line 106
    .line 107
    if-ne v0, v1, :cond_1

    .line 108
    .line 109
    .line 110
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 114
    .line 115
    .line 116
    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->parent:Lcom/narvii/model/NVObject;

    .line 125
    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto :goto_1

    .line 128
    .line 129
    .line 130
    :cond_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 138
    .line 139
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->parent:Lcom/narvii/model/NVObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    goto :goto_2

    .line 141
    .line 142
    .line 143
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 148
    .line 149
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    .line 150
    .line 151
    new-instance v1, Lcom/narvii/media/a;

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, p0}, Lcom/narvii/media/a;-><init>(Lcom/narvii/media/MediaGalleryActivity;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ShareMediaBar;->setInnerClickListener(Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;)V

    .line 158
    .line 159
    new-instance v0, Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaGalleryActivity$Adapter;-><init>(Lcom/narvii/media/MediaGalleryActivity;)V

    .line 163
    .line 164
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 165
    .line 166
    const-string v0, "list"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    const-class v1, Lcom/narvii/model/Media;

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    if-eqz v0, :cond_3

    .line 179
    .line 180
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v0}, Lcom/narvii/util/PagerGalleryAdapter;->setList(Ljava/util/List;)V

    .line 184
    .line 185
    :cond_3
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 191
    .line 192
    const-string v0, "position"

    .line 193
    .line 194
    if-nez p1, :cond_4

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 198
    move-result p1

    .line 199
    .line 200
    iput p1, p0, Lcom/narvii/media/MediaGalleryActivity;->position:I

    .line 201
    goto :goto_3

    .line 202
    .line 203
    .line 204
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 205
    move-result p1

    .line 206
    .line 207
    iput p1, p0, Lcom/narvii/media/MediaGalleryActivity;->position:I

    .line 208
    .line 209
    :goto_3
    iget p1, p0, Lcom/narvii/media/MediaGalleryActivity;->position:I

    .line 210
    .line 211
    if-ltz p1, :cond_5

    .line 212
    .line 213
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 217
    .line 218
    :cond_5
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 219
    .line 220
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 224
    .line 225
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->pageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 226
    .line 227
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 231
    move-result v0

    .line 232
    .line 233
    .line 234
    invoke-interface {p1, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 235
    .line 236
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 240
    move-result v0

    .line 241
    .line 242
    .line 243
    invoke-static {p1, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 247
    move-result-object p1

    .line 248
    const/4 v0, -0x3

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v0}, Landroid/view/Window;->setFormat(I)V

    .line 252
    return-void
.end method

.method public synthetic onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->b(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x52

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/narvii/media/MediaGalleryActivity$Adapter;->onLongClick(Landroid/view/View;)Z

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method protected onPageSelectedFinished(I)V
    .locals 0

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
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public synthetic onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->c(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    sget p2, Lcom/narvii/lib/R$id;->video_loading:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    sget p2, Lcom/narvii/lib/R$id;->video_loading:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x4

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_1
    :goto_0
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
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$id;->image:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 9
    move-result v0

    .line 10
    .line 11
    const-string v1, "position"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method protected onShareMediaButtonClicked()V
    .locals 0

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

    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

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

.method public saveImageToPhone()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/model/Media;

    .line 15
    .line 16
    iget v1, v0, Lcom/narvii/model/Media;->type:I

    .line 17
    .line 18
    const/16 v2, 0x64

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    const-string v2, "saveImage"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/media/SaveImageFragment;

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/media/SaveImageFragment;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Lcom/narvii/media/SaveImageFragment;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->i0()Z

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {v1, v0}, Lcom/narvii/media/SaveImageFragment;->save(Lcom/narvii/model/Media;)V

    .line 65
    :cond_1
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
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 18
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getVideoSurface()Landroid/view/Surface;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 15
    :cond_0
    return-void
.end method

.method public surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method
