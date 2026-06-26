.class public Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "HeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/HeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutParams"
.end annotation


# instance fields
.field public imageMaxHeight:I

.field public imageMinHeight:I

.field public minPaddingTop:I

.field final synthetic this$0:Lcom/narvii/livelayer/detailview/HeaderLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/HeaderLayout;II)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->this$0:Lcom/narvii/livelayer/detailview/HeaderLayout;

    .line 234
    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const p1, 0x7fffffff

    .line 229
    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMaxHeight:I

    .line 230
    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMinHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/livelayer/detailview/HeaderLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 241
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->this$0:Lcom/narvii/livelayer/detailview/HeaderLayout;

    .line 242
    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7fffffff

    .line 229
    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMaxHeight:I

    .line 230
    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMinHeight:I

    .line 243
    sget-object v0, Lcom/narvii/amino/R$styleable;->HeaderLayout_Layout:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 244
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMaxHeight:I

    .line 245
    iget p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMaxHeight:I

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMinHeight:I

    const/4 p1, 0x2

    .line 246
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->minPaddingTop:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/livelayer/detailview/HeaderLayout;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->this$0:Lcom/narvii/livelayer/detailview/HeaderLayout;

    .line 238
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7fffffff

    .line 229
    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMaxHeight:I

    .line 230
    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMinHeight:I

    return-void
.end method
