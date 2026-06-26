.class public final Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;
.super Ljava/lang/Object;
.source "CropTemplateImageFragment.kt"

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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropTemplateImageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropTemplateImageFragment.kt\ncom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1\n*L\n1#1,206:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/CropTemplateImageFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    iput-object p2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-static {p1}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$showError(Lcom/narvii/scene/template/CropTemplateImageFragment;)V

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-static {p2, p1}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$setRawBitmap$p(Lcom/narvii/scene/template/CropTemplateImageFragment;Landroid/graphics/Bitmap;)V

    .line 145
    new-instance p1, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;

    invoke-direct {p1, p0}, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;-><init>(Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
