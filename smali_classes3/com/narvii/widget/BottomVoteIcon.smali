.class public Lcom/narvii/widget/BottomVoteIcon;
.super Lcom/narvii/widget/VoteIcon;
.source "BottomVoteIcon.java"


# instance fields
.field private normalId:I

.field private votedId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/VoteIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-object v0, Lcom/narvii/amino/R$styleable;->BottomVoteIcon:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f08035d

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/BottomVoteIcon;->normalId:I

    const/4 p2, 0x1

    const v0, 0x7f08055e

    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/BottomVoteIcon;->votedId:I

    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getVoteIconRes(I)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 45
    iget p1, p0, Lcom/narvii/widget/BottomVoteIcon;->votedId:I

    return p1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iget p1, p0, Lcom/narvii/widget/BottomVoteIcon;->normalId:I

    return p1

    .line 47
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/widget/VoteIcon;->getVoteIconRes(I)I

    move-result p1

    return p1
.end method

.method public setVoteNormalId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/narvii/widget/BottomVoteIcon;->normalId:I

    .line 34
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setVotedId(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/narvii/widget/BottomVoteIcon;->votedId:I

    .line 39
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method protected updateView(I)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/widget/BottomVoteIcon;->getVoteIconRes(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
