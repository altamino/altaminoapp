.class public abstract Lcom/narvii/community/BaseCommunityListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "BaseCommunityListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/community/search/SearchCommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field protected communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

.field invitationId:Ljava/lang/String;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 34
    new-instance v0, Lcom/narvii/community/CommunityLayoutHelper;

    invoke-direct {v0, p1}, Lcom/narvii/community/CommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/community/BaseCommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    return-void
.end method


# virtual methods
.method protected communityNameSpecialType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/narvii/community/BaseCommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunityListAdapter;->isDarkTheme()Z

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunityListAdapter;->communityNameSpecialType()Z

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 89
    sget p3, Lcom/narvii/lib/R$id;->divider:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunityListAdapter;->showDivider()Z

    move-result p3

    if-nez p3, :cond_0

    const/16 p2, 0x8

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    .line 98
    :cond_1
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

    .line 45
    const-class v0, Lcom/narvii/model/Community;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 73
    instance-of v0, p1, Lcom/narvii/model/Community;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Lcom/narvii/model/Community;

    .line 75
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunityListAdapter;->itemViewLayoutId()I

    move-result v0

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 76
    invoke-virtual {p0, p2, p1, v1}, Lcom/narvii/community/BaseCommunityListAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    return-object p2

    :cond_0
    return-object v1
.end method

.method protected getSearchLanguage()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected itemViewLayoutId()I
    .locals 1

    .line 68
    sget v0, Lcom/narvii/lib/R$layout;->item_community_card_base:I

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 50
    const-class v0, Lcom/narvii/community/search/SearchCommunityListResponse;

    return-object v0
.end method

.method public setInvitationId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/narvii/community/BaseCommunityListAdapter;->invitationId:Ljava/lang/String;

    return-void
.end method

.method protected showDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
