.class public Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;
.super Lcom/narvii/community/CommunityArrayListWithSectionAdapter;
.source "BaseCommunitySearchListFragment.java"


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

    .line 114
    iput-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 115
    const-class v0, Lcom/narvii/model/Community;

    invoke-direct {p0, p1, v0}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 116
    new-instance p1, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v0, Lcom/narvii/model/Community;

    invoke-direct {p1, v0}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

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

    .line 138
    invoke-super {p0}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 127
    iget v1, v0, Lcom/narvii/model/Community;->listedStatus:I

    const/16 v2, 0x385

    if-eq v1, v2, :cond_0

    .line 128
    sget p1, Lcom/narvii/lib/R$layout;->item_community_card_base:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-object p1

    .line 133
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
