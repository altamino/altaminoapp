.class public Lcom/narvii/widget/HorizontalUnbrokenLayout;
.super Landroid/widget/LinearLayout;
.source "HorizontalUnbrokenLayout.java"


# static fields
.field public static final COUNT_MAX:I = 0x5


# instance fields
.field private adapter:Lcom/narvii/list/NVArrayAdapter;

.field private isRtl:Z

.field private memberCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/HorizontalUnbrokenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/HorizontalUnbrokenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/narvii/widget/HorizontalUnbrokenLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->isRtl:Z

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    .line 76
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x40800000    # 4.0f

    if-ltz p2, :cond_2

    .line 81
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    sub-int/2addr v4, p3

    if-ne p2, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    div-float/2addr v1, v2

    :goto_1
    int-to-float v4, p5

    add-float/2addr v4, v1

    int-to-float v1, p1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    float-to-int p5, v4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_2
    const/4 p2, 0x5

    if-gt v0, p2, :cond_3

    int-to-float p2, p5

    mul-int/lit8 v3, v1, 0x3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr p2, v3

    int-to-float v3, p1

    cmpg-float p2, p2, v3

    if-gez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    .line 94
    :goto_3
    iget-boolean v3, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->isRtl:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p5

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, p1

    sub-int p1, v3, p5

    :goto_4
    if-eqz p2, :cond_5

    int-to-float p1, p1

    mul-int/lit8 v1, v1, 0x3

    int-to-float p5, v1

    div-float/2addr p5, v2

    add-float/2addr p1, p5

    float-to-int p1, p1

    .line 100
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p5

    move v1, p1

    const/4 p1, 0x0

    :goto_5
    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_9

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-le v0, v3, :cond_6

    return-void

    .line 103
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 104
    iget-boolean v4, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->isRtl:Z

    if-eqz v4, :cond_7

    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p5

    invoke-virtual {v3, v4, p5, v1, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 107
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p5

    invoke-virtual {v3, v1, p5, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 109
    :goto_6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    .line 110
    iget-boolean v4, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->isRtl:Z

    if-eqz v4, :cond_8

    sub-int/2addr v1, v3

    goto :goto_7

    :cond_8
    add-int/2addr v1, v3

    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 112
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    if-eqz p2, :cond_a

    const/16 p4, 0x8

    .line 114
    :cond_a
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-boolean p2, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->isRtl:Z

    if-eqz p2, :cond_b

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int p2, v1, p2

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    .line 116
    invoke-virtual {p1, p2, p5, v1, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    .line 119
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, v1

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    .line 119
    invoke-virtual {p1, v1, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    :cond_c
    :goto_8
    return-void
.end method

.method public setAdapter(Lcom/narvii/list/NVArrayAdapter;I)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->adapter:Lcom/narvii/list/NVArrayAdapter;

    .line 46
    iput p2, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->memberCount:I

    .line 47
    invoke-virtual {p0}, Lcom/narvii/widget/HorizontalUnbrokenLayout;->updateChildViews()V

    return-void
.end method

.method public updateChildViews()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->adapter:Lcom/narvii/list/NVArrayAdapter;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->adapter:Lcom/narvii/list/NVArrayAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 66
    :cond_2
    iget-object v3, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->adapter:Lcom/narvii/list/NVArrayAdapter;

    invoke-virtual {v3, v1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 67
    invoke-virtual {p0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b037d

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
