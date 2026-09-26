.class public Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;
.super Lcom/narvii/media/MediaGalleryActivity;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/MediaGalleryActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$1;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$1;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Ljava/lang/Class;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 13
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->innerSetData(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->openProfileEditor()V

    return-void
.end method

.method private getDefaultAvatarFrame()Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->configService:Lcom/narvii/config/ConfigService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    .line 32
    :goto_0
    new-instance v1, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v0, v2}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;-><init>(ZLandroid/content/Context;)V

    .line 40
    return-object v1
.end method

.method private innerSetData(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 5

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarIcon:Lcom/narvii/widget/NVImageView;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 15
    .line 16
    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    move-object v2, p1

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    .line 23
    .line 24
    iget-boolean v2, v2, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isMembership:Z

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v1

    .line 30
    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarIcon:Lcom/narvii/widget/NVImageView;

    .line 34
    const/4 v3, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarIcon:Lcom/narvii/widget/NVImageView;

    .line 40
    .line 41
    const-string v3, "res://ic_default_avatar_frame_new"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarIcon:Lcom/narvii/widget/NVImageView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    const/high16 v4, 0x3f800000    # 1.0f

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 57
    move-result v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 61
    .line 62
    :goto_1
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->isMe:Z

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameOwnStatusController:Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 77
    :cond_2
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->openProfileEditor()V

    .line 4
    return-void
.end method

.method private openProfileEditor()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/narvii/model/User;->isGlobal:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-class v0, Lcom/narvii/master/home/profile/ProfileListFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v2, "show_picker"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    const-string v0, "account"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    new-instance v2, Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    const-class v4, Lcom/narvii/user/profile/post/UserProfilePostActivity;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .line 49
    iget-object v3, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 50
    .line 51
    const-string v4, "uid"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    new-instance v3, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 57
    .line 58
    .line 59
    invoke-direct {v3, v0}, Lcom/narvii/user/profile/post/UserProfilePost;-><init>(Lcom/narvii/model/User;)V

    .line 60
    .line 61
    const-string v4, "post"

    .line 62
    .line 63
    .line 64
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    const-string v3, "userProfile"

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    const-string v0, "bio"

    .line 80
    const/4 v3, 0x0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    .line 85
    const-string v0, "isOpenAvatarFrame"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v2}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 92
    :goto_0
    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setAvatarFramePanel()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->hasAvatarFrame()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->configService:Lcom/narvii/config/ConfigService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v2, "/avatar-frame/"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/narvii/model/User$AvatarFrameLite;->getFrameId()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameRequest:Lcom/narvii/util/http/ApiRequest;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->apiService:Lcom/narvii/util/http/ApiService;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->getDefaultAvatarFrame()Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->innerSetData(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 76
    :goto_0
    return-void
.end method

.method public static synthetic u(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->getDefaultAvatarFrame()Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d034a

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/MediaGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "api"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->apiService:Lcom/narvii/util/http/ApiService;

    .line 14
    .line 15
    const-string v0, "config"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->configService:Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    const-string v0, "membership"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 41
    .line 42
    const-string v0, "account"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 53
    .line 54
    const-string v2, "Profile Photos"

    .line 55
    .line 56
    iput-object v2, v1, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->parent:Lcom/narvii/model/NVObject;

    .line 59
    .line 60
    instance-of v2, v1, Lcom/narvii/model/User;

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    check-cast v1, Lcom/narvii/model/User;

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 67
    .line 68
    :goto_0
    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 72
    move-result-object v0

    .line 73
    const/4 v1, 0x0

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 93
    move-result v0

    .line 94
    .line 95
    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    move v0, v1

    .line 99
    .line 100
    :goto_1
    iput-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->isMe:Z

    .line 101
    .line 102
    .line 103
    const v0, 0x7f0a017f

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFramePanel:Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    .line 114
    const v0, 0x7f0a04e0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->hintView:Landroid/view/View;

    .line 121
    .line 122
    new-instance v2, Lcom/narvii/monetization/avatarframe/a;

    .line 123
    .line 124
    .line 125
    invoke-direct {v2, p0}, Lcom/narvii/monetization/avatarframe/a;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFramePanel:Landroid/widget/RelativeLayout;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    const v0, 0x7f0a0183

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    check-cast v0, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 143
    .line 144
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 145
    .line 146
    .line 147
    const v0, 0x7f0a0186

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    check-cast v0, Lcom/narvii/monetization/StoreItemStatusView;

    .line 154
    .line 155
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 156
    .line 157
    .line 158
    const v0, 0x7f0a0184

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 165
    .line 166
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarIcon:Lcom/narvii/widget/NVImageView;

    .line 167
    .line 168
    .line 169
    const v0, 0x7f0a0c42

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    check-cast v0, Landroid/widget/ImageView;

    .line 176
    .line 177
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->rightChevron:Landroid/widget/ImageView;

    .line 178
    .line 179
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 180
    .line 181
    const/16 v2, 0x8

    .line 182
    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/narvii/model/User;->hasAvatarFrame()Z

    .line 187
    move-result v0

    .line 188
    .line 189
    if-nez v0, :cond_2

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 195
    move-result v0

    .line 196
    .line 197
    if-nez v0, :cond_2

    .line 198
    goto :goto_3

    .line 199
    .line 200
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->isMe:Z

    .line 201
    .line 202
    if-eqz v0, :cond_3

    .line 203
    .line 204
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->rightChevron:Landroid/widget/ImageView;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    .line 209
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFramePanel:Landroid/widget/RelativeLayout;

    .line 215
    .line 216
    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$2;

    .line 217
    .line 218
    .line 219
    invoke-direct {v1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$2;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    goto :goto_2

    .line 224
    .line 225
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->rightChevron:Landroid/widget/ImageView;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    .line 230
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;

    .line 231
    .line 232
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 233
    .line 234
    .line 235
    invoke-direct {v0, p0, p0, v2, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    .line 236
    .line 237
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrameOwnStatusController:Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->onCreate()V

    .line 241
    .line 242
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFramePanel:Landroid/widget/RelativeLayout;

    .line 243
    .line 244
    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;

    .line 245
    .line 246
    .line 247
    invoke-direct {v1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .line 252
    :goto_2
    if-eqz p1, :cond_5

    .line 253
    .line 254
    const-string v0, "avatarFrame"

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    move-result-object p1

    .line 259
    .line 260
    const-class v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 261
    .line 262
    .line 263
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 264
    move-result-object p1

    .line 265
    .line 266
    check-cast p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 267
    .line 268
    if-eqz p1, :cond_4

    .line 269
    .line 270
    .line 271
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->innerSetData(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 272
    goto :goto_5

    .line 273
    .line 274
    .line 275
    :cond_4
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->setAvatarFramePanel()V

    .line 276
    goto :goto_5

    .line 277
    .line 278
    .line 279
    :cond_5
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->setAvatarFramePanel()V

    .line 280
    goto :goto_5

    .line 281
    .line 282
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFramePanel:Landroid/widget/RelativeLayout;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .line 287
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->hintView:Landroid/view/View;

    .line 288
    .line 289
    if-eqz p1, :cond_8

    .line 290
    .line 291
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->isMe:Z

    .line 292
    .line 293
    if-eqz v0, :cond_7

    .line 294
    goto :goto_4

    .line 295
    :cond_7
    move v1, v2

    .line 296
    .line 297
    .line 298
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_8
    :goto_5
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->apiService:Lcom/narvii/util/http/ApiService;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->fetchAvatarFrameListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 15
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "update"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/model/User;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->owner:Lcom/narvii/model/User;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->setAvatarFramePanel()V

    .line 24
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/MediaGalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "avatarFrame"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method protected onShareMediaButtonClicked()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/media/MediaGalleryActivity;->onShareMediaButtonClicked()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "More"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 19
    return-void
.end method
