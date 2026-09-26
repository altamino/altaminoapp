.class Lcom/narvii/widget/NVImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    .line 33
    const/4 v1, 0x2

    .line 34
    const/4 v2, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    .line 41
    .line 42
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/narvii/widget/NVImageView$1;->this$0:Lcom/narvii/widget/NVImageView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 52
    const/4 v0, 0x4

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 56
    :cond_1
    :goto_0
    return-void
.end method
