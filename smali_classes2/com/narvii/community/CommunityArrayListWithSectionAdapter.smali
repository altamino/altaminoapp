.class public Lcom/narvii/community/CommunityArrayListWithSectionAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "CommunityArrayListWithSectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TYPE_FAKE_TRENDING_SECTION_ITEM:I = 0x385


# instance fields
.field communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 26
    new-instance p2, Lcom/narvii/community/CommunityLayoutHelper;

    invoke-direct {p2, p1}, Lcom/narvii/community/CommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    return-void
.end method


# virtual methods
.method protected configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    invoke-virtual {p0}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->isDarkTheme()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZ)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    .line 37
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    .line 55
    iget v0, p1, Lcom/narvii/model/Community;->listedStatus:I

    const/16 v1, 0x385

    if-ne v0, v1, :cond_1

    .line 56
    sget v0, Lcom/narvii/lib/R$layout;->item_community_pre_search_section_layout:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 57
    sget p3, Lcom/narvii/lib/R$id;->pre_key:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 58
    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 59
    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 63
    sget v0, Lcom/narvii/lib/R$layout;->incubator_searched_community_item_unlist:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p2, p1}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 65
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-object p2

    .line 68
    :cond_2
    sget v0, Lcom/narvii/lib/R$layout;->item_community_card_base:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 69
    invoke-virtual {p0, p2, p1}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 70
    sget p3, Lcom/narvii/lib/R$id;->divider:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 72
    invoke-virtual {p0}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->showDivider()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-super {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected showDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
