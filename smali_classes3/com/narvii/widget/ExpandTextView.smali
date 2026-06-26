.class public Lcom/narvii/widget/ExpandTextView;
.super Lcom/narvii/util/text/TextViewFixTouchConsume;
.source "ExpandTextView.java"


# instance fields
.field private expand:Z

.field private expandId:I

.field private expandable:Ljava/lang/Boolean;

.field private maxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/text/TextViewFixTouchConsume;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v0, Lcom/narvii/lib/R$styleable;->ExpandTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 25
    sget p2, Lcom/narvii/lib/R$styleable;->ExpandTextView_expandId:I

    sget v0, Lcom/narvii/lib/R$id;->expand:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/ExpandTextView;->expandId:I

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private expandView()Landroid/view/View;
    .locals 2

    .line 48
    iget v0, p0, Lcom/narvii/widget/ExpandTextView;->expandId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lcom/narvii/widget/ExpandTextView;->expandId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public isExpand()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/narvii/widget/ExpandTextView;->expand:Z

    return v0
.end method

.method public isExpandable()Ljava/lang/Boolean;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 59
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 61
    iget-object p1, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 64
    iget p3, p0, Lcom/narvii/widget/ExpandTextView;->maxLines:I

    if-lez p3, :cond_0

    if-ge p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/narvii/widget/ExpandTextView;->expandView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 70
    iget-boolean p3, p0, Lcom/narvii/widget/ExpandTextView;->expand:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x4

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setExpand(Z)V
    .locals 1

    .line 87
    iput-boolean p1, p0, Lcom/narvii/widget/ExpandTextView;->expand:Z

    if-eqz p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    .line 88
    :cond_0
    iget v0, p0, Lcom/narvii/widget/ExpandTextView;->maxLines:I

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 89
    invoke-direct {p0}, Lcom/narvii/widget/ExpandTextView;->expandView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 91
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x4

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 35
    iput p1, p0, Lcom/narvii/widget/ExpandTextView;->maxLines:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 41
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
