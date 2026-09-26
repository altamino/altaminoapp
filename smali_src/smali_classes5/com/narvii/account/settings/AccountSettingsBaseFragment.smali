.class public Lcom/narvii/account/settings/AccountSettingsBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# static fields
.field public static final SECURITY_VALIDATION_TARGET_TYPE_DIGITS:I = 0x3

.field public static final SECURITY_VALIDATION_TARGET_TYPE_EMAIL:I = 0x1

.field public static final SECURITY_VALIDATION_TARGET_TYPE_GLOBAL_SMS:I = 0x8


# instance fields
.field protected accountService:Lcom/narvii/account/AccountService;

.field protected accountUtils:Lcom/narvii/account/AccountUtils;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field protected sid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/account/settings/AccountSettingsBaseFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/account/settings/AccountSettingsBaseFragment$1;-><init>(Lcom/narvii/account/settings/AccountSettingsBaseFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/account/AccountUtils;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 15
    .line 16
    const-string p1, "account"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getSessionID()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->sid:Ljava/lang/String;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 33
    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    .line 35
    .line 36
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method protected requestSecurityCode(ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    const-string v1, "api"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    const-string v3, "/auth/request-security-validation"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    const-string v3, "type"

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    const-string v2, "identity"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    sget-object p2, La0/a;->o:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    if-eqz p3, :cond_0

    .line 67
    .line 68
    const-string p2, "level"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 79
    return-void
.end method

.method protected updateViews()V
    .locals 0

    return-void
.end method
