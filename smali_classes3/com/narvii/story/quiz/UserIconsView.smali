.class public Lcom/narvii/story/quiz/UserIconsView;
.super Landroid/widget/LinearLayout;
.source "UserIconsView.java"


# instance fields
.field private dividerWidth:I

.field private iconHeight:I

.field private iconWidth:I

.field private maxUsers:I

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget-object v0, Lcom/narvii/amino/R$styleable;->UserIconsView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x5

    .line 31
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/story/quiz/UserIconsView;->maxUsers:I

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/story/quiz/UserIconsView;->dividerWidth:I

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x7

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 36
    new-instance p1, Lcom/narvii/story/quiz/UserIconsView$1;

    invoke-direct {p1, p0}, Lcom/narvii/story/quiz/UserIconsView$1;-><init>(Lcom/narvii/story/quiz/UserIconsView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 43
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/quiz/UserIconsView;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/narvii/story/quiz/UserIconsView;->dividerWidth:I

    return p0
.end method

.method private updateViews()V
    .locals 5

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/narvii/story/quiz/UserIconsView;->users:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iget v3, p0, Lcom/narvii/story/quiz/UserIconsView;->maxUsers:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/narvii/story/quiz/UserIconsView;->maxUsers:I

    if-ne v3, v4, :cond_1

    const v3, 0x7f0b037d

    goto :goto_2

    :cond_1
    const v3, 0x7f0b06ae

    :goto_2
    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 63
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 65
    :cond_2
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_3

    .line 69
    :cond_3
    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget v0, p0, Lcom/narvii/story/quiz/UserIconsView;->maxUsers:I

    if-ge v2, v0, :cond_4

    .line 70
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 71
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iget-object v1, p0, Lcom/narvii/story/quiz/UserIconsView;->users:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/story/quiz/UserIconsView;->users:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int v2, p1, v1

    const v3, 0xffffff

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, -0x1

    if-ne v2, v4, :cond_1

    and-int v2, p1, v3

    .line 81
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v2, v6

    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/narvii/story/quiz/UserIconsView;->dividerWidth:I

    mul-int v6, v6, v7

    sub-int/2addr v2, v6

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    div-int v0, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    and-int/2addr v1, p2

    if-ne v1, v4, :cond_3

    and-int v1, p2, v3

    .line 86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v5, :cond_2

    move v0, v1

    goto :goto_1

    .line 90
    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    :goto_1
    if-eq v0, v5, :cond_4

    const/4 v1, 0x0

    .line 95
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 96
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/narvii/story/quiz/UserIconsView;->users:Ljava/util/List;

    .line 48
    invoke-direct {p0}, Lcom/narvii/story/quiz/UserIconsView;->updateViews()V

    return-void
.end method
