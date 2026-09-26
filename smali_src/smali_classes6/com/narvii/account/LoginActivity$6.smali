.class Lcom/narvii/account/LoginActivity$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginActivity;->joinCommunity(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;

.field final synthetic val$config:Lcom/narvii/config/ConfigService;

.field final synthetic val$invitationId:Ljava/lang/String;

.field final synthetic val$newAccount:Z


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginActivity;Ljava/lang/Class;Lcom/narvii/config/ConfigService;ZLjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/account/LoginActivity$6;->val$config:Lcom/narvii/config/ConfigService;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/narvii/account/LoginActivity$6;->val$newAccount:Z

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/account/LoginActivity$6;->val$invitationId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method

.method public static safedk_LoginActivity_startActivityForResult_e7d0f7737db605ae5c97d1eb4ca0ed2e(Lcom/narvii/account/LoginActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/account/LoginActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/account/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private stat()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    .line 3
    .line 4
    const-string v1, "statistics"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "config"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v2, "Communities Joined Total"

    .line 34
    const/4 v3, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v2, "Communities Joined"

    .line 41
    .line 42
    .line 43
    filled-new-array {v1}, [I

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;[I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 48
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {p6}, Lcom/narvii/util/Utils;->getHttpCode(Ljava/lang/Throwable;)I

    .line 6
    move-result p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/account/LoginActivity;->setHttpCode(I)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    iput-boolean p2, p1, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    .line 15
    const/4 p2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/account/LoginActivity$6;->stat()V

    .line 26
    .line 27
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object p3, p0, Lcom/narvii/account/LoginActivity$6;->val$config:Lcom/narvii/config/ConfigService;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 37
    move-result p3

    .line 38
    .line 39
    const-string p4, "id"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    const-string p3, "joinOnly"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    .line 49
    const-string p2, "invitationId"

    .line 50
    .line 51
    iget-object p3, p0, Lcom/narvii/account/LoginActivity$6;->val$invitationId:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    .line 57
    const/4 p3, 0x2

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p1, p3}, Lcom/narvii/account/LoginActivity$6;->safedk_LoginActivity_startActivityForResult_e7d0f7737db605ae5c97d1eb4ca0ed2e(Lcom/narvii/account/LoginActivity;Landroid/content/Intent;I)V

    .line 61
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LoginActivity$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 4

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$6;->val$config:Lcom/narvii/config/ConfigService;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    :try_start_0
    iget-object v1, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    const-string v2, "community"

    .line 4
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 5
    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p1, Lcom/narvii/model/Community;->templateId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :goto_0
    new-instance p1, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    iget-object v1, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "source"

    const-string v3, "Standalone"

    .line 9
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "join"

    .line 10
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/account/LoginActivity$6;->val$config:Lcom/narvii/config/ConfigService;

    .line 11
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "community_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "template_id"

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "community_join"

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    invoke-direct {p0}, Lcom/narvii/account/LoginActivity$6;->stat()V

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    const-string v0, "account"

    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 16
    iget-object v0, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    const-string p2, "affiliations"

    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 18
    invoke-virtual {p1, v1}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "newAccount"

    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity$6;->val$newAccount:Z

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 v0, -0x1

    .line 21
    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$6;->this$0:Lcom/narvii/account/LoginActivity;

    .line 22
    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->finish()V

    return-void
.end method
