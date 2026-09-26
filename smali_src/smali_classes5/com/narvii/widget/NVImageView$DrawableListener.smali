.class Lcom/narvii/widget/NVImageView$DrawableListener;
.super Ljava/lang/Object;
.source "SourceFile"

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

    iput-object p1, p0, Lcom/narvii/widget/NVImageView$DrawableListener;->this$0:Lcom/narvii/widget/NVImageView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVImageView$DrawableListener;-><init>(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$DrawableListener;->this$0:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/widget/NVImageView$DrawableListener;->this$0:Lcom/narvii/widget/NVImageView;

    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 18
    :cond_0
    return-void
.end method

.method public onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/widget/NVImageView$DrawableListener;->this$0:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    iget-object p3, p3, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/widget/NVImageView$DrawableListener;->this$0:Lcom/narvii/widget/NVImageView;

    .line 13
    const/4 p3, 0x4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 17
    :cond_0
    return-void
.end method
