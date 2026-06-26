.class public Lcom/narvii/leaderboard/LeaderBoardTabBar;
.super Landroid/widget/LinearLayout;
.source "LeaderBoardTabBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;
    }
.end annotation


# static fields
.field private static final COUNT_COLUMN:I = 0x3


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/narvii/model/LeaderBoardItem;",
            ">;>;"
        }
    .end annotation
.end field

.field listener:Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/narvii/leaderboard/LeaderBoardTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 43
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public setCheckPosition(I)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 132
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 133
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 134
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    if-lt v4, v2, :cond_0

    goto :goto_5

    :cond_0
    mul-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v4

    .line 140
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 141
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    if-ne v5, p1, :cond_1

    const v8, 0x7f080597

    goto :goto_2

    :cond_1
    const v8, 0x7f080596

    :goto_2
    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v7, 0x7f090b9a

    .line 144
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, -0xe75b0a

    const/4 v9, -0x1

    if-ne v5, p1, :cond_2

    const v10, -0xe75b0a

    goto :goto_3

    :cond_2
    const/4 v10, -0x1

    :goto_3
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const v7, 0x7f090b08

    .line 145
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-ne v5, p1, :cond_3

    goto :goto_4

    :cond_3
    const/4 v8, -0x1

    :goto_4
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setLeaderBoardItems(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/LeaderBoardItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v0, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_4

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v7, v6

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_3

    goto :goto_3

    .line 70
    :cond_3
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 72
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    :cond_5
    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-le p1, v0, :cond_6

    .line 76
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_5
    if-ge p1, v0, :cond_f

    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_8

    .line 82
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0b03e3

    invoke-virtual {v2, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 83
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    :cond_8
    iget-object v5, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 87
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v1, :cond_e

    const/4 v8, 0x4

    if-lt v7, v6, :cond_9

    .line 91
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 94
    :cond_9
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/LeaderBoardItem;

    .line 95
    instance-of v10, v2, Landroid/view/ViewGroup;

    if-eqz v10, :cond_d

    .line 96
    move-object v10, v2

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-ge v7, v6, :cond_a

    const/4 v8, 0x0

    :cond_a
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    if-ge v7, v6, :cond_d

    .line 98
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 99
    iget v10, v9, Lcom/narvii/model/LeaderBoardItem;->type:I

    sub-int/2addr v10, v4

    .line 104
    sget-object v10, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    iget v11, v9, Lcom/narvii/model/LeaderBoardItem;->type:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 105
    sget-object v11, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    iget v9, v9, Lcom/narvii/model/LeaderBoardItem;->type:I

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v10, :cond_b

    const v10, 0x7f0f0aba

    :cond_b
    if-nez v9, :cond_c

    const v10, 0x7f0f0ac6

    :cond_c
    const v11, 0x7f090b9a

    .line 113
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f090b08

    .line 114
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-int/lit8 v9, p1, 0x3

    add-int/2addr v9, v7

    .line 116
    new-instance v10, Lcom/narvii/leaderboard/LeaderBoardTabBar$1;

    invoke-direct {v10, p0, v9}, Lcom/narvii/leaderboard/LeaderBoardTabBar$1;-><init>(Lcom/narvii/leaderboard/LeaderBoardTabBar;I)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_e
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_5

    :cond_f
    return-void
.end method

.method public setLeaderBoardTabClickListener(Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->listener:Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;

    return-void
.end method
