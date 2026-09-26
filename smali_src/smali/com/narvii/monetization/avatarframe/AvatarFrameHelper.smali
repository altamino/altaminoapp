.class public Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;
    }
.end annotation


# instance fields
.field private apiService:Lcom/narvii/util/http/ApiService;

.field private config:Lcom/narvii/config/ConfigService;

.field public isGlobal:Z

.field private listener:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private setAvatarFrameDialog:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "config"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->config:Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    const-string v0, "api"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 26
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->listener:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->showJoinCommunityDialog(Ljava/lang/String;I)V

    return-void
.end method

.method private checkCommunityJoined(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 20
    .line 21
    const-string v2, "/store/recommend-store-by-product"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    const-string v3, "objectId"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const/16 v2, 0x7a

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    const-string v3, "objectType"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 54
    .line 55
    new-instance v3, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;

    .line 56
    .line 57
    const-class v4, Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 64
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->updateUserProfile()V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showJoinCommunityDialog(Ljava/lang/String;I)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/text/NVText;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    const v2, 0x7f120b56

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->getBoldSpannableString(Ljava/lang/String;)Landroid/text/Spannable;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    aput-object p1, v1, v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    const/4 v0, 0x0

    .line 47
    .line 48
    .line 49
    const v1, -0x444445

    .line 50
    .line 51
    .line 52
    const v2, 0x7f1201e2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p0, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;I)V

    .line 61
    .line 62
    .line 63
    const p2, -0xff8501

    .line 64
    .line 65
    .line 66
    const v1, 0x7f120b53

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 73
    return-void
.end method

.method private updateUserProfile()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v3, "/user-profile/"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 46
    .line 47
    const-string v2, "api"

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 54
    .line 55
    new-instance v2, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$2;

    .line 56
    .line 57
    const-class v3, Lcom/narvii/model/api/UserResponse;

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$2;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public jumpToStoreWithCommunityCheck(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->config:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->availableInAnyStore()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    const-string v2, "Source"

    .line 13
    .line 14
    const-string v3, "prefetch"

    .line 15
    .line 16
    const-string v4, "id"

    .line 17
    .line 18
    const-class v5, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v5}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1, v0}, Lcom/narvii/model/StoreItemBaseObject;->availableInStore(I)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-static {v5}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->checkCommunityJoined(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 88
    :goto_0
    return-void
.end method

.method public sendChangeAvatarSettingRequest(Lcom/narvii/monetization/avatarframe/AvatarFrame;ZLcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            "Z",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    .line 10
    const-string v1, "avatar-frame/apply"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    const-string v3, "default"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    :cond_1
    :goto_0
    const-string v2, "frameId"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    const-string v1, "applyToAll"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;

    .line 56
    .line 57
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p0, v2, p1, p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/Class;Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 66
    .line 67
    const-string/jumbo p2, "statistics"

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 74
    .line 75
    const-string p2, "Picks a Profile Frame"

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    const-string p2, "Picks a Profile Frame Total"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 91
    return-void
.end method

.method public setAvatarFrameListener(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->listener:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;

    return-void
.end method

.method public showAvatarSetDialog(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->showAvatarSetDialog(Lcom/narvii/monetization/avatarframe/AvatarFrame;Z)V

    return-void
.end method

.method public showAvatarSetDialog(Lcom/narvii/monetization/avatarframe/AvatarFrame;Z)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->setAvatarFrameDialog:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    invoke-direct {v0, p0, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Z)V

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->setAvatarFrameDialog:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->setAvatarFrameDialog:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    .line 3
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->show(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    iput-boolean p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->isGlobal:Z

    return-void
.end method
