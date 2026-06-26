.class public final Lcom/narvii/scene/template/CropTemplateImageFragment;
.super Lcom/narvii/app/NVFragment;
.source "CropTemplateImageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/template/CropTemplateImageFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropTemplateImageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropTemplateImageFragment.kt\ncom/narvii/scene/template/CropTemplateImageFragment\n*L\n1#1,206:1\n*E\n"
.end annotation


# static fields
.field public static final COVER_IMAGE_HEIGHT:I = 0x500

.field public static final COVER_IMAGE_WIDTH:I = 0x2d0

.field public static final Companion:Lcom/narvii/scene/template/CropTemplateImageFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "CropTemplateImageFragment"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private cropView:Lcom/narvii/crop/CropView;

.field private imageId:Ljava/lang/String;

.field private imageLoader:Lcom/narvii/util/image/NVImageLoader;

.field private imageUrl:Ljava/lang/String;

.field private outputUrl:Ljava/lang/String;

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private rawBitmap:Landroid/graphics/Bitmap;

.field private themeImage:Lcom/narvii/theme/ThemeImage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/template/CropTemplateImageFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/template/CropTemplateImageFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/template/CropTemplateImageFragment;->Companion:Lcom/narvii/scene/template/CropTemplateImageFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/crop/CropView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cropView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getImageId$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getOutputUrl$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRawBitmap$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$getThemeImage$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/theme/ThemeImage;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    return-object p0
.end method

.method public static final synthetic access$setCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;Lcom/narvii/crop/CropView;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    return-void
.end method

.method public static final synthetic access$setImageId$p(Lcom/narvii/scene/template/CropTemplateImageFragment;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setOutputUrl$p(Lcom/narvii/scene/template/CropTemplateImageFragment;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setRawBitmap$p(Lcom/narvii/scene/template/CropTemplateImageFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setThemeImage$p(Lcom/narvii/scene/template/CropTemplateImageFragment;Lcom/narvii/theme/ThemeImage;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    return-void
.end method

.method public static final synthetic access$showError(Lcom/narvii/scene/template/CropTemplateImageFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->showError()V

    return-void
.end method

.method private final crop()V
    .locals 15

    .line 169
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 173
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->crop_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/crop/CropView;

    const-string v1, "crop_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/crop/CropImageView;->getCropResult(Lcom/narvii/app/NVContext;)Lcom/narvii/theme/ThemeImage;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 175
    new-instance v5, Landroid/graphics/RectF;

    iget v1, v0, Lcom/narvii/theme/ThemeImage;->x:F

    iget v2, v0, Lcom/narvii/theme/ThemeImage;->y:F

    iget v3, v0, Lcom/narvii/theme/ThemeImage;->width:F

    add-float/2addr v3, v1

    iget v4, v0, Lcom/narvii/theme/ThemeImage;->height:F

    add-float/2addr v4, v2

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 176
    new-instance v6, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v6, v4, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 178
    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "photoManager"

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v4, "photoManager.getPath(path)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v1, ""

    :goto_0
    move-object v10, v1

    .line 183
    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "photoManager.getPath(outputUrl)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 184
    new-instance v13, Lcom/narvii/crop/BitmapCropTask;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x2d0

    const/16 v12, 0x500

    .line 187
    new-instance v14, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$$inlined$apply$lambda$1;

    invoke-direct {v14, v0, p0}, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$$inlined$apply$lambda$1;-><init>(Lcom/narvii/theme/ThemeImage;Lcom/narvii/scene/template/CropTemplateImageFragment;)V

    move-object v1, v13

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move v7, v8

    move v8, v9

    move v9, v12

    move-object v12, v14

    .line 184
    invoke-direct/range {v1 .. v12}, Lcom/narvii/crop/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;FIILjava/lang/String;Ljava/lang/String;Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 203
    invoke-virtual {v13, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 184
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 183
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string v0, "imageLoader"

    .line 178
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_8
    :goto_1
    return-void

    .line 170
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->showError()V

    return-void
.end method

.method private final initCropView()V
    .locals 8

    .line 119
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    const/4 v1, 0x0

    const-string v2, "cropView"

    if-eqz v0, :cond_2

    const/high16 v3, 0x3f100000    # 0.5625f

    invoke-virtual {v0, v3}, Lcom/narvii/crop/CropView;->setAspectRatio(F)V

    .line 120
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/mediaeditor/R$dimen;->cover_image_left_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 121
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/narvii/mediaeditor/R$dimen;->cover_image_top_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 122
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/narvii/mediaeditor/R$dimen;->cover_image_left_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 123
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/narvii/mediaeditor/R$dimen;->cover_image_top_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 120
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/narvii/crop/CropView;->setCustomPadding(IIII)V

    .line 125
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getOverlayView()Lcom/narvii/crop/OverlayView;

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setRadius(I)V

    const/4 v2, 0x1

    .line 127
    invoke-virtual {v0, v2}, Lcom/narvii/crop/OverlayView;->setDrawCropLines(Z)V

    const/4 v3, 0x2

    .line 128
    invoke-virtual {v0, v3}, Lcom/narvii/crop/OverlayView;->setCropGridStrokeWidth(I)V

    const/4 v4, 0x6

    .line 129
    invoke-virtual {v0, v4}, Lcom/narvii/crop/OverlayView;->setCropGridRowCount(I)V

    const/4 v4, 0x3

    .line 130
    invoke-virtual {v0, v4}, Lcom/narvii/crop/OverlayView;->setCropGridColumnCount(I)V

    const v4, 0x4dffffff    # 5.3687088E8f

    .line 131
    invoke-virtual {v0, v4}, Lcom/narvii/crop/OverlayView;->setCropGridColor(I)V

    .line 132
    invoke-virtual {v0, v2}, Lcom/narvii/crop/OverlayView;->setShowCropFrame(Z)V

    .line 133
    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setRoundedDimmedLayer(Z)V

    .line 134
    invoke-virtual {v0, v3}, Lcom/narvii/crop/OverlayView;->setCropFrameStrokeWidth(I)V

    const/4 v1, -0x1

    .line 135
    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setCropFrameColor(I)V

    .line 136
    new-instance v1, Landroid/graphics/DashPathEffect;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setCropFramePathEffect(Landroid/graphics/PathEffect;)V

    return-void

    .line 125
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_2
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

    .line 141
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;-><init>(Lcom/narvii/scene/template/CropTemplateImageFragment;Ljava/lang/String;)V

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


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 107
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 83
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_actionbar_close:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, ""

    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 58
    const-class v0, Lcom/narvii/theme/ThemeImage;

    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "themeImage"

    const-string v2, "outputUrl"

    const-string v3, "imageId"

    const-string v4, "imageUrl"

    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "getStringParam(\"imageUrl\")"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "getStringParam(\"imageId\")"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getStringParam(\"outputUrl\")"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/theme/ThemeImage;

    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    goto :goto_3

    .line 66
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    iput-object v4, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    iput-object v3, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    iput-object v2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/theme/ThemeImage;

    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    .line 72
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "crop image ->  onCreate >>> id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    themeImage="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CropTemplateImageFragment"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "photo"

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"photo\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    const-string p1, "imageLoader"

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"imageLoader\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget v0, Lcom/narvii/mediaeditor/R$string;->submit:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 87
    new-instance v8, Lcom/narvii/util/ActionBarIcon;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v1, Lcom/narvii/mediaeditor/R$string;->fa_check:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/narvii/mediaeditor/R$color;->white:I

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    const v4, 0x3f59999a    # 0.85f

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 88
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 90
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_crop_template_image:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/narvii/mediaeditor/R$string;->submit:I

    if-ne v0, v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->crop()V

    .line 97
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    const-string v1, "imageUrl"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    const-string v1, "imageId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "themeImage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    sget p2, Lcom/narvii/mediaeditor/R$id;->crop_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.crop_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/crop/CropView;

    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    .line 114
    invoke-direct {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->initCropView()V

    .line 115
    iget-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/scene/template/CropTemplateImageFragment;->loadSourceImage(Ljava/lang/String;)V

    return-void
.end method
