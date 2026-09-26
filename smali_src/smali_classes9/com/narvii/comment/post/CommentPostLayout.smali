.class public Lcom/narvii/comment/post/CommentPostLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field drawTop:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    if-ge v0, p1, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostLayout;->drawTop:Landroid/view/View;

    .line 10
    .line 11
    if-ne v1, v2, :cond_2

    .line 12
    .line 13
    if-ge p2, v0, :cond_0

    .line 14
    return p2

    .line 15
    .line 16
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    if-ne p2, p1, :cond_1

    .line 19
    return v0

    .line 20
    .line 21
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 22
    return p2

    .line 23
    .line 24
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a035b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostLayout;->drawTop:Landroid/view/View;

    .line 13
    return-void
.end method
