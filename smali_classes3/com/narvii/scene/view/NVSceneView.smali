.class public Lcom/narvii/scene/view/NVSceneView;
.super Landroid/widget/RelativeLayout;
.source "NVSceneView.java"


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

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/view/NVSceneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/scene/view/NVSceneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/narvii/scene/view/NVSceneView;->isEmptyShowTime:Z

    return-void
.end method


# virtual methods
.method protected getErrorOverlayRes()I
    .locals 1

    .line 201
    invoke-static {}, Lcom/narvii/app/NVApplication;->isStoryEditorApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->scene_thumb_error_overlay_dark:I

    return v0

    .line 204
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->scene_thumb_error_overlay:I

    return v0
.end method

.method public getSceneWrapper()Lcom/narvii/scene/SceneWrapper;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    return-object v0
.end method

.method public getTvTitle()Landroid/widget/TextView;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 75
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 77
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTitle:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_time:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/narvii/mediaeditor/R$id;->warning_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->warningView:Landroid/view/View;

    .line 80
    sget v0, Lcom/narvii/mediaeditor/R$id;->ic_overlay:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    .line 81
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_cover_image:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    .line 82
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_playing_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivPlayingIcon:Lcom/narvii/widget/NVImageView;

    .line 83
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_add_video:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivAddVideo:Landroid/widget/ImageView;

    .line 86
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 88
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/narvii/scene/view/NVSceneView;->defaultTimeTextColor:I

    .line 90
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivPlayingIcon:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "gifLoader"

    .line 92
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    const-string v1, "assets://media_playing.gif"

    .line 93
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/narvii/scene/view/NVSceneView;->ivPlayingIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "imageLoader"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    iput-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    return-void
.end method

.method protected setCoverImage()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getCoverImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getCoverImage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getCoverImage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 211
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    iget-object v1, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getCoverImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 215
    iget-object v1, p0, Lcom/narvii/scene/view/NVSceneView;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    iget-object v2, p0, Lcom/narvii/scene/view/NVSceneView;->photoManager:Lcom/narvii/photos/PhotoManager;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getCoverImage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v1, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x78000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setCoverImageRes(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/narvii/scene/view/NVSceneView;->coverImageRes:I

    return-void
.end method

.method public setData(Lcom/narvii/scene/SceneWrapper;I)V
    .locals 1

    const/4 v0, -0x1

    .line 101
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/scene/view/NVSceneView;->setData(Lcom/narvii/scene/SceneWrapper;II)V

    return-void
.end method

.method public setData(Lcom/narvii/scene/SceneWrapper;II)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/scene/view/NVSceneView;->setData(Lcom/narvii/scene/SceneWrapper;IIZ)V

    return-void
.end method

.method public setData(Lcom/narvii/scene/SceneWrapper;IIZ)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 110
    iput p2, p0, Lcom/narvii/scene/view/NVSceneView;->coverImageRes:I

    .line 111
    iput p3, p0, Lcom/narvii/scene/view/NVSceneView;->errorTimeTextColor:I

    .line 112
    iput-boolean p4, p0, Lcom/narvii/scene/view/NVSceneView;->isEmptyShowTime:Z

    .line 113
    invoke-virtual {p0}, Lcom/narvii/scene/view/NVSceneView;->updateView()V

    return-void
.end method

.method public setDefaultTimeTextColor(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/narvii/scene/view/NVSceneView;->defaultTimeTextColor:I

    return-void
.end method

.method public setEmptyShowTime(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/narvii/scene/view/NVSceneView;->isEmptyShowTime:Z

    return-void
.end method

.method public setErrorTimeTextColor(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/narvii/scene/view/NVSceneView;->errorTimeTextColor:I

    return-void
.end method

.method public setSceneWrapper(Lcom/narvii/scene/SceneWrapper;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    return-void
.end method

.method public updateView()V
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->warningView:Landroid/view/View;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 138
    :goto_1
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    move-result v4

    if-eq v4, v1, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    goto/16 :goto_5

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getDurationText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget v0, p0, Lcom/narvii/scene/view/NVSceneView;->errorTimeTextColor:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 177
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivAddVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/scene/view/NVSceneView;->getErrorOverlayRes()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 185
    invoke-virtual {p0}, Lcom/narvii/scene/view/NVSceneView;->setCoverImage()V

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getDurationText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    iget v4, p0, Lcom/narvii/scene/view/NVSceneView;->defaultTimeTextColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivAddVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-boolean v4, v4, Lcom/narvii/scene/SceneWrapper;->isPlaying:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    sget v4, Lcom/narvii/mediaeditor/R$drawable;->scene_thumb_playing_overlay:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 166
    invoke-virtual {p0}, Lcom/narvii/scene/view/NVSceneView;->setCoverImage()V

    goto :goto_4

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->overlayView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/narvii/scene/view/NVSceneView;->isEmptyShowTime:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/narvii/scene/helper/SceneUtils;->durationMsToUIText(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    iget v4, p0, Lcom/narvii/scene/view/NVSceneView;->defaultTimeTextColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/narvii/scene/view/NVSceneView;->coverImageRes:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivAddVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v0, 0x1

    .line 190
    :goto_5
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->warningView:Landroid/view/View;

    if-eqz v4, :cond_9

    if-eqz v0, :cond_8

    .line 191
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->isCanPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_9
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->ivPlayingIcon:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_d

    .line 195
    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-boolean v4, v4, Lcom/narvii/scene/SceneWrapper;->isPlaying:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    const/16 v4, 0x8

    :goto_7
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/narvii/scene/view/NVSceneView;->tvTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/scene/view/NVSceneView;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-boolean v5, v4, Lcom/narvii/scene/SceneWrapper;->isPlaying:Z

    if-nez v5, :cond_c

    invoke-virtual {v4}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    move-result v4

    if-ne v4, v1, :cond_b

    iget-boolean v1, p0, Lcom/narvii/scene/view/NVSceneView;->isEmptyShowTime:Z

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    return-void
.end method
