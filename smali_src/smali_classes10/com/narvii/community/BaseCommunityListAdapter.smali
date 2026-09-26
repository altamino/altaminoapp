.class public abstract Lcom/narvii/community/BaseCommunityListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/community/CommunityLayoutHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/narvii/community/CommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/community/BaseCommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    .line 11
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunityListAdapter;->isDarkTheme()Z

    .line 6
    move-result v3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunityListAdapter;->communityNameSpecialType()Z

    .line 10
    move-result v4

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v5, p3

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 17
    .line 18
    sget p3, Lcom/narvii/lib/R$id;->divider:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunityListAdapter;->showDivider()Z

    .line 28
    move-result p3

    .line 29
    .line 30
    if-nez p3, :cond_0

    .line 31
    .line 32
    const/16 p2, 0x8

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    .line 49
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 50
    move-result p3

    .line 51
    .line 52
    if-lez p3, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 56
    move-result-object p3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    move-result v0

    .line 65
    .line 66
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    .line 69
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    check-cast p3, Lcom/narvii/model/Community;

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 p3, 0x0

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    move-result p2

    .line 79
    .line 80
    if-eqz p2, :cond_2

    .line 81
    const/4 p2, 0x4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 p2, 0x0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_3
    :goto_1
    return-void
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

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

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/model/Community;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunityListAdapter;->itemViewLayoutId()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2, p1, v1}, Lcom/narvii/community/BaseCommunityListAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 19
    return-object p2

    .line 20
    :cond_0
    return-object v1
.end method

.method protected getSearchLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected itemViewLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->item_community_card_base:I

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/community/search/SearchCommunityListResponse;

    return-object v0
.end method

.method public setInvitationId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/narvii/community/BaseCommunityListAdapter;->invitationId:Ljava/lang/String;

    return-void
.end method

.method protected showDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
