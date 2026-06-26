.class public final Lcom/narvii/story/CropImageFragment;
.super Lcom/narvii/app/NVFragment;
.source "CropImageFragment.kt"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageFragment.kt\ncom/narvii/story/CropImageFragment\n+ 2 NVExtension.kt\ncom/narvii/util/kotlin/NVExtensionKt\n*L\n1#1,188:1\n33#2,14:189\n*E\n*S KotlinDebug\n*F\n+ 1 CropImageFragment.kt\ncom/narvii/story/CropImageFragment\n*L\n56#1,14:189\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private cropView:Lcom/narvii/crop/CropView;

.field private draftId:Ljava/lang/String;

.field private imageLoader:Lcom/narvii/util/image/NVImageLoader;

.field private imageUrl:Ljava/lang/String;

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private outputUrl:Ljava/lang/String;

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private rawBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/narvii/story/CropImageFragment;->imageUrl:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/narvii/story/CropImageFragment;->outputUrl:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/narvii/story/CropImageFragment;->draftId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$crop(Lcom/narvii/story/CropImageFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/story/CropImageFragment;->crop()V

    return-void
.end method

.method public static final synthetic access$getCropView$p(Lcom/narvii/story/CropImageFragment;)Lcom/narvii/crop/CropView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/story/CropImageFragment;->cropView:Lcom/narvii/crop/CropView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cropView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getOutputUrl$p(Lcom/narvii/story/CropImageFragment;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/story/CropImageFragment;->outputUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRawBitmap$p(Lcom/narvii/story/CropImageFragment;)Landroid/graphics/Bitmap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/story/CropImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$setCropView$p(Lcom/narvii/story/CropImageFragment;Lcom/narvii/crop/CropView;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/story/CropImageFragment;->cropView:Lcom/narvii/crop/CropView;

    return-void
.end method

.method public static final synthetic access$setOutputUrl$p(Lcom/narvii/story/CropImageFragment;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/story/CropImageFragment;->outputUrl:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setRawBitmap$p(Lcom/narvii/story/CropImageFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/story/CropImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$showError(Lcom/narvii/story/CropImageFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/story/CropImageFragment;->showError()V

    return-void
.end method

.method public static final synthetic access$toPickCoverImage(Lcom/narvii/story/CropImageFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/story/CropImageFragment;->toPickCoverImage()V

    return-void
.end method

.method private final crop()V
    .locals 14

    .line 148
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 152
    :cond_0
    sget v0, Lcom/narvii/amino/R$id;->crop_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CropImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/crop/CropView;

    const-string v1, "crop_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/crop/CropImageView;->getCropResult(Lcom/narvii/app/NVContext;)Lcom/narvii/theme/ThemeImage;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 153
    new-instance v5, Landroid/graphics/RectF;

    iget v1, v0, Lcom/narvii/theme/ThemeImage;->x:F

    iget v2, v0, Lcom/narvii/theme/ThemeImage;->y:F

    iget v3, v0, Lcom/narvii/theme/ThemeImage;->width:F

    add-float/2addr v3, v1

    iget v4, v0, Lcom/narvii/theme/ThemeImage;->height:F

    add-float/2addr v4, v2

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 154
    new-instance v6, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/story/CropImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/narvii/story/CropImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v6, v4, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 156
    iget-object v1, p0, Lcom/narvii/story/CropImageFragment;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "photoManager"

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/narvii/story/CropImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "photoManager.getPath(path)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, ""

    :goto_0
    move-object v10, v0

    .line 161
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/narvii/story/CropImageFragment;->outputUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "photoManager.getPath(outputUrl)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 162
    new-instance v0, Lcom/narvii/crop/BitmapCropTask;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/narvii/story/CropImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x2d0

    const/16 v12, 0x500

    .line 165
    new-instance v13, Lcom/narvii/story/CropImageFragment$crop$$inlined$apply$lambda$1;

    invoke-direct {v13, p0}, Lcom/narvii/story/CropImageFragment$crop$$inlined$apply$lambda$1;-><init>(Lcom/narvii/story/CropImageFragment;)V

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move v7, v8

    move v8, v9

    move v9, v12

    move-object v12, v13

    .line 162
    invoke-direct/range {v1 .. v12}, Lcom/narvii/crop/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;FIILjava/lang/String;Ljava/lang/String;Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 179
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 162
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 161
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string v0, "imageLoader"

    .line 156
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_8
    :goto_1
    return-void

    .line 149
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/narvii/story/CropImageFragment;->showError()V

    return-void
.end method

.method private final initCropView()V
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->cropView:Lcom/narvii/crop/CropView;

    const/4 v1, 0x0

    const-string v2, "cropView"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    move-result-object v0

    const/16 v3, 0x168

    invoke-virtual {v0, v3}, Lcom/narvii/crop/CropImageView;->setMinCropWidth(I)V

    .line 106
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->cropView:Lcom/narvii/crop/CropView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    move-result-object v0

    const/16 v3, 0x280

    invoke-virtual {v0, v3}, Lcom/narvii/crop/CropImageView;->setMinCropHeight(I)V

    .line 107
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->cropView:Lcom/narvii/crop/CropView;

    if-eqz v0, :cond_2

    const/high16 v3, 0x3f100000    # 0.5625f

    invoke-virtual {v0, v3}, Lcom/narvii/crop/CropView;->setAspectRatio(F)V

    .line 109
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->cropView:Lcom/narvii/crop/CropView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 110
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 111
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 112
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 109
    invoke-virtual {v0, v3, v5, v4, v6}, Lcom/narvii/crop/CropView;->setCustomPadding(IIII)V

    .line 113
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->cropView:Lcom/narvii/crop/CropView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getOverlayView()Lcom/narvii/crop/OverlayView;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setRadius(I)V

    const/4 v2, 0x1

    .line 115
    invoke-virtual {v0, v2}, Lcom/narvii/crop/OverlayView;->setDrawCropLines(Z)V

    const/4 v3, 0x2

    .line 116
    invoke-virtual {v0, v3}, Lcom/narvii/crop/OverlayView;->setCropGridStrokeWidth(I)V

    const/4 v4, 0x6

    .line 117
    invoke-virtual {v0, v4}, Lcom/narvii/crop/OverlayView;->setCropGridRowCount(I)V

    const/4 v4, 0x3

    .line 118
    invoke-virtual {v0, v4}, Lcom/narvii/crop/OverlayView;->setCropGridColumnCount(I)V

    const v4, 0x4dffffff    # 5.3687088E8f

    .line 119
    invoke-virtual {v0, v4}, Lcom/narvii/crop/OverlayView;->setCropGridColor(I)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/narvii/crop/OverlayView;->setShowCropFrame(Z)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setRoundedDimmedLayer(Z)V

    .line 122
    invoke-virtual {v0, v3}, Lcom/narvii/crop/OverlayView;->setCropFrameStrokeWidth(I)V

    const/4 v1, -0x1

    .line 123
    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setCropFrameColor(I)V

    .line 124
    new-instance v1, Landroid/graphics/DashPathEffect;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setCropFramePathEffect(Landroid/graphics/PathEffect;)V

    return-void

    .line 113
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private final loadSourceImage(Ljava/lang/String;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/narvii/story/CropImageFragment$loadSourceImage$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/story/CropImageFragment$loadSourceImage$1;-><init>(Lcom/narvii/story/CropImageFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void

    :cond_0
    const-string p1, "imageLoader"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final showError()V
    .locals 0

    return-void
.end method

.method private final toPickCoverImage()V
    .locals 9

    .line 95
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "photo"

    .line 96
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v3, 0x1e

    const/4 v4, 0x1

    const/16 v5, 0x2d0

    const/16 v6, 0x2d0

    const/16 v7, 0x2d0

    const/16 v8, 0x2d0

    invoke-virtual/range {v0 .. v8}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IIIIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/CropImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/CropImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected getActionBarLayoutId()I
    .locals 1

    const v0, 0x7f0b0031

    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoryCoverImageCrop"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 49
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "imageUrl"

    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringParam(\"imageUrl\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/story/CropImageFragment;->imageUrl:Ljava/lang/String;

    const-string p1, "outputUrl"

    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringParam(\"outputUrl\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/story/CropImageFragment;->outputUrl:Ljava/lang/String;

    const-string p1, "draftId"

    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringParam(\"draftId\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/story/CropImageFragment;->draftId:Ljava/lang/String;

    const-string p1, "photo"

    .line 54
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"photo\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/story/CropImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    const-string p1, "imageLoader"

    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"imageLoader\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    iput-object p1, p0, Lcom/narvii/story/CropImageFragment;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 56
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    const-class v0, Lcom/narvii/media/MediaPickerFragment;

    .line 189
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clz.simpleName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 191
    instance-of v3, v2, Lcom/narvii/media/MediaPickerFragment;

    if-nez v3, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    check-cast v2, Lcom/narvii/app/NVFragment;

    goto :goto_1

    .line 192
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 193
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 199
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 200
    move-object v2, v0

    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 202
    :goto_1
    check-cast v2, Lcom/narvii/media/MediaPickerFragment;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lcom/narvii/story/CropImageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 57
    iget-object p1, p0, Lcom/narvii/story/CropImageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0295

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 62
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/story/CropImageFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 89
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "it.mediaUrl"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/narvii/story/CropImageFragment;->loadSourceImage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0f031a

    .line 73
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 74
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 75
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    if-eqz p2, :cond_0

    .line 76
    check-cast p1, Lcom/narvii/app/NVActivity;

    const p2, 0x7f0f0193

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    const p2, 0x7f0f03aa

    .line 77
    new-instance v0, Lcom/narvii/story/CropImageFragment$onViewCreated$$inlined$let$lambda$1;

    invoke-direct {v0, p0}, Lcom/narvii/story/CropImageFragment$onViewCreated$$inlined$let$lambda$1;-><init>(Lcom/narvii/story/CropImageFragment;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    sget p1, Lcom/narvii/amino/R$id;->crop_hint_tv:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CropImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/narvii/story/CropImageFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/narvii/story/CropImageFragment$onViewCreated$2;-><init>(Lcom/narvii/story/CropImageFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget p1, Lcom/narvii/amino/R$id;->crop_view:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CropImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/crop/CropView;

    const-string p2, "crop_view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/story/CropImageFragment;->cropView:Lcom/narvii/crop/CropView;

    .line 84
    invoke-direct {p0}, Lcom/narvii/story/CropImageFragment;->initCropView()V

    .line 85
    iget-object p1, p0, Lcom/narvii/story/CropImageFragment;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/story/CropImageFragment;->loadSourceImage(Ljava/lang/String;)V

    return-void
.end method
