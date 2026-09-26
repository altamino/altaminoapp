.class public final Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/CropTemplateImageFragment;->loadSourceImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/CropTemplateImageFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->$url:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/template/CropTemplateImageFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->onResponse$lambda$4$lambda$3(Lcom/narvii/scene/template/CropTemplateImageFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/scene/template/CropTemplateImageFragment;Lcom/narvii/theme/ThemeImage;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->onResponse$lambda$4$lambda$3$lambda$2$lambda$1(Lcom/narvii/scene/template/CropTemplateImageFragment;Lcom/narvii/theme/ThemeImage;)V

    return-void
.end method

.method private static final onResponse$lambda$4$lambda$3(Lcom/narvii/scene/template/CropTemplateImageFragment;Ljava/lang/String;)V
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
    const-string v0, "$url"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/crop/CropView;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    const-string v2, "cropView"

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 30
    move-object v0, v1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getRawBitmap$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Landroid/graphics/Bitmap;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/crop/CropView;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 60
    move-object v0, v1

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/crop/CropView;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move-object v1, v0

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iput-object p1, v0, Lcom/narvii/crop/CropImageView;->imageUrl:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getThemeImage$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/theme/ThemeImage;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    new-instance v0, Lcom/narvii/scene/template/b;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0, p1}, Lcom/narvii/scene/template/b;-><init>(Lcom/narvii/scene/template/CropTemplateImageFragment;Lcom/narvii/theme/ThemeImage;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 95
    :cond_3
    return-void
.end method

.method private static final onResponse$lambda$4$lambda$3$lambda$2$lambda$1(Lcom/narvii/scene/template/CropTemplateImageFragment;Lcom/narvii/theme/ThemeImage;)V
    .locals 1

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
    const-string v0, "$themeImage"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/crop/CropView;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, "cropView"

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 23
    const/4 p0, 0x0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/theme/ThemeImage;->imageMatrix:[F

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/crop/TransformImageView;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1    # Lcom/android/volley/VolleyError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$showError(Lcom/narvii/scene/template/CropTemplateImageFragment;)V

    .line 6
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1
    .param p1    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->$url:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p1}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$setRawBitmap$p(Lcom/narvii/scene/template/CropTemplateImageFragment;Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/scene/template/a;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2, v0}, Lcom/narvii/scene/template/a;-><init>(Lcom/narvii/scene/template/CropTemplateImageFragment;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 24
    :cond_0
    return-void
.end method
