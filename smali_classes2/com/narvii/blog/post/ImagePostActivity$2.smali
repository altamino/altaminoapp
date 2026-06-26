.class Lcom/narvii/blog/post/ImagePostActivity$2;
.super Ljava/lang/Object;
.source "ImagePostActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/ImagePostActivity;
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

    .line 194
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f090578

    if-ne p2, p3, :cond_1

    .line 198
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iget-object p2, p2, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 199
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iget-object p2, p2, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 200
    iget-object p3, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iget-object p4, p3, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    if-eqz p4, :cond_1

    instance-of p4, p1, Landroid/widget/ImageView;

    if-eqz p4, :cond_1

    invoke-static {p3}, Lcom/narvii/blog/post/ImagePostActivity;->access$000(Lcom/narvii/blog/post/ImagePostActivity;)I

    move-result p3

    if-eqz p3, :cond_1

    .line 201
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iget-object p4, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {p4}, Lcom/narvii/blog/post/ImagePostActivity;->access$000(Lcom/narvii/blog/post/ImagePostActivity;)I

    move-result p4

    mul-int p3, p3, p4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    div-int/2addr p3, p1

    .line 206
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    :cond_1
    :goto_0
    return-void
.end method
