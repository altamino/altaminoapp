.class public Lcom/narvii/user/title/UserTitleFlowView;
.super Lcom/narvii/util/layouts/NVFlowLayout;
.source "SourceFile"


# instance fields
.field darkTheme:Z

.field userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/layouts/NVFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/user/title/UserTitleColorHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/narvii/user/title/UserTitleColorHelper;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 18
    return-void
.end method

.method private getBackgroundOfUserTitle(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/api/UserTitle;->type:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    const/4 v1, 0x3

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getBackgroundDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/GradientDrawable;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/narvii/user/title/UserTitleFlowView;->darkTheme:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    const v0, 0x7f080a19

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    const v0, 0x7f080a18

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/narvii/user/title/UserTitleFlowView;->darkTheme:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    .line 49
    const v0, 0x7f080a16

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_3
    const v0, 0x7f080a15

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    const v0, 0x7f080a17

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method private getStartDrawableId(Lcom/narvii/model/api/UserTitle;)I
    .locals 1

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/model/api/UserTitle;->type:I

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v0, 0x3

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/user/title/UserTitleFlowView;->darkTheme:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    const p1, 0x7f080672

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    const p1, 0x7f080671

    .line 22
    :goto_0
    return p1

    .line 23
    .line 24
    .line 25
    :cond_2
    const p1, 0x7f08066e

    .line 26
    return p1
.end method

.method private getTextColor(Lcom/narvii/model/api/UserTitle;)I
    .locals 3

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/api/UserTitle;->type:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, -0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    const v2, -0xb5b5b6

    .line 26
    :goto_0
    return v2

    .line 27
    .line 28
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/user/title/UserTitleFlowView;->darkTheme:Z

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_2
    const v2, -0xe5e5e6

    .line 35
    :goto_1
    return v2

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    const v0, 0x7f06015f

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 50
    move-result p1

    .line 51
    return p1
.end method


# virtual methods
.method public setDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/user/title/UserTitleFlowView;->darkTheme:Z

    return-void
.end method

.method public setTitleList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/model/api/UserTitle;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    const v4, 0x7f0d0782

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    const v3, 0x7f0a0e9e

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    check-cast v3, Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v4, v1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v1}, Lcom/narvii/user/title/UserTitleFlowView;->getStartDrawableId(Lcom/narvii/model/api/UserTitle;)I

    .line 55
    move-result v4

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    .line 64
    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    const/high16 v6, 0x40800000    # 4.0f

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 75
    move-result v5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 82
    move-result v5

    .line 83
    const/4 v6, 0x0

    .line 84
    .line 85
    if-eqz v5, :cond_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v6, v6, v4, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/narvii/user/title/UserTitleFlowView;->getBackgroundOfUserTitle(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/Drawable;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v1}, Lcom/narvii/user/title/UserTitleFlowView;->getTextColor(Lcom/narvii/model/api/UserTitle;)I

    .line 103
    move-result v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    goto :goto_0

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 114
    move-result p1

    .line 115
    .line 116
    if-nez p1, :cond_3

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    const v0, 0x7f0d0781

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lcom/narvii/util/layouts/NVFlowLayout;->addMoreView(Landroid/view/View;)V

    .line 135
    :cond_3
    return-void
.end method

.method public setUser(Lcom/narvii/model/User;)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/narvii/user/title/UserTitleFlowView;->setUser(Lcom/narvii/model/User;Z)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->customTitles()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-eqz p2, :cond_9

    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/User;->getActiveFanClubList()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 8
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/influencer/FanClub;

    if-eqz v4, :cond_3

    .line 9
    iget-object v5, v4, Lcom/narvii/influencer/FanClub;->targetUserProfile:Lcom/narvii/model/User;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance v5, Lcom/narvii/model/api/UserTitle;

    iget-object v4, v4, Lcom/narvii/influencer/FanClub;->targetUserProfile:Lcom/narvii/model/User;

    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/narvii/model/api/UserTitle;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/User;->isVerified()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 13
    invoke-virtual {p1}, Lcom/narvii/model/User;->getVerifiedTagList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    new-instance v4, Lcom/narvii/model/api/UserTitle;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Lcom/narvii/model/api/UserTitle;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_7
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 19
    :cond_8
    invoke-virtual {p1}, Lcom/narvii/model/User;->roleName()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 21
    new-instance v2, Lcom/narvii/model/api/UserTitle;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Lcom/narvii/model/api/UserTitle;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 22
    :cond_9
    invoke-virtual {p0, v0}, Lcom/narvii/user/title/UserTitleFlowView;->setTitleList(Ljava/util/List;)V

    .line 23
    new-instance p2, Lcom/narvii/user/title/UserTitleFlowView$1;

    invoke-direct {p2, p0, p1}, Lcom/narvii/user/title/UserTitleFlowView$1;-><init>(Lcom/narvii/user/title/UserTitleFlowView;Lcom/narvii/model/User;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
