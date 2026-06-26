.class final Lcom/narvii/story/CropImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "CropImageFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/CropImageFragment$loadSourceImage$1;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/CropImageFragment$loadSourceImage$1;


# direct methods
.method constructor <init>(Lcom/narvii/story/CropImageFragment$loadSourceImage$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment$loadSourceImage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment$loadSourceImage$1;

    iget-object v0, v0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment$loadSourceImage$1;

    iget-object v0, v0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-static {v0}, Lcom/narvii/story/CropImageFragment;->access$getCropView$p(Lcom/narvii/story/CropImageFragment;)Lcom/narvii/crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment$loadSourceImage$1;

    iget-object v2, v2, Lcom/narvii/story/CropImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment$loadSourceImage$1;

    iget-object v3, v3, Lcom/narvii/story/CropImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-static {v3}, Lcom/narvii/story/CropImageFragment;->access$getRawBitmap$p(Lcom/narvii/story/CropImageFragment;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment$loadSourceImage$1;

    iget-object v0, v0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-static {v0}, Lcom/narvii/story/CropImageFragment;->access$getCropView$p(Lcom/narvii/story/CropImageFragment;)Lcom/narvii/crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 137
    iget-object v0, p0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment$loadSourceImage$1;

    iget-object v0, v0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-static {v0}, Lcom/narvii/story/CropImageFragment;->access$getCropView$p(Lcom/narvii/story/CropImageFragment;)Lcom/narvii/crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/crop/CropView;->getImageView()Lcom/narvii/crop/GestureCropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/CropImageFragment$loadSourceImage$1$onResponse$$inlined$let$lambda$1;->this$0:Lcom/narvii/story/CropImageFragment$loadSourceImage$1;

    iget-object v1, v1, Lcom/narvii/story/CropImageFragment$loadSourceImage$1;->$url:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/crop/CropImageView;->imageUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method
