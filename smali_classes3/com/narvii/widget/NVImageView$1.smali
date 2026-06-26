.class Lcom/narvii/widget/NVImageView$1;
.super Ljava/lang/Object;
.source "NVImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVImageView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    iget-object v0, v0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    iget-object v1, v1, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    iget-object v0, v0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    goto :goto_0

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    :goto_0
    return-void
.end method
