.class Lcom/narvii/master/MyCommunityListFragment$NoAminosJoinedHintAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "MyCommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoAminosJoinedHintAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$NoAminosJoinedHintAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 589
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$NoAminosJoinedHintAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-static {v0}, Lcom/narvii/master/MyCommunityListFragment;->access$200(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$NoAminosJoinedHintAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    move-result-object v0

    .line 604
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b03ff

    .line 594
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
