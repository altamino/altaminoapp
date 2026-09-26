.class public Lcom/narvii/widget/ExpandTextView;
.super Lcom/narvii/util/text/TextViewFixTouchConsume;
.source "SourceFile"


# instance fields
.field private expand:Z

.field private expandId:I

.field private expandable:Ljava/lang/Boolean;

.field private maxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/text/TextViewFixTouchConsume;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->ExpandTextView:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->ExpandTextView_expandId:I

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$id;->expand:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    move-result p2

    .line 18
    .line 19
    iput p2, p0, Lcom/narvii/widget/ExpandTextView;->expandId:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    const/4 p1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 27
    return-void
.end method

.method private expandView()Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/ExpandTextView;->expandId:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/widget/ExpandTextView;->expandId:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1
    return-object v1
.end method


# virtual methods
.method public isExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/ExpandTextView;->expand:Z

    return v0
.end method

.method public isExpandable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 12
    move-result p1

    .line 13
    .line 14
    if-lez p1, :cond_1

    .line 15
    .line 16
    iget p3, p0, Lcom/narvii/widget/ExpandTextView;->maxLines:I

    .line 17
    .line 18
    if-lez p3, :cond_0

    .line 19
    .line 20
    if-ge p3, p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, p2

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/widget/ExpandTextView;->expandView()Landroid/view/View;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iget-boolean p3, p0, Lcom/narvii/widget/ExpandTextView;->expand:Z

    .line 42
    .line 43
    if-nez p3, :cond_2

    .line 44
    .line 45
    iget-object p3, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    move-result p3

    .line 50
    .line 51
    if-eqz p3, :cond_2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 p2, 0x4

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_3
    return-void
.end method

.method public setExpand(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/ExpandTextView;->expand:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    const v0, 0x7fffffff

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/narvii/widget/ExpandTextView;->maxLines:I

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/widget/ExpandTextView;->expandView()Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    const/4 p1, 0x4

    .line 32
    .line 33
    .line 34
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_3
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/widget/ExpandTextView;->maxLines:I

    .line 6
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 p1, 0x0

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/widget/ExpandTextView;->expandable:Ljava/lang/Boolean;

    .line 27
    :cond_0
    return-void
.end method
