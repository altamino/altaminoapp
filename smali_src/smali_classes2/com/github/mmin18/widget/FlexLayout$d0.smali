.class Lcom/github/mmin18/widget/FlexLayout$d0;
.super Lcom/github/mmin18/widget/FlexLayout$m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/github/mmin18/widget/FlexLayout$m0;-><init>(Ljava/lang/String;IIII)V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/github/mmin18/widget/FlexLayout;IIFF)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object p4

    .line 9
    .line 10
    check-cast p4, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 11
    .line 12
    const/high16 p5, 0x7fc00000    # Float.NaN

    .line 13
    const/4 v0, -0x2

    .line 14
    const/4 v1, -0x1

    .line 15
    .line 16
    if-nez p3, :cond_2

    .line 17
    .line 18
    iget p3, p4, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    .line 19
    .line 20
    if-ne p3, v1, :cond_0

    .line 21
    .line 22
    iget p3, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2, p4, v0, p3}, Lcom/github/mmin18/widget/FlexLayout;->measureChild(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout$l0;II)Z

    .line 26
    .line 27
    iput v1, p4, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    .line 28
    .line 29
    :cond_0
    iget p1, p4, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    .line 30
    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    int-to-float p5, p1

    .line 34
    :goto_0
    return p5

    .line 35
    .line 36
    :cond_2
    iget p3, p4, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    .line 37
    .line 38
    if-ne p3, v1, :cond_3

    .line 39
    .line 40
    iget p3, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, p4, p3, v0}, Lcom/github/mmin18/widget/FlexLayout;->measureChild(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout$l0;II)Z

    .line 44
    .line 45
    iput v1, p4, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    .line 46
    .line 47
    :cond_3
    iget p1, p4, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    .line 48
    .line 49
    if-ne p1, v1, :cond_4

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    int-to-float p5, p1

    .line 52
    :goto_1
    return p5
.end method
