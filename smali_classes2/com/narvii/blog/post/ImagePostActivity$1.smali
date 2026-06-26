.class Lcom/narvii/blog/post/ImagePostActivity$1;
.super Ljava/lang/Object;
.source "ImagePostActivity.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/ImagePostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/ImagePostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/ImagePostActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 5

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    .line 132
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {p2}, Lcom/narvii/blog/post/ImagePostActivity;->access$000(Lcom/narvii/blog/post/ImagePostActivity;)I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iget-object p2, p2, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p3, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {p3}, Lcom/narvii/blog/post/ImagePostActivity;->access$000(Lcom/narvii/blog/post/ImagePostActivity;)I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    div-int/2addr p2, p3

    .line 137
    iget-object p3, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iget-object p3, p3, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 138
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iget-object v1, v0, Lcom/narvii/blog/post/ImagePostActivity;->screenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, v1, v0

    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {v3}, Lcom/narvii/blog/post/ImagePostActivity;->access$000(Lcom/narvii/blog/post/ImagePostActivity;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    div-float/2addr v1, v3

    .line 141
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    div-float/2addr v3, v4

    cmpl-float v1, v3, v1

    if-lez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iget-object v1, v1, Lcom/narvii/blog/post/ImagePostActivity;->screenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-le p2, v1, :cond_1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iget-object v3, v1, Lcom/narvii/blog/post/ImagePostActivity;->screenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr v3, v1

    mul-float v3, v3, v0

    div-float/2addr p2, v3

    .line 145
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {v0}, Lcom/narvii/blog/post/ImagePostActivity;->access$000(Lcom/narvii/blog/post/ImagePostActivity;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    sub-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 146
    instance-of p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1

    .line 147
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    :cond_1
    :goto_0
    return-void
.end method
