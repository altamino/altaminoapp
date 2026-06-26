.class Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "InvitationWelcomeActivity.java"


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

    .line 126
    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    iput-object p3, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$config:Lcom/narvii/config/ConfigService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 162
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 163
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 164
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 165
    iget-object p3, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$config:Lcom/narvii/config/ConfigService;

    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    const-string p4, "id"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "joinOnly"

    .line 166
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    iget-object p2, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-static {p2}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->access$000(Lcom/narvii/master/invitation/InvitationWelcomeActivity;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "invitationId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object p2, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
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

    .line 129
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v0, 0x1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 130
    new-instance p1, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    iget-object v1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-direct {p1, v1}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 131
    invoke-virtual {p1, v0}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->sendCommunityUserInfoChanged(Z)V

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 134
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$config:Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    const/4 v1, 0x0

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    const-string v3, "community"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 138
    invoke-virtual {v2, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    iget p1, p1, Lcom/narvii/model/Community;->templateId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    .line 142
    .line 151
    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    const-string v1, "account"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 152
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v0}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 154
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string p2, "affiliations"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 155
    iget-object p2, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->val$config:Lcom/narvii/config/ConfigService;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 157
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;->this$0:Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method
