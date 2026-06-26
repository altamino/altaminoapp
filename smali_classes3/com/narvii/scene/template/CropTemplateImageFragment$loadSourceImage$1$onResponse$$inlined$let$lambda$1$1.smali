.class final Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1$1;
.super Ljava/lang/Object;
.source "CropTemplateImageFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropTemplateImageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropTemplateImageFragment.kt\ncom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$1$1$1$1\n*L\n1#1,206:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $themeImage:Lcom/narvii/theme/ThemeImage;

.field final synthetic this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lcom/narvii/theme/ThemeImage;Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1$1;->$themeImage:Lcom/narvii/theme/ThemeImage;

    iput-object p2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;

    iget-object v0, v0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-static {v0}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getCropView$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Lcom/narvii/crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1$1;->$themeImage:Lcom/narvii/theme/ThemeImage;

    iget-object v2, v2, Lcom/narvii/theme/ThemeImage;->imageMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v0, v1}, Lcom/narvii/crop/TransformImageView;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
