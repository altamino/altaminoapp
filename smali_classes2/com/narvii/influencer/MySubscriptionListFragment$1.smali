.class Lcom/narvii/influencer/MySubscriptionListFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "MySubscriptionListFragment.java"


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

    .line 105
    iput-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    iput-object p3, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    iput-object p4, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onErrorRetry()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 134
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

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

    .line 108
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$profileListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 109
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$1;->val$fanClubListAdapter:Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
