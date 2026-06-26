.class public Lcom/narvii/widget/WrapScrollView;
.super Lcom/narvii/widget/NVScrollView;
.source "WrapScrollView.java"


# instance fields
.field wrapHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object v0, Lcom/narvii/lib/R$styleable;->WrapScrollView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    sget p2, Lcom/narvii/lib/R$styleable;->WrapScrollView_wrapHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/WrapScrollView;->wrapHeight:I

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 25
    iget v0, p0, Lcom/narvii/widget/WrapScrollView;->wrapHeight:I

    if-lez v0, :cond_0

    const/high16 p2, -0x80000000

    .line 26
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 29
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method
