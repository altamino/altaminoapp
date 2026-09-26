.class public Lcom/narvii/influencer/MySubscriptionListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;,
        Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;,
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/influencer/MySubscriptionListFragment;)Lcom/narvii/monetization/utils/StoreItemHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/influencer/MySubscriptionListFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;

    .line 3
    .line 4
    const/16 v0, 0x7a

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;-><init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;I)V

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120f54

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;-><init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0, p0}, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;-><init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    new-instance v2, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;

    .line 30
    .line 31
    .line 32
    const v3, 0x7f120738

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, p0, p0, v3}, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;-><init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 43
    .line 44
    new-instance v3, Lcom/narvii/influencer/MySubscriptionListFragment$1;

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, p0, p0, p1, v1}, Lcom/narvii/influencer/MySubscriptionListFragment$1;-><init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    return-object v3
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, -0xd25b19

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f120d21

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    const-string v0, "config"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 25
    move-result v0

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment;->cid:I

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 35
    .line 36
    const-string v0, "membership"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    const-string p1, "statistics"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 55
    .line 56
    const-string v0, "Subscription Manager Opened"

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const-string v0, "Source"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    const-string v0, "Subscription Manager Opened Total"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 76
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f12117d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyText(I)V

    .line 10
    return-void
.end method
