.class public Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;
.super Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;
.source "MonetizationStoreAvatarFrameFragment.java"

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

    .line 68
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$1;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->localReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameError:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;Lcom/narvii/monetization/store/data/StoreItem;)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->isSameStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Lcom/narvii/monetization/store/data/StoreItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->updateMood()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->defaultSelectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;)Lcom/narvii/monetization/store/data/StoreItem;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->defaultSelectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    return-object p1
.end method

.method static synthetic access$500(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectAvatarFrame(Lcom/narvii/monetization/store/data/StoreItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/widget/SpinningView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V

    return-void
.end method

.method private isSameStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Lcom/narvii/monetization/store/data/StoreItem;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 414
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 3

    .line 354
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    invoke-direct {p0, v1, v0, v0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V

    .line 356
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameError:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    iget-object v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    new-instance v2, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$6;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V

    return-void
.end method

.method private prefetchTargetAvatarFrame()V
    .locals 5

    const-string v0, "id"

    .line 253
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "api"

    .line 258
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 259
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/avatar-frame/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 260
    new-instance v2, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;

    const-class v3, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarFrameConfig(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    .line 281
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, p2}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 282
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 283
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->updateMood()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->updateMood()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 291
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->getMoodColor()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_3

    .line 292
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    .line 294
    :goto_0
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/MoodView;->updateMoodColor(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private refreshUserViewDescription()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 313
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onCreate()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/IStoreItem;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {v1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/IStoreItem;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 318
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {v1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/IStoreItem;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    goto :goto_2

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    if-nez v0, :cond_4

    .line 320
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    :goto_0
    if-eqz v0, :cond_3

    .line 323
    new-instance v1, Lcom/narvii/monetization/avatarframe/StubCurrentAvatarFrame;

    invoke-direct {v1, v0}, Lcom/narvii/monetization/avatarframe/StubCurrentAvatarFrame;-><init>(Lcom/narvii/model/User$AvatarFrameLite;)V

    goto :goto_1

    .line 325
    :cond_3
    new-instance v1, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;-><init>(ZLandroid/content/Context;)V

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 328
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    goto :goto_2

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private selectAvatarFrame(Lcom/narvii/monetization/store/data/StoreItem;)V
    .locals 1

    .line 342
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 343
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 344
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserViewDescription()V

    .line 346
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 347
    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v0, :cond_0

    .line 348
    check-cast p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateMood()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    invoke-static {v0, p0}, Lcom/narvii/util/MoodHelper;->getMood(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Lcom/narvii/model/Sticker;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    invoke-static {v0}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 338
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 245
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 246
    new-instance v0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    .line 247
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0526

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoreProfileFrameDetailPage"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 100
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "avatarFrameLoader"

    .line 101
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    const-string v0, "account"

    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "membership"

    .line 103
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string v0, "config"

    .line 104
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 105
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 106
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    .line 108
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->localReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v0, "prefetch"

    .line 110
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {v0}, Lcom/narvii/monetization/store/data/StoreItem;->wrapStoreItem(Lcom/narvii/model/IStoreItem;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->defaultSelectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz p1, :cond_1

    const-string v0, "selectedStoreItem"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/store/data/StoreItem;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    goto :goto_1

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->defaultSelectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 117
    :goto_1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->prefetchTargetAvatarFrame()V

    .line 118
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 134
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0fa2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080309

    .line 137
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 138
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->localReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 176
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    invoke-virtual {v0, p0}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 384
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->user:Lcom/narvii/model/User;

    .line 387
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->updateMood()V

    goto :goto_1

    .line 388
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/StoreItemBaseObject;

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    invoke-virtual {v0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 391
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 392
    instance-of v2, v1, Lcom/narvii/monetization/store/data/StoreItem;

    if-nez v2, :cond_2

    goto :goto_0

    .line 395
    :cond_2
    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 396
    iget-object v2, v1, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/store/data/StoreItem;->setCachedRefObject(Lcom/narvii/model/NVObject;)V

    .line 398
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemListAdapter:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;

    if-eqz p1, :cond_3

    .line 399
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0fa2

    if-eq v0, v1, :cond_0

    .line 162
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    .line 155
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 156
    instance-of v1, p1, Lcom/narvii/model/StoreItemBaseObject;

    if-eqz v1, :cond_2

    .line 157
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromStoreItem(Lcom/narvii/app/NVContext;Lcom/narvii/model/StoreItemBaseObject;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_2
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0f0fa2

    .line 144
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 187
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selectedStoreItem"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 198
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090c10

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p2, 0x7f0905ea

    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/utils/StoreItemNameView;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    const p2, 0x7f0905f7

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/StoreItemStatusView;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 202
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->statusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/narvii/monetization/StoreItemStatusView;->forceStatusExtraHintHeight(Z)V

    const p2, 0x7f0900f3

    .line 203
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SpinningView;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    const p2, 0x7f0900f1

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->avatarFrameError:Landroid/widget/ImageView;

    const p2, 0x7f090720

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/MoodView;

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 206
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->moodView:Lcom/narvii/widget/MoodView;

    new-instance p2, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz p1, :cond_1

    .line 229
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->selectedStoreItem:Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 230
    new-instance p2, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$3;

    invoke-direct {p2, p0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$3;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 237
    invoke-direct {p0, p1, p2, p2}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZZ)V

    .line 239
    :goto_1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserViewDescription()V

    return-void
.end method
