.class Lcom/narvii/master/MyCommunityListFragment$MoreCommunitiesAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "MyCommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreCommunitiesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 0

    .line 1002
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$MoreCommunitiesAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 1003
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "EngagementArea"

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b03f9

    .line 1008
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090724

    .line 1009
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 1011
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1012
    invoke-static {p2}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    :cond_0
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    .line 1019
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f090724

    if-ne p2, p3, :cond_0

    .line 1020
    sget-object p2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;Z)V

    .line 1021
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$MoreCommunitiesAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/narvii/master/MyCommunityListFragment;->access$500(Lcom/narvii/master/MyCommunityListFragment;Ljava/lang/String;)V

    :cond_0
    return p1
.end method
