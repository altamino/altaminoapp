.class Lcom/narvii/widget/NVImageView$DrawableListener;
.super Ljava/lang/Object;
.source "NVImageView.java"

# interfaces
.implements Lcom/narvii/util/drawables/DrawableLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawableListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVImageView;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 1009
    iput-object p1, p0, Lcom/narvii/widget/NVImageView$DrawableListener;->this$0:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView$1;)V
    .locals 0

    .line 1009
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVImageView$DrawableListener;-><init>(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$DrawableListener;->this$0:Lcom/narvii/widget/NVImageView;

    iget-object v0, v0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1021
    iget-object p1, p0, Lcom/narvii/widget/NVImageView$DrawableListener;->this$0:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    :cond_0
    return-void
.end method

.method public onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 1013
    iget-object p3, p0, Lcom/narvii/widget/NVImageView$DrawableListener;->this$0:Lcom/narvii/widget/NVImageView;

    iget-object p3, p3, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1014
    iget-object p1, p0, Lcom/narvii/widget/NVImageView$DrawableListener;->this$0:Lcom/narvii/widget/NVImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method
