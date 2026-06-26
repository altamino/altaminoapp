.class public Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;
.super Lcom/narvii/media/MediaGalleryActivity;
.source "AvatarFrameMediaGalleryActivity.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private apiService:Lcom/narvii/util/http/ApiService;

.field private avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field private avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

.field private avatarFrameOwnStatusController:Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;

.field private avatarFramePanel:Landroid/widget/RelativeLayout;

.field private avatarIcon:Lcom/narvii/widget/NVImageView;

.field private avatarNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

.field private avatarStatusView:Lcom/narvii/monetization/StoreItemStatusView;

.field private configService:Lcom/narvii/config/ConfigService;

.field private fetchAvatarFrameListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;",
            ">;"
        }
    .end annotation
.end field

.field private fetchAvatarFrameRequest:Lcom/narvii/util/http/ApiRequest;

.field private hintView:Landroid/view/View;

.field private isMe:Z

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private owner:Lcom/narvii/model/User;

.field private rightChevron:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/narvii/media/MediaGalleryActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$1;

    const-class v1, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$1;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameListener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->innerSetData(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->getDefaultAvatarFrame()Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->openProfileEditor()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    return-object p0
.end method

.method private getDefaultAvatarFrame()Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;
    .locals 3

    .line 277
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 278
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 280
    :goto_0
    new-instance v1, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;-><init>(ZLandroid/content/Context;)V

    return-object v1
.end method

.method private innerSetData(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 5

    .line 260
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 261
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarIcon:Lcom/narvii/widget/NVImageView;

    iget-object v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 262
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 263
    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    iget-boolean v2, v2, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isMembership:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarIcon:Lcom/narvii/widget/NVImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 266
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarIcon:Lcom/narvii/widget/NVImageView;

    const-string v3, "res://ic_default_avatar_frame_new"

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 270
    :goto_1
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->isMe:Z

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 271
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameOwnStatusController:Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    :cond_2
    return-void
.end method

.method private openProfileEditor()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/model/User;->isGlobal:Z

    if-eqz v0, :cond_0

    .line 221
    const-class v0, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "show_picker"

    .line 222
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "account"

    .line 225
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 226
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 228
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/user/profile/post/UserProfilePostActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    iget-object v3, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string v4, "uid"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    new-instance v3, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-direct {v3, v0}, Lcom/narvii/user/profile/post/UserProfilePost;-><init>(Lcom/narvii/model/User;)V

    .line 231
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "post"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "userProfile"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v3, "bio"

    .line 233
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isOpenAvatarFrame"

    .line 234
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private setAvatarFramePanel()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->hasAvatarFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/avatar-frame/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    iget-object v2, v2, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 252
    invoke-virtual {v2}, Lcom/narvii/model/User$AvatarFrameLite;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameRequest:Lcom/narvii/util/http/ApiRequest;

    .line 253
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->apiService:Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->getDefaultAvatarFrame()Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->innerSetData(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0317

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserIconFullView"

    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onCreate$0$AvatarFrameMediaGalleryActivity(Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->openProfileEditor()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Lcom/narvii/media/MediaGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "api"

    .line 96
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->apiService:Lcom/narvii/util/http/ApiService;

    const-string v0, "config"

    .line 97
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->configService:Lcom/narvii/config/ConfigService;

    const-string v0, "membership"

    .line 98
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 99
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    const-string v0, "account"

    .line 100
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 101
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    const-string v1, "Profile Photos"

    iput-object v1, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->parent:Lcom/narvii/model/NVObject;

    instance-of v1, v0, Lcom/narvii/model/User;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/model/User;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 103
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->isMe:Z

    const v0, 0x7f0900f0

    .line 106
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFramePanel:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903e1

    .line 107
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->hintView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->hintView:Landroid/view/View;

    new-instance v2, Lcom/narvii/monetization/avatarframe/-$$Lambda$AvatarFrameMediaGalleryActivity$-akoKCeBycCOQjUtm0PrLnCqFN4;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/avatarframe/-$$Lambda$AvatarFrameMediaGalleryActivity$-akoKCeBycCOQjUtm0PrLnCqFN4;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFramePanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0900f4

    .line 110
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/utils/StoreItemNameView;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    const v0, 0x7f0900f7

    .line 111
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/StoreItemStatusView;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const v0, 0x7f0900f5

    .line 112
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarIcon:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f09097f

    .line 113
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->rightChevron:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    const/16 v2, 0x8

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/narvii/model/User;->hasAvatarFrame()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 121
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->isMe:Z

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->rightChevron:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFramePanel:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$2;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$2;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->rightChevron:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameOwnStatusController:Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;

    .line 182
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameOwnStatusController:Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;

    invoke-virtual {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->onCreate()V

    .line 183
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFramePanel:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    if-eqz p1, :cond_5

    const-string v0, "avatarFrame"

    .line 206
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz p1, :cond_4

    .line 208
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->innerSetData(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    goto :goto_5

    .line 210
    :cond_4
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->setAvatarFramePanel()V

    goto :goto_5

    .line 213
    :cond_5
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->setAvatarFramePanel()V

    goto :goto_5

    .line 116
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFramePanel:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->hintView:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 118
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->isMe:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_5
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->apiService:Lcom/narvii/util/http/ApiService;

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 288
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 300
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 301
    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 302
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->setAvatarFramePanel()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 241
    invoke-super {p0, p1}, Lcom/narvii/media/MediaGalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "avatarFrame"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onShareMediaButtonClicked()V
    .locals 2

    .line 294
    invoke-super {p0}, Lcom/narvii/media/MediaGalleryActivity;->onShareMediaButtonClicked()V

    .line 295
    sget-object v0, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "More"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
