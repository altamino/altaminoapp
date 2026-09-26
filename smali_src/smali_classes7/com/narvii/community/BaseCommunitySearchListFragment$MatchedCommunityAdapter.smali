.class public Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;
.super Lcom/narvii/community/CommunityArrayListWithSectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/BaseCommunitySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MatchedCommunityAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/community/BaseCommunitySearchListFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    const-class v0, Lcom/narvii/model/Community;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MatchedAminos"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/Community;

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/model/Community;->listedStatus:I

    .line 9
    .line 10
    const/16 v2, 0x385

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    sget p1, Lcom/narvii/lib/R$layout;->item_community_card_base:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 25
    return-object p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method
