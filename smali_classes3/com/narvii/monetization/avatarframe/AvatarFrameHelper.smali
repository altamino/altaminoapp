.class public Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;
.super Ljava/lang/Object;
.source "AvatarFrameHelper.java"


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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    .line 55
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->config:Lcom/narvii/config/ConfigService;

    const-string v0, "api"

    .line 56
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->apiService:Lcom/narvii/util/http/ApiService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->updateUserProfile()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->showJoinCommunityDialog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->listener:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;

    return-object p0
.end method

.method private checkCommunityJoined(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 5

    .line 154
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 156
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v2, "/store/recommend-store-by-product"

    .line 157
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/16 v2, 0x7a

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "objectType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v3, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;

    const-class v4, Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;

    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private showJoinCommunityDialog(Ljava/lang/String;I)V
    .locals 3

    .line 195
    new-instance v0, Lcom/narvii/util/text/NVText;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0aa3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 196
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->getBoldSpannableString(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    .line 198
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0193

    const/4 v1, 0x0

    const v2, -0x444445

    .line 200
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 201
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;

    invoke-direct {v0, p0, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;I)V

    const p2, 0x7f0f0aa0

    const v1, -0xff8501

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 209
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private updateUserProfile()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 115
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/user-profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 117
    new-instance v2, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$2;

    const-class v3, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$2;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public jumpToStoreWithCommunityCheck(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 133
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->availableInAnyStore()Z

    move-result v1

    const-string v2, "Source"

    const-string v3, "prefetch"

    const-string v4, "id"

    if-nez v1, :cond_0

    .line 136
    const-class v0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1, v0}, Lcom/narvii/model/StoreItemBaseObject;->availableInStore(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-class v0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->checkCommunityJoined(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

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

    .line 72
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 73
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "avatar-frame/apply"

    .line 74
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    const-string v2, "frameId"

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "applyToAll"

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->apiService:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, v2, p1, p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/Class;Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V

    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public setAvatarFrameListener(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->listener:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;

    return-void
.end method

.method public showAvatarSetDialog(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->showAvatarSetDialog(Lcom/narvii/monetization/avatarframe/AvatarFrame;Z)V

    return-void
.end method

.method public showAvatarSetDialog(Lcom/narvii/monetization/avatarframe/AvatarFrame;Z)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->setAvatarFrameDialog:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    invoke-direct {v0, p0, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Z)V

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->setAvatarFrameDialog:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->setAvatarFrameDialog:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->show(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 68
    iput-boolean p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->isGlobal:Z

    return-void
.end method
