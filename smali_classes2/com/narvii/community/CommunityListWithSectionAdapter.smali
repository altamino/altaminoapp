.class public abstract Lcom/narvii/community/CommunityListWithSectionAdapter;
.super Lcom/narvii/community/BaseCommunityListAdapter;
.source "CommunityListWithSectionAdapter.java"


# static fields
.field protected static final TYPE_FAKE_TRENDING_SECTION_ITEM:I = 0x385


# instance fields
.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/community/BaseCommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected configTopCell()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Lcom/narvii/model/Community;

    invoke-direct {v1}, Lcom/narvii/model/Community;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->sectionName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    const/16 v2, 0x385

    .line 57
    iput v2, v1, Lcom/narvii/model/Community;->listedStatus:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 74
    instance-of v0, p1, Lcom/narvii/model/Community;

    if-eqz v0, :cond_2

    .line 75
    check-cast p1, Lcom/narvii/model/Community;

    iget p1, p1, Lcom/narvii/model/Community;->listedStatus:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/16 v0, 0x385

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 89
    instance-of v0, p1, Lcom/narvii/model/Community;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Community;

    iget v2, v0, Lcom/narvii/model/Community;->listedStatus:I

    const/16 v3, 0x385

    if-ne v2, v3, :cond_1

    .line 91
    sget p1, Lcom/narvii/lib/R$layout;->item_community_pre_search_section_layout:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 92
    sget p2, Lcom/narvii/lib/R$id;->pre_key:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 93
    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 94
    check-cast p2, Landroid/widget/TextView;

    iget-object p3, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->getTrendingSectionItemBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->notSetCellTag(Landroid/view/View;)V

    return-object p1

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->supportUnlistedStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/narvii/model/Community;->listedStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 100
    sget p1, Lcom/narvii/lib/R$layout;->incubator_searched_community_item_unlist:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/community/BaseCommunityListAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 102
    sget p2, Lcom/narvii/lib/R$id;->community_invite_lock:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 104
    invoke-virtual {v0}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-object p1

    .line 108
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/community/BaseCommunityListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method protected getTrendingSectionItemBackgroundColor()I
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->default_section_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected innerNotifyDataSetChanged()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 120
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    .line 43
    iget-object v1, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->configTopCell()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 44
    iget-object v1, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected sectionName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected supportUnlistedStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
