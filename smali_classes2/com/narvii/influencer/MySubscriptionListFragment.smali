.class public Lcom/narvii/influencer/MySubscriptionListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "MySubscriptionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;,
        Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;,
        Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;
    }
.end annotation


# instance fields
.field cid:I

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/influencer/MySubscriptionListFragment;)Lcom/narvii/monetization/utils/StoreItemHelper;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/influencer/MySubscriptionListFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 96
    new-instance p1, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    const/16 v0, 0x7a

    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;-><init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;I)V

    .line 97
    new-instance v0, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;

    const v1, 0x7f0f0e2c

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;-><init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 100
    new-instance v1, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;-><init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;)V

    .line 101
    new-instance v2, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;

    const v3, 0x7f0f068a

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;-><init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2, v1}, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 105
    new-instance v3, Lcom/narvii/influencer/MySubscriptionListFragment$1;

    invoke-direct {v3, p0, p0, p1, v1}, Lcom/narvii/influencer/MySubscriptionListFragment$1;-><init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;)V

    .line 144
    invoke-virtual {v3, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    invoke-virtual {v3, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    invoke-virtual {v3, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v3
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 74
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xd25b19

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0bf6

    .line 61
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "config"

    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 63
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment;->cid:I

    .line 64
    new-instance v0, Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    const-string v0, "membership"

    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0f1081

    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyText(I)V

    return-void
.end method
