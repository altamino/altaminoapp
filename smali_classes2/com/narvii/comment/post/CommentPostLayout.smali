.class public Lcom/narvii/comment/post/CommentPostLayout;
.super Landroid/widget/LinearLayout;
.source "CommentPostLayout.java"


# instance fields
.field drawTop:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostLayout;->drawTop:Landroid/view/View;

    if-ne v1, v2, :cond_2

    if-ge p2, v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 22
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090293

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostLayout;->drawTop:Landroid/view/View;

    return-void
.end method
