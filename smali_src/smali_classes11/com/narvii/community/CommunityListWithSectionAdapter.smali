.class public abstract Lcom/narvii/community/CommunityListWithSectionAdapter;
.super Lcom/narvii/community/BaseCommunityListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/community/BaseCommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/model/Community;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lcom/narvii/model/Community;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->sectionName()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    iput-object v2, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v2, 0x385

    .line 19
    .line 20
    iput v2, v1, Lcom/narvii/model/Community;->listedStatus:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Community;

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/model/Community;->listedStatus:I

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    return v0

    .line 17
    .line 18
    :cond_1
    const/16 v0, 0x385

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    const/4 p1, 0x3

    .line 22
    return p1

    .line 23
    :cond_2
    const/4 p1, -0x1

    .line 24
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    move-object v0, p1

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/Community;

    .line 9
    .line 10
    iget v2, v0, Lcom/narvii/model/Community;->listedStatus:I

    .line 11
    .line 12
    const/16 v3, 0x385

    .line 13
    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    sget p1, Lcom/narvii/lib/R$layout;->item_community_pre_search_section_layout:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    sget p2, Lcom/narvii/lib/R$id;->pre_key:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    instance-of p3, p2, Landroid/widget/TextView;

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    check-cast p2, Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object p3, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->getTrendingSectionItemBackgroundColor()I

    .line 41
    move-result p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->notSetCellTag(Landroid/view/View;)V

    .line 48
    return-object p1

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->supportUnlistedStatus()Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    iget v2, v0, Lcom/narvii/model/Community;->listedStatus:I

    .line 57
    const/4 v3, 0x1

    .line 58
    .line 59
    if-ne v2, v3, :cond_4

    .line 60
    .line 61
    sget p1, Lcom/narvii/lib/R$layout;->incubator_searched_community_item_unlist:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/community/BaseCommunityListAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 69
    .line 70
    sget p2, Lcom/narvii/lib/R$id;->community_invite_lock:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/model/Community;->shouldShowLock()Z

    .line 80
    move-result p3

    .line 81
    .line 82
    if-eqz p3, :cond_2

    .line 83
    const/4 p3, 0x0

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_2
    const/16 p3, 0x8

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_3
    return-object p1

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/community/BaseCommunityListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_5
    return-object v1
.end method

.method protected getTrendingSectionItemBackgroundColor()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$color;->default_section_color:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected innerNotifyDataSetChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    return-void
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    .line 26
    move-result p1

    .line 27
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

    iget-object v0, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->configTopCell()Ljava/util/List;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/community/CommunityListWithSectionAdapter;->l:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 48
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
