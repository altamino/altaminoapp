.class public final Lcom/narvii/scene/template/CropTemplateImageFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/template/CropTemplateImageFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final COVER_IMAGE_HEIGHT:I = 0x500

.field public static final COVER_IMAGE_WIDTH:I = 0x2d0

.field public static final Companion:Lcom/narvii/scene/template/CropTemplateImageFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "CropTemplateImageFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cropView:Lcom/narvii/crop/CropView;

.field private imageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imageLoader:Lcom/narvii/util/image/NVImageLoader;

.field private imageUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private outputUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private rawBitmap:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private themeImage:Lcom/narvii/theme/ThemeImage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentCropTemplateImageBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/scene/template/CropTemplateImageFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/scene/template/CropTemplateImageFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/scene/template/CropTemplateImageFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/scene/template/CropTemplateImageFragment;->Companion:Lcom/narvii/scene/template/CropTemplateImageFragment$Companion;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/scene/template/CropTemplateImageFragment$binding$2;->INSTANCE:Lcom/narvii/scene/template/CropTemplateImageFragment$binding$2;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->binding$delegate:Lkotlin/properties/d;

    .line 20
    return-void
.end method

.method public static final synthetic access$getCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/crop/CropView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getImageId$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOutputUrl$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRawBitmap$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getThemeImage$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/theme/ThemeImage;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setRawBitmap$p(Lcom/narvii/scene/template/CropTemplateImageFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-void
.end method

.method public static final synthetic access$showError(Lcom/narvii/scene/template/CropTemplateImageFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->showError()V

    .line 4
    return-void
.end method

.method private final crop()V
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_5

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentCropTemplateImageBinding;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentCropTemplateImageBinding;->cropView:Lcom/narvii/crop/CropView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/narvii/crop/CropImageView;->getCropResult(Lcom/narvii/app/NVContext;)Lcom/narvii/theme/ThemeImage;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    new-instance v5, Landroid/graphics/RectF;

    .line 29
    .line 30
    iget v1, v0, Lcom/narvii/theme/ThemeImage;->x:F

    .line 31
    .line 32
    iget v2, v0, Lcom/narvii/theme/ThemeImage;->y:F

    .line 33
    .line 34
    iget v3, v0, Lcom/narvii/theme/ThemeImage;->width:F

    .line 35
    add-float/2addr v3, v1

    .line 36
    .line 37
    iget v4, v0, Lcom/narvii/theme/ThemeImage;->height:F

    .line 38
    add-float/2addr v4, v2

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 42
    .line 43
    new-instance v6, Landroid/graphics/RectF;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 52
    move-result v1

    .line 53
    int-to-float v1, v1

    .line 54
    .line 55
    iget-object v2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 62
    move-result v2

    .line 63
    int-to-float v2, v2

    .line 64
    const/4 v3, 0x0

    .line 65
    .line 66
    .line 67
    invoke-direct {v6, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 70
    const/4 v2, 0x0

    .line 71
    .line 72
    if-nez v1, :cond_0

    .line 73
    .line 74
    const-string v1, "imageLoader"

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 78
    move-object v1, v2

    .line 79
    .line 80
    :cond_0
    iget-object v3, v0, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    .line 84
    move-result v1

    .line 85
    .line 86
    const-string v3, "photoManager"

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 91
    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 96
    move-object v1, v2

    .line 97
    .line 98
    :cond_1
    iget-object v4, v0, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v4}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    :goto_0
    move-object v10, v1

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_2
    const-string v1, ""

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :goto_1
    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 114
    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    .line 118
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move-object v2, v1

    .line 121
    .line 122
    :goto_2
    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 130
    move-result-object v11

    .line 131
    .line 132
    new-instance v13, Lcom/narvii/crop/BitmapCropTask;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 136
    move-result-object v2

    .line 137
    .line 138
    iget-object v3, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->rawBitmap:Landroid/graphics/Bitmap;

    .line 139
    const/4 v4, 0x0

    .line 140
    .line 141
    const/high16 v7, 0x3f800000    # 1.0f

    .line 142
    .line 143
    const/16 v8, 0x2d0

    .line 144
    .line 145
    const/16 v9, 0x500

    .line 146
    .line 147
    new-instance v12, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;

    .line 148
    .line 149
    .line 150
    invoke-direct {v12, p0, v0}, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;-><init>(Lcom/narvii/scene/template/CropTemplateImageFragment;Lcom/narvii/theme/ThemeImage;)V

    .line 151
    move-object v1, v13

    .line 152
    .line 153
    .line 154
    invoke-direct/range {v1 .. v12}, Lcom/narvii/crop/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;FIILjava/lang/String;Ljava/lang/String;Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;)V

    .line 155
    const/4 v0, 0x0

    .line 156
    .line 157
    new-array v0, v0, [Ljava/lang/Void;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v13, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    :cond_4
    return-void

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-direct {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->showError()V

    .line 165
    return-void
.end method

.method private final getBinding()Lcom/narvii/mediaeditor/databinding/FragmentCropTemplateImageBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/scene/template/CropTemplateImageFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/mediaeditor/databinding/FragmentCropTemplateImageBinding;

    .line 14
    return-object v0
.end method

.method private final initCropView()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "cropView"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    :cond_0
    const/high16 v3, 0x3f100000    # 0.5625f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3}, Lcom/narvii/crop/CropView;->setAspectRatio(F)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 24
    move-object v0, v1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    sget v4, Lcom/narvii/mediaeditor/R$dimen;->cover_image_left_padding:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    sget v6, Lcom/narvii/mediaeditor/R$dimen;->cover_image_top_padding:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v7

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    move-result v4

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result v6

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3, v5, v4, v6}, Lcom/narvii/crop/CropView;->setCustomPadding(IIII)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move-object v1, v0

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/crop/CropView;->getOverlayView()Lcom/narvii/crop/OverlayView;

    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setRadius(I)V

    .line 81
    const/4 v2, 0x1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lcom/narvii/crop/OverlayView;->setDrawCropLines(Z)V

    .line 85
    const/4 v3, 0x2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3}, Lcom/narvii/crop/OverlayView;->setCropGridStrokeWidth(I)V

    .line 89
    const/4 v4, 0x6

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4}, Lcom/narvii/crop/OverlayView;->setCropGridRowCount(I)V

    .line 93
    const/4 v4, 0x3

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Lcom/narvii/crop/OverlayView;->setCropGridColumnCount(I)V

    .line 97
    .line 98
    .line 99
    const v4, 0x4dffffff    # 5.3687088E8f

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v4}, Lcom/narvii/crop/OverlayView;->setCropGridColor(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lcom/narvii/crop/OverlayView;->setShowCropFrame(Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setRoundedDimmedLayer(Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Lcom/narvii/crop/OverlayView;->setCropFrameStrokeWidth(I)V

    .line 112
    const/4 v1, -0x1

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setCropFrameColor(I)V

    .line 116
    .line 117
    new-instance v1, Landroid/graphics/DashPathEffect;

    .line 118
    .line 119
    new-array v2, v3, [F

    .line 120
    .line 121
    .line 122
    fill-array-data v2, :array_0

    .line 123
    .line 124
    const/high16 v3, 0x41000000    # 8.0f

    .line 125
    .line 126
    .line 127
    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/narvii/crop/OverlayView;->setCropFramePathEffect(Landroid/graphics/PathEffect;)V

    .line 131
    return-void

    .line 132
    nop

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private final loadSourceImage(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "imageLoader"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    :cond_0
    new-instance v1, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;-><init>(Lcom/narvii/scene/template/CropTemplateImageFragment;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 19
    return-void
.end method

.method private final showError()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    const/high16 v1, -0x1000000

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 8
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_actionbar_close:I

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/theme/ThemeImage;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "themeImage"

    .line 9
    .line 10
    const-string v2, "outputUrl"

    .line 11
    .line 12
    const-string v3, "imageId"

    .line 13
    .line 14
    const-string v4, "imageUrl"

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string v4, "getStringParam(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/narvii/theme/ThemeImage;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    const-string v5, ""

    .line 65
    .line 66
    if-nez v4, :cond_1

    .line 67
    move-object v4, v5

    .line 68
    .line 69
    :cond_1
    iput-object v4, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    if-nez v3, :cond_2

    .line 76
    move-object v3, v5

    .line 77
    .line 78
    :cond_2
    iput-object v3, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    if-nez v2, :cond_3

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    move-object v5, v2

    .line 87
    .line 88
    :goto_0
    iput-object v5, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->outputUrl:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    check-cast p1, Lcom/narvii/theme/ThemeImage;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    .line 101
    .line 102
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string v0, "crop image ->  onCreate >>> id="

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v0, "   url="

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v0, "    themeImage="

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    const-string v0, "CropTemplateImageFragment"

    .line 142
    .line 143
    .line 144
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    const-string p1, "photo"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    const-string v0, "getService(...)"

    .line 153
    .line 154
    .line 155
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 158
    .line 159
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 160
    .line 161
    const-string p1, "imageLoader"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    .line 168
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    .line 171
    .line 172
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 173
    const/4 p1, 0x1

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 177
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    sget v1, Lcom/narvii/mediaeditor/R$string;->submit:I

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    new-instance v8, Lcom/narvii/util/ActionBarIcon;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    sget v1, Lcom/narvii/mediaeditor/R$string;->fa_check:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    const v4, 0x3f59999a    # 0.85f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    sget v5, Lcom/narvii/mediaeditor/R$color;->white:I

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 42
    move-result v5

    .line 43
    .line 44
    const/16 v6, 0xff

    .line 45
    const/4 v7, 0x0

    .line 46
    move-object v1, v8

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x2

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 58
    .line 59
    .line 60
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentCropTemplateImageBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/FragmentCropTemplateImageBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    move-result v0

    .line 10
    .line 11
    sget v1, Lcom/narvii/mediaeditor/R$string;->submit:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->crop()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    const-string v0, "imageUrl"

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "imageId"

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->themeImage:Lcom/narvii/theme/ThemeImage;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "themeImage"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    sget p2, Lcom/narvii/mediaeditor/R$id;->crop_view:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string p2, "findViewById(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/crop/CropView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->cropView:Lcom/narvii/crop/CropView;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->initCropView()V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment;->imageUrl:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/CropTemplateImageFragment;->loadSourceImage(Ljava/lang/String;)V

    .line 33
    return-void
.end method
