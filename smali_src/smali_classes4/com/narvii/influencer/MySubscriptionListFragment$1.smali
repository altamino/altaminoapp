.class Lcom/narvii/influencer/MySubscriptionListFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/MySubscriptionListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

.field final synthetic val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

.field final synthetic val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 11
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method
