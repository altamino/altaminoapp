.class public Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;
.super Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;
    }
.end annotation


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private avatarFrameError:Landroid/widget/ImageView;

.field private avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

.field private avatarFrameLoading:Lcom/narvii/widget/SpinningView;

.field private avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field private communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private configService:Lcom/narvii/config/ConfigService;

.field private curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field private defaultSelectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

.field private localReceiver:Landroid/content/BroadcastReceiver;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private moodView:Lcom/narvii/widget/MoodView;

.field private selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

.field private statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

.field private statusView:Lcom/narvii/monetization/StoreItemStatusView;

.field private storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

.field private storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

.field private user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$1;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->localReceiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->defaultSelectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;Lcom/narvii/monetization/store/data/StoreItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->isSameStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Lcom/narvii/monetization/store/data/StoreItem;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic F(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectAvatarFrame(Lcom/narvii/monetization/store/data/StoreItem;)V

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->updateMood()V

    return-void
.end method

.method private configRightButton()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0d07a1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/widget/WalletBalanceView;

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/monetization/avatarframe/f;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/narvii/monetization/avatarframe/f;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnWalletPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/monetization/avatarframe/g;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/monetization/avatarframe/g;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnClaimIconPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method private isSameStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Lcom/narvii/monetization/store/data/StoreItem;)Z
    .locals 0

    .line 1
    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method private synthetic lambda$configRightButton$0()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "WalletIcon"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    return-void
.end method

.method private synthetic lambda$configRightButton$1()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "ClaimCoinsIcon"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    return-void
.end method

.method private loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, v1, v1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameError:Landroid/widget/ImageView;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v2, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V

    .line 33
    return-void
.end method

.method private prefetchTargetAvatarFrame()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    const-string v1, "api"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v4, "/avatar-frame/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    new-instance v2, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;

    .line 54
    .line 55
    const-class v3, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 62
    return-void
.end method

.method private refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarFrameConfig(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->updateMood()V

    .line 37
    return-void

    .line 38
    .line 39
    :cond_0
    if-nez p1, :cond_1

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->updateMood()V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    if-eqz p1, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->getMoodColor()I

    .line 51
    move-result p1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    sget p1, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_3
    sget p1, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    .line 76
    .line 77
    :goto_0
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Lcom/narvii/widget/MoodView;->updateMoodColor(I)V

    .line 81
    :cond_4
    :goto_1
    return-void
.end method

.method private refreshUserViewDescription()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onCreate()V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    instance-of v0, v0, Lcom/narvii/model/IStoreItem;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    check-cast v1, Lcom/narvii/model/IStoreItem;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Lcom/narvii/model/IStoreItem;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    .line 68
    .line 69
    if-nez v0, :cond_2

    .line 70
    const/4 v0, 0x0

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_2
    iget-object v0, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 74
    .line 75
    :goto_0
    if-eqz v0, :cond_3

    .line 76
    .line 77
    new-instance v1, Lcom/narvii/monetization/avatarframe/StubCurrentAvatarFrame;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v0}, Lcom/narvii/monetization/avatarframe/StubCurrentAvatarFrame;-><init>(Lcom/narvii/model/User$AvatarFrameLite;)V

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_3
    new-instance v1, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 89
    move-result v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-direct {v1, v0, v2}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;-><init>(ZLandroid/content/Context;)V

    .line 97
    .line 98
    :goto_1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 102
    .line 103
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :cond_4
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 110
    const/4 v1, 0x4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :goto_2
    return-void
.end method

.method private selectAvatarFrame(Lcom/narvii/monetization/store/data/StoreItem;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserViewDescription()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method

.method public static synthetic t(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->lambda$configRightButton$1()V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->lambda$configRightButton$0()V

    return-void
.end method

.method private updateMood()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/narvii/util/MoodHelper;->getMood(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Lcom/narvii/model/Sticker;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 12
    move-result v2

    .line 13
    .line 14
    xor-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V

    .line 25
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameError:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/widget/SpinningView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->defaultSelectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const/high16 v1, 0x40e00000    # 7.0f

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 12
    move-result v0

    .line 13
    float-to-int v2, v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 21
    move-result v0

    .line 22
    float-to-int v3, v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const/high16 v1, 0x41700000    # 15.0f

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 32
    move-result v0

    .line 33
    float-to-int v4, v0

    .line 34
    const/4 v5, 0x0

    .line 35
    move-object v0, p1

    .line 36
    move-object v1, p0

    .line 37
    .line 38
    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/app/NVContext;)V

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    .line 47
    const/4 v1, 0x3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 51
    return-object p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d05ae

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "avatar_frame_category"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->configRightButton()V

    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "avatarFrameLoader"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 14
    .line 15
    const-string v0, "account"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    const-string v0, "membership"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 34
    .line 35
    const-string v0, "config"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 44
    .line 45
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->localReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    .line 62
    new-instance v1, Landroid/content/IntentFilter;

    .line 63
    .line 64
    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 71
    .line 72
    const-string v0, "prefetch"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    const-class v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    check-cast v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 85
    const/4 v1, 0x0

    .line 86
    .line 87
    if-nez v0, :cond_0

    .line 88
    move-object v0, v1

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-static {v0}, Lcom/narvii/monetization/store/data/StoreItem;->wrapStoreItem(Lcom/narvii/model/IStoreItem;)Lcom/narvii/monetization/store/data/StoreItem;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    :goto_0
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->defaultSelectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 96
    .line 97
    if-eqz p1, :cond_1

    .line 98
    .line 99
    const-string/jumbo v0, "selectedStoreItem"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    const-class v2, Lcom/narvii/monetization/store/data/StoreItem;

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    check-cast v0, Lcom/narvii/monetization/store/data/StoreItem;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 114
    goto :goto_1

    .line 115
    .line 116
    :cond_1
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 117
    .line 118
    .line 119
    :goto_1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->prefetchTargetAvatarFrame()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    const/4 v0, 0x1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 127
    .line 128
    if-nez p1, :cond_4

    .line 129
    .line 130
    const-string/jumbo p1, "statistics"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 137
    .line 138
    const-string v0, "Source"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    const-string v1, "Category"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v1

    .line 149
    .line 150
    if-nez v1, :cond_3

    .line 151
    .line 152
    const-string v1, "See All"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v1

    .line 157
    .line 158
    if-eqz v1, :cond_2

    .line 159
    goto :goto_2

    .line 160
    .line 161
    :cond_2
    const-string v1, "Amino+ Product Detail Page (Store)"

    .line 162
    goto :goto_3

    .line 163
    .line 164
    :cond_3
    :goto_2
    const-string v1, "Amino+ Product Category Page (Store)"

    .line 165
    .line 166
    .line 167
    :goto_3
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    const-string v2, "Type"

    .line 171
    .line 172
    const-string v3, "Profile Frame"

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v1, " Total"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 201
    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f1210ad

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const p2, 0x7f080413

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->localReceiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroyView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string/jumbo v1, "update"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/model/User;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->updateMood()V

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    instance-of v0, v0, Lcom/narvii/model/StoreItemBaseObject;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->list()Ljava/util/List;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    instance-of v2, v1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 65
    .line 66
    if-nez v2, :cond_2

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_2
    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 70
    .line 71
    iget-object v2, v1, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, Lcom/narvii/model/StoreItemBaseObject;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    move-result v2

    .line 84
    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/store/data/StoreItem;->setCachedRefObject(Lcom/narvii/model/NVObject;)V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->notifyDataSetChanged()V

    .line 100
    :cond_3
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1210ad

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    return v0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    instance-of v1, p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromStoreItem(Lcom/narvii/app/NVContext;Lcom/narvii/model/StoreItemBaseObject;)Lcom/narvii/share/ShareDialog;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 38
    :cond_2
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f1210ad

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 21
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string/jumbo v1, "selectedStoreItem"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0f36

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/UserAvatarLayout;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0a076a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    check-cast p2, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 26
    .line 27
    .line 28
    const p2, 0x7f0a0777

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Lcom/narvii/monetization/StoreItemStatusView;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 37
    const/4 v0, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Lcom/narvii/monetization/StoreItemStatusView;->forceStatusExtraHintHeight(Z)V

    .line 41
    .line 42
    .line 43
    const p2, 0x7f0a0182

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    check-cast p2, Lcom/narvii/widget/SpinningView;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    .line 52
    .line 53
    .line 54
    const p2, 0x7f0a0180

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    check-cast p2, Landroid/widget/ImageView;

    .line 61
    .line 62
    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameError:Landroid/widget/ImageView;

    .line 63
    .line 64
    .line 65
    const p2, 0x7f0a0989

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    check-cast p1, Lcom/narvii/widget/MoodView;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 79
    move-result p1

    .line 80
    .line 81
    if-nez p1, :cond_0

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 84
    .line 85
    const/16 p2, 0x8

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 92
    .line 93
    new-instance p2, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 102
    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    instance-of p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 110
    .line 111
    if-eqz p1, :cond_1

    .line 112
    .line 113
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    check-cast p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 120
    .line 121
    new-instance p2, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$3;

    .line 122
    .line 123
    .line 124
    invoke-direct {p2, p0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$3;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    const/4 p1, 0x0

    .line 130
    const/4 p2, 0x0

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p1, p2, p2}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserViewDescription()V

    .line 137
    return-void
.end method
