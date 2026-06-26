.class final Lcom/github/mmin18/widget/FlexLayout$37;
.super Lcom/github/mmin18/widget/FlexLayout$Operator;
.source "FlexLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1095
    invoke-direct/range {p0 .. p5}, Lcom/github/mmin18/widget/FlexLayout$Operator;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/github/mmin18/widget/FlexLayout;IIFF)F
    .locals 2

    .line 1098
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1099
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    const/high16 p5, 0x7fc00000    # Float.NaN

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-nez p3, :cond_2

    .line 1101
    iget p3, p4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    if-ne p3, v1, :cond_0

    .line 1102
    iget p3, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p1, p2, p4, v0, p3}, Lcom/github/mmin18/widget/FlexLayout;->measureChild(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout$LayoutParams;II)Z

    .line 1103
    iput v1, p4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    .line 1105
    :cond_0
    iget p1, p4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p5, p1

    :goto_0
    return p5

    .line 1107
    :cond_2
    iget p3, p4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    if-ne p3, v1, :cond_3

    .line 1108
    iget p3, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, p2, p4, p3, v0}, Lcom/github/mmin18/widget/FlexLayout;->measureChild(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout$LayoutParams;II)Z

    .line 1109
    iput v1, p4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    .line 1111
    :cond_3
    iget p1, p4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    int-to-float p5, p1

    :goto_1
    return p5
.end method
