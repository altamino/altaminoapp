.class public Lcom/narvii/user/title/UserTitleFlowView;
.super Lcom/narvii/util/layouts/NVFlowLayout;
.source "UserTitleFlowView.java"


# instance fields
.field darkTheme:Z

.field userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/layouts/NVFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    .line 40
    new-instance p1, Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/user/title/UserTitleColorHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    return-void
.end method

.method private getBackgroundOfUserTitle(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 161
    iget v0, p1, Lcom/narvii/model/api/UserTitle;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getBackgroundDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    return-object p1

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/user/title/UserTitleFlowView;->darkTheme:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0807f7

    goto :goto_0

    :cond_1
    const v0, 0x7f0807f6

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 165
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/user/title/UserTitleFlowView;->darkTheme:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0807f4

    goto :goto_1

    :cond_3
    const v0, 0x7f0807f3

    :goto_1
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 163
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0807f5

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getStartDrawableId(Lcom/narvii/model/api/UserTitle;)I
    .locals 1

    .line 139
    iget p1, p1, Lcom/narvii/model/api/UserTitle;->type:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/user/title/UserTitleFlowView;->darkTheme:Z

    if-eqz p1, :cond_1

    const p1, 0x7f080546

    goto :goto_0

    :cond_1
    const p1, 0x7f080545

    :goto_0
    return p1

    :cond_2
    const p1, 0x7f080542

    return p1
.end method

.method private getTextColor(Lcom/narvii/model/api/UserTitle;)I
    .locals 3

    .line 149
    iget v0, p1, Lcom/narvii/model/api/UserTitle;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    move-result p1

    .line 156
    invoke-static {p1}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const v2, -0xb5b5b6

    :goto_0
    return v2

    .line 153
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/user/title/UserTitleFlowView;->darkTheme:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const v2, -0xe5e5e6

    :goto_1
    return v2

    .line 151
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06010c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public setDarkTheme(Z)V
    .locals 0

    .line 44
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

    .line 109
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_3

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/api/UserTitle;

    .line 112
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b06cd

    invoke-virtual {v3, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090b9a

    .line 113
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 114
    iget-object v4, v1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-direct {p0, v1}, Lcom/narvii/user/title/UserTitleFlowView;->getStartDrawableId(Lcom/narvii/model/api/UserTitle;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 120
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v3, v6, v6, v4, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/narvii/user/title/UserTitleFlowView;->getBackgroundOfUserTitle(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-direct {p0, v1}, Lcom/narvii/user/title/UserTitleFlowView;->getTextColor(Lcom/narvii/model/api/UserTitle;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b06cc

    invoke-virtual {p1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/narvii/util/layouts/NVFlowLayout;->addMoreView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setUser(Lcom/narvii/model/User;)V
    .locals 1

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/narvii/user/title/UserTitleFlowView;->setUser(Lcom/narvii/model/User;Z)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;Z)V
    .locals 7

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->customTitles()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-eqz p2, :cond_9

    .line 59
    invoke-virtual {p1}, Lcom/narvii/model/User;->getActiveFanClubList()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 62
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 63
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/influencer/FanClub;

    if-eqz v4, :cond_3

    .line 64
    iget-object v5, v4, Lcom/narvii/influencer/FanClub;->targetUserProfile:Lcom/narvii/model/User;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 67
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

    .line 69
    :cond_4
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 72
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/User;->isVerified()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 73
    invoke-virtual {p1}, Lcom/narvii/model/User;->getVerifiedTagList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 80
    :cond_6
    new-instance v4, Lcom/narvii/model/api/UserTitle;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Lcom/narvii/model/api/UserTitle;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 82
    :cond_7
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 86
    :cond_8
    invoke-virtual {p1}, Lcom/narvii/model/User;->roleName()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 88
    new-instance v2, Lcom/narvii/model/api/UserTitle;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Lcom/narvii/model/api/UserTitle;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 91
    :cond_9
    invoke-virtual {p0, v0}, Lcom/narvii/user/title/UserTitleFlowView;->setTitleList(Ljava/util/List;)V

    .line 93
    new-instance p2, Lcom/narvii/user/title/UserTitleFlowView$1;

    invoke-direct {p2, p0, p1}, Lcom/narvii/user/title/UserTitleFlowView$1;-><init>(Lcom/narvii/user/title/UserTitleFlowView;Lcom/narvii/model/User;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
