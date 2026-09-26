.class Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/invitation/InvitationWelcomeActivity;->joinCommunity()V
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
.field final synthetic this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

.field final synthetic val$config:Lcom/narvii/config/ConfigService;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/master/invitation/InvitationWelcomeActivity;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/config/ConfigService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$config:Lcom/narvii/config/ConfigService;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    .line 21
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iget-object p3, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$config:Lcom/narvii/config/ConfigService;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 31
    move-result p3

    .line 32
    .line 33
    const-string p4, "id"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    const-string p3, "joinOnly"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->s(Lcom/narvii/master/invitation/InvitationWelcomeActivity;)Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    const-string p3, "invitationId"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-static {p2, p1}, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 67
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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 2
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$config:Lcom/narvii/config/ConfigService;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

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

    iget-object v1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "source"

    const-string v3, "standalone"

    .line 9
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "join"

    .line 10
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$config:Lcom/narvii/config/ConfigService;

    .line 11
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "community_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "template"

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "community_join"

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    const-string v0, "account"

    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 15
    iget-object v0, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 16
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string p2, "affiliations"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iget-object p2, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$config:Lcom/narvii/config/ConfigService;

    .line 17
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 18
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method
