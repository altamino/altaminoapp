.class Lcom/narvii/blog/post/ImagePostActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    const p3, 0x7f0a06fc

    .line 8
    .line 9
    if-ne p2, p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 19
    move-result p2

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    iget-object p3, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 32
    .line 33
    iget-object p4, p3, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz p4, :cond_1

    .line 36
    .line 37
    instance-of p4, p1, Landroid/widget/ImageView;

    .line 38
    .line 39
    if-eqz p4, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-static {p3}, Lcom/narvii/blog/post/ImagePostActivity;->z(Lcom/narvii/blog/post/ImagePostActivity;)I

    .line 43
    move-result p3

    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    check-cast p1, Landroid/widget/ImageView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 57
    move-result p3

    .line 58
    .line 59
    if-nez p3, :cond_0

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 64
    move-result p3

    .line 65
    .line 66
    iget-object p4, p0, Lcom/narvii/blog/post/ImagePostActivity$1;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 67
    .line 68
    .line 69
    invoke-static {p4}, Lcom/narvii/blog/post/ImagePostActivity;->z(Lcom/narvii/blog/post/ImagePostActivity;)I

    .line 70
    move-result p4

    .line 71
    mul-int/2addr p3, p4

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 75
    move-result p1

    .line 76
    div-int/2addr p3, p1

    .line 77
    .line 78
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    nop

    .line 80
    :cond_1
    :goto_0
    return-void
.end method
