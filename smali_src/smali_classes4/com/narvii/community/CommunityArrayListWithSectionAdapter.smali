.class public Lcom/narvii/community/CommunityArrayListWithSectionAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/community/CommunityLayoutHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/narvii/community/CommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    .line 11
    return-void
.end method


# virtual methods
.method protected configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->isDarkTheme()Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZ)V

    .line 11
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Community;

    .line 7
    .line 8
    iget v0, p1, Lcom/narvii/model/Community;->listedStatus:I

    .line 9
    .line 10
    const/16 v1, 0x385

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    sget v0, Lcom/narvii/lib/R$layout;->item_community_pre_search_section_layout:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    sget p3, Lcom/narvii/lib/R$id;->pre_key:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    instance-of v0, p3, Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    check-cast p3, Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_0
    return-object p2

    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    sget v0, Lcom/narvii/lib/R$layout;->incubator_searched_community_item_unlist:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2, p1}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 52
    return-object p2

    .line 53
    .line 54
    :cond_2
    sget v0, Lcom/narvii/lib/R$layout;->item_community_card_base:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p2, p1}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 62
    .line 63
    sget p3, Lcom/narvii/lib/R$id;->divider:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    if-eqz p3, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->showDivider()Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    const/4 v0, 0x0

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_3
    const/16 v0, 0x8

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 86
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 4
    return-void
.end method

.method protected showDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
