.class final Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "CropTemplateImageFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropTemplateImageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropTemplateImageFragment.kt\ncom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$1$1\n*L\n1#1,206:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    iget-object v0, v0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    iget-object v0, v0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-static {v0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    iget-object v2, v2, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    iget-object v3, v3, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-static {v3}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getRawBitmap$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    iget-object v0, v0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-static {v0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 150
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    iget-object v0, v0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-static {v0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    iget-object v2, v1, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->$url:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/crop/CropImageView;->imageUrl:Ljava/lang/String;

    .line 151
    iget-object v0, v1, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-static {v0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getThemeImage$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/theme/ThemeImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v1, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1$1;

    invoke-direct {v1, v0, p0}, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1$1;-><init>(Lcom/narvii/theme/ThemeImage;Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
