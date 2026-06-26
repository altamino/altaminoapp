.class public Lcom/narvii/app/AminoReferrerReceiver;
.super Lcom/narvii/util/googleplay/ReferrerReceiver;
.source "AminoReferrerReceiver.java"


# instance fields
.field protected final deferredStarted:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/narvii/util/googleplay/ReferrerReceiver;-><init>()V

    .line 27
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoReferrerReceiver;->deferredStarted:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 31
    new-instance v0, Lcom/appsflyer/SingleInstallBroadcastReceiver;

    invoke-direct {v0}, Lcom/appsflyer/SingleInstallBroadcastReceiver;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/appsflyer/SingleInstallBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    invoke-super {p0, p1, p2}, Lcom/narvii/util/googleplay/ReferrerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "referrer"

    .line 42
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    const-string v0, "deferred_link"

    .line 48
    invoke-static {p1, v0}, Lcom/narvii/util/googleplay/ReferrerReceiver;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "af_dp"

    if-eqz v2, :cond_1

    .line 50
    invoke-static {p1, v3}, Lcom/narvii/util/googleplay/ReferrerReceiver;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 51
    :cond_1
    invoke-static {v1, v3}, Lcom/narvii/util/googleplay/ReferrerReceiver;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 52
    invoke-static {v1, v3}, Lcom/narvii/util/googleplay/ReferrerReceiver;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p1, p2

    move-object p2, v1

    .line 54
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "statistics"

    if-nez v1, :cond_3

    .line 55
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v3, "prefs"

    invoke-virtual {v1, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    .line 56
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "deferredLink"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    const/4 v0, 0x1

    if-eqz p2, :cond_7

    .line 76
    invoke-static {p2}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 77
    invoke-static {p2}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 78
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open deferred invite link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 79
    invoke-static {p2}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v1

    .line 80
    sget-object v2, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v2}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v2}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v2, v3, :cond_8

    .line 81
    :cond_5
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    const-string v3, "pasteBoard"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/master/invitation/PasteBoardService;

    .line 82
    invoke-virtual {v2, p2}, Lcom/narvii/master/invitation/PasteBoardService;->canCheckUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    return-void

    .line 85
    :cond_6
    invoke-virtual {v2, p2}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    .line 87
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/community/link-identify"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "q"

    invoke-virtual {v2, v3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 88
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    const-string v3, "api"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 89
    new-instance v3, Lcom/narvii/app/AminoReferrerReceiver$1;

    const-class v4, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-direct {v3, p0, v4, v1}, Lcom/narvii/app/AminoReferrerReceiver$1;-><init>(Lcom/narvii/app/AminoReferrerReceiver;Ljava/lang/Class;Z)V

    invoke-virtual {v2, p2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 111
    iget-object p2, p0, Lcom/narvii/app/AminoReferrerReceiver;->deferredStarted:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    .line 113
    sget-object p2, Lcom/narvii/util/AppsflyerManager;->AF_DP_PROCESSED:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {p2, p1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open deferred link "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 119
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    .line 120
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/narvii/app/NVApplication;->startActivity(Landroid/content/Intent;)V

    .line 122
    iget-object v1, p0, Lcom/narvii/app/AminoReferrerReceiver;->deferredStarted:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 131
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to open deferred deep link "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method
