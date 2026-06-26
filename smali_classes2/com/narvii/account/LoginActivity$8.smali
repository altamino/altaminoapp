.class Lcom/narvii/account/LoginActivity$8;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LoginActivity.java"


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

    .line 1258
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$8;->this$0:Lcom/narvii/account/LoginActivity;

    iput-object p3, p0, Lcom/narvii/account/LoginActivity$8;->val$config:Lcom/narvii/config/ConfigService;

    iput-boolean p4, p0, Lcom/narvii/account/LoginActivity$8;->val$newAccount:Z

    iput-object p5, p0, Lcom/narvii/account/LoginActivity$8;->val$invitationId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private stat()V
    .locals 0

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

    .line 1300
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$8;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    const/4 p2, 0x1

    .line 1301
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1303
    invoke-direct {p0}, Lcom/narvii/account/LoginActivity$8;->stat()V

    .line 1305
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1306
    iget-object p3, p0, Lcom/narvii/account/LoginActivity$8;->val$config:Lcom/narvii/config/ConfigService;

    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    const-string p4, "id"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "joinOnly"

    .line 1307
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1308
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$8;->val$invitationId:Ljava/lang/String;

    const-string p3, "invitationId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$8;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Lcom/narvii/account/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1258
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LoginActivity$8;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1261
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$8;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    .line 1263
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v2, 0x1

    const/16 v3, 0x65

    if-ne v1, v3, :cond_0

    .line 1264
    new-instance v1, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    invoke-direct {v1, p1}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1265
    invoke-virtual {v1, v2}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->sendCommunityUserInfoChanged(Z)V

    .line 1268
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$8;->val$config:Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    .line 1271
    :try_start_0
    iget-object v1, p0, Lcom/narvii/account/LoginActivity$8;->this$0:Lcom/narvii/account/LoginActivity;

    const-string v3, "community"

    invoke-virtual {v1, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 1272
    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1273
    :cond_1
    iget p1, p1, Lcom/narvii/model/Community;->templateId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    .line 1276
    .line 1286
    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$8;->this$0:Lcom/narvii/account/LoginActivity;

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 1287
    iget-object v0, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 1289
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$8;->this$0:Lcom/narvii/account/LoginActivity;

    const-string p2, "affiliations"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 1290
    invoke-virtual {p1, v2}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    .line 1292
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$8;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1293
    iget-boolean p2, p0, Lcom/narvii/account/LoginActivity$8;->val$newAccount:Z

    const-string v0, "newAccount"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1294
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$8;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1295
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$8;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->finish()V

    return-void
.end method
