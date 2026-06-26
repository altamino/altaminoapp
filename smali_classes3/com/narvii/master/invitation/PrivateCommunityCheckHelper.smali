.class public Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;
.super Ljava/lang/Object;
.source "PrivateCommunityCheckHelper.java"


# static fields
.field public static KEY_CURRENT_USER_JOINED:Ljava/lang/String; = "key_current_user_joined"


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field context:Lcom/narvii/app/NVContext;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 25
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 26
    iget-object p1, p0, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public isCurrentUserJoined()Z
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->accountService:Lcom/narvii/account/AccountService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->KEY_CURRENT_USER_JOINED:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public sendCommunityUserInfoChanged(Z)V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.COMMUNITY_USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isCurrentUserJoined"

    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->setCurrentUserJoinedStatus(Z)V

    return-void
.end method

.method public setCurrentUserJoinedStatus(Z)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->KEY_CURRENT_USER_JOINED:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
