.class public Lcom/narvii/amino/page/PageTopLevelLayout;
.super Landroid/widget/LinearLayout;
.source "PageTopLevelLayout.java"


# instance fields
.field private chatChildView:Landroid/view/View;

.field clickListener:Lcom/narvii/amino/page/PageItemClickListener;

.field inflater:Landroid/view/LayoutInflater;

.field pageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/page/PageTopLevelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->inflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public getChatChildView()Landroid/view/View;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->chatChildView:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public setPageItemClickListener(Lcom/narvii/amino/page/PageItemClickListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->clickListener:Lcom/narvii/amino/page/PageItemClickListener;

    return-void
.end method

.method public setPageItems(Lcom/narvii/app/NVContext;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;I)V"
        }
    .end annotation

    .line 57
    iput-object p2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    const/4 p2, 0x0

    .line 58
    iput-object p2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->chatChildView:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    :goto_1
    iget-object v2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 68
    iget-object v2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    .line 71
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, p2

    :goto_2
    if-nez v2, :cond_4

    .line 73
    iget-object v2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0410

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 74
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    :cond_4
    iget-object v3, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/modulization/page/Page;

    const v4, 0x7f0906ad

    .line 78
    iget-object v5, v3, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v4, 0x7f090313

    .line 80
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "config"

    .line 81
    invoke-interface {p1, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/config/ConfigService;

    const-string v6, "community"

    .line 82
    invoke-interface {p1, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/community/CommunityService;

    .line 83
    invoke-virtual {v5}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 85
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5}, Lcom/narvii/model/Community;->themeColor()I

    move-result v5

    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    const v4, 0x7f090814

    .line 88
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v3, p1}, Lcom/narvii/modulization/page/Page;->getIconBackgroundDrawable(Lcom/narvii/app/NVContext;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/narvii/modulization/page/Page;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f090815

    .line 92
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/narvii/modulization/page/Page;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f090813

    .line 95
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 96
    invoke-virtual {v3}, Lcom/narvii/modulization/page/Page;->isMyChatPage()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 97
    iput-object v2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->chatChildView:Landroid/view/View;

    .line 99
    :cond_6
    invoke-virtual {v3}, Lcom/narvii/modulization/page/Page;->isMyChatPage()Z

    move-result v5

    if-eqz v5, :cond_7

    if-lez p3, :cond_7

    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v5, 0x9

    if-le p3, v5, :cond_8

    const-string v5, "9+"

    goto :goto_4

    .line 100
    :cond_8
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v4, Lcom/narvii/amino/page/PageTopLevelLayout$1;

    invoke-direct {v4, p0, v1, v3}, Lcom/narvii/amino/page/PageTopLevelLayout$1;-><init>(Lcom/narvii/amino/page/PageTopLevelLayout;ILcom/narvii/modulization/page/Page;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public updateIndicator(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 117
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0906ad

    .line 118
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 119
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f090313

    .line 120
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    .line 122
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v4, 0x7f090bb9

    .line 124
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v3, :cond_2

    const v3, 0x7f0600d6

    goto :goto_2

    :cond_2
    const v3, 0x7f0600d5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 127
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
