.class public Lcom/narvii/scene/view/NVSceneView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private coverImageRes:I

.field private defaultTimeTextColor:I

.field private errorTimeTextColor:I

.field private imageLoader:Lcom/narvii/util/image/NVImageLoader;

.field private isEmptyShowTime:Z

.field private ivAddVideo:Landroid/widget/ImageView;

.field private ivCoverImage:Lcom/narvii/widget/ThumbImageView;

.field private ivPlayingIcon:Lcom/narvii/widget/NVImageView;

.field private overlayView:Landroid/view/View;

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private sceneWrapper:Lcom/narvii/scene/SceneWrapper;

.field private tvTime:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private warningView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/view/NVSceneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/scene/view/NVSceneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/scene/view/NVSceneView;->isEmptyShowTime:Z

    return-void
.end method


# virtual methods
.method protected getErrorOverlayRes()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->scene_thumb_error_overlay:I

    return v0
.end method

.method public getSceneWrapper()Lcom/narvii/scene/SceneWrapper;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    return-object v0
.end method

.method public getTvTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_title:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTitle:Landroid/widget/TextView;

    .line 14
    .line 15
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_time:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 24
    .line 25
    sget v0, Lcom/narvii/mediaeditor/R$id;->warning_view:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->warningView:Landroid/view/View;

    .line 32
    .line 33
    sget v0, Lcom/narvii/mediaeditor/R$id;->ic_overlay:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    .line 40
    .line 41
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_cover_image:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    .line 50
    .line 51
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_playing_icon:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivPlayingIcon:Lcom/narvii/widget/NVImageView;

    .line 60
    .line 61
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_add_video:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivAddVideo:Landroid/widget/ImageView;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    const-string v1, "photo"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 93
    move-result v0

    .line 94
    .line 95
    iput v0, p0, Lcom/narvii/scene/view/NVSceneView;->defaultTimeTextColor:I

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivPlayingIcon:Lcom/narvii/widget/NVImageView;

    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    const-string v1, "gifLoader"

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 116
    .line 117
    const-string v1, "assets://media_playing.gif"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    iget-object v1, p0, Lcom/narvii/scene/view/NVSceneView;->ivPlayingIcon:Lcom/narvii/widget/NVImageView;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    const-string v1, "imageLoader"

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 143
    .line 144
    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 145
    return-void
.end method

.method protected setCoverImage()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getCoverImage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getCoverImage()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "http"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getCoverImage()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v1, "photo"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    .line 39
    const/4 v1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getCoverImage()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/scene/view/NVSceneView;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/narvii/scene/view/NVSceneView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 69
    .line 70
    new-instance v3, Ljava/io/File;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getCoverImage()Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 87
    move-result v3

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 91
    move-result v0

    .line 92
    const/4 v4, 0x1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    iget-object v1, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    .line 107
    .line 108
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 109
    .line 110
    const/high16 v2, -0x78000000

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_0
    return-void
.end method

.method public setCoverImageRes(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/narvii/scene/view/NVSceneView;->coverImageRes:I

    return-void
.end method

.method public setData(Lcom/narvii/scene/SceneWrapper;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/scene/view/NVSceneView;->setData(Lcom/narvii/scene/SceneWrapper;II)V

    return-void
.end method

.method public setData(Lcom/narvii/scene/SceneWrapper;II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/scene/view/NVSceneView;->setData(Lcom/narvii/scene/SceneWrapper;IIZ)V

    return-void
.end method

.method public setData(Lcom/narvii/scene/SceneWrapper;IIZ)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iput p2, p0, Lcom/narvii/scene/view/NVSceneView;->coverImageRes:I

    iput p3, p0, Lcom/narvii/scene/view/NVSceneView;->errorTimeTextColor:I

    iput-boolean p4, p0, Lcom/narvii/scene/view/NVSceneView;->isEmptyShowTime:Z

    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/view/NVSceneView;->updateView()V

    return-void
.end method

.method public setDefaultTimeTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/view/NVSceneView;->defaultTimeTextColor:I

    return-void
.end method

.method public setEmptyShowTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/scene/view/NVSceneView;->isEmptyShowTime:Z

    return-void
.end method

.method public setErrorTimeTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/view/NVSceneView;->errorTimeTextColor:I

    return-void
.end method

.method public setSceneWrapper(Lcom/narvii/scene/SceneWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    return-void
.end method

.method public updateView()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->warningView:Landroid/view/View;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v1

    .line 19
    .line 20
    :goto_1
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    .line 24
    move-result v4

    .line 25
    .line 26
    if-eq v4, v1, :cond_6

    .line 27
    const/4 v5, 0x2

    .line 28
    .line 29
    if-eq v4, v5, :cond_4

    .line 30
    const/4 v5, 0x3

    .line 31
    .line 32
    if-eq v4, v5, :cond_2

    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTitle:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getTitle()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getDurationText()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    iget v0, p0, Lcom/narvii/scene/view/NVSceneView;->errorTimeTextColor:I

    .line 64
    const/4 v4, -0x1

    .line 65
    .line 66
    if-eq v0, v4, :cond_3

    .line 67
    .line 68
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivAddVideo:Landroid/widget/ImageView;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/scene/view/NVSceneView;->getErrorOverlayRes()I

    .line 87
    move-result v4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/scene/view/NVSceneView;->setCoverImage()V

    .line 94
    move v0, v3

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_4
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTitle:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getTitle()Ljava/lang/String;

    .line 104
    move-result-object v4

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getDurationText()Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 126
    .line 127
    iget v4, p0, Lcom/narvii/scene/view/NVSceneView;->defaultTimeTextColor:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivAddVideo:Landroid/widget/ImageView;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    .line 138
    .line 139
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 140
    .line 141
    iget-boolean v4, v4, Lcom/narvii/scene/SceneWrapper;->isPlaying:Z

    .line 142
    .line 143
    if-eqz v4, :cond_5

    .line 144
    move v4, v3

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    move v4, v2

    .line 147
    .line 148
    .line 149
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    .line 152
    .line 153
    sget v4, Lcom/narvii/mediaeditor/R$drawable;->scene_thumb_playing_overlay:I

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/narvii/scene/view/NVSceneView;->setCoverImage()V

    .line 160
    :goto_3
    move v0, v1

    .line 161
    goto :goto_5

    .line 162
    .line 163
    :cond_6
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 169
    .line 170
    iget-boolean v4, p0, Lcom/narvii/scene/view/NVSceneView;->isEmptyShowTime:Z

    .line 171
    .line 172
    if-eqz v4, :cond_7

    .line 173
    move v4, v3

    .line 174
    goto :goto_4

    .line 175
    :cond_7
    move v4, v2

    .line 176
    .line 177
    .line 178
    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 181
    .line 182
    const-wide/16 v4, 0x0

    .line 183
    .line 184
    .line 185
    invoke-static {v4, v5}, Lcom/narvii/scene/helper/SceneUtils;->durationMsToUIText(J)Ljava/lang/String;

    .line 186
    move-result-object v4

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 192
    .line 193
    iget v4, p0, Lcom/narvii/scene/view/NVSceneView;->defaultTimeTextColor:I

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .line 198
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 202
    move-result-object v4

    .line 203
    .line 204
    iget v5, p0, Lcom/narvii/scene/view/NVSceneView;->coverImageRes:I

    .line 205
    .line 206
    .line 207
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 208
    move-result-object v4

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v4}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    .line 213
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivAddVideo:Landroid/widget/ImageView;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    .line 218
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTitle:Landroid/widget/TextView;

    .line 219
    .line 220
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getTitle()Ljava/lang/String;

    .line 224
    move-result-object v4

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    goto :goto_3

    .line 229
    .line 230
    :goto_5
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->warningView:Landroid/view/View;

    .line 231
    .line 232
    if-eqz v4, :cond_9

    .line 233
    .line 234
    if-eqz v0, :cond_8

    .line 235
    .line 236
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->isCanPlaying()Z

    .line 240
    move-result v0

    .line 241
    .line 242
    if-eqz v0, :cond_8

    .line 243
    move v0, v2

    .line 244
    goto :goto_6

    .line 245
    :cond_8
    move v0, v3

    .line 246
    .line 247
    .line 248
    :goto_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    :cond_9
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivPlayingIcon:Lcom/narvii/widget/NVImageView;

    .line 251
    .line 252
    if-eqz v0, :cond_d

    .line 253
    .line 254
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 255
    .line 256
    iget-boolean v4, v4, Lcom/narvii/scene/SceneWrapper;->isPlaying:Z

    .line 257
    .line 258
    if-eqz v4, :cond_a

    .line 259
    move v4, v3

    .line 260
    goto :goto_7

    .line 261
    :cond_a
    move v4, v2

    .line 262
    .line 263
    .line 264
    :goto_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 267
    .line 268
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 269
    .line 270
    iget-boolean v5, v4, Lcom/narvii/scene/SceneWrapper;->isPlaying:Z

    .line 271
    .line 272
    if-nez v5, :cond_c

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    .line 276
    move-result v4

    .line 277
    .line 278
    if-ne v4, v1, :cond_b

    .line 279
    .line 280
    iget-boolean v1, p0, Lcom/narvii/scene/view/NVSceneView;->isEmptyShowTime:Z

    .line 281
    .line 282
    if-nez v1, :cond_b

    .line 283
    goto :goto_8

    .line 284
    :cond_b
    move v2, v3

    .line 285
    .line 286
    .line 287
    :cond_c
    :goto_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :cond_d
    return-void
.end method
