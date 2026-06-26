.class Lcom/narvii/account/LoginActivity$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginActivity;->checkWhetherNeedToJoin(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/FullCommunityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;

.field final synthetic val$invitationId:Ljava/lang/String;

.field final synthetic val$newAccount:Z


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginActivity;Ljava/lang/Class;ZLjava/lang/String;)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$7;->this$0:Lcom/narvii/account/LoginActivity;

    iput-boolean p3, p0, Lcom/narvii/account/LoginActivity$7;->val$newAccount:Z

    iput-object p4, p0, Lcom/narvii/account/LoginActivity$7;->val$invitationId:Ljava/lang/String;

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

    .line 1242
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 1243
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$7;->this$0:Lcom/narvii/account/LoginActivity;

    iget-boolean p2, p0, Lcom/narvii/account/LoginActivity$7;->val$newAccount:Z

    iget-object p3, p0, Lcom/narvii/account/LoginActivity$7;->val$invitationId:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/narvii/account/LoginActivity;->access$600(Lcom/narvii/account/LoginActivity;ZLjava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1228
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 1229
    iget-boolean p1, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz p1, :cond_0

    .line 1230
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$7;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    .line 1231
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1232
    iget-boolean p2, p0, Lcom/narvii/account/LoginActivity$7;->val$newAccount:Z

    const-string v0, "newAccount"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1233
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$7;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1234
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$7;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->finish()V

    goto :goto_0

    .line 1236
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$7;->this$0:Lcom/narvii/account/LoginActivity;

    iget-boolean p2, p0, Lcom/narvii/account/LoginActivity$7;->val$newAccount:Z

    iget-object v0, p0, Lcom/narvii/account/LoginActivity$7;->val$invitationId:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/narvii/account/LoginActivity;->access$600(Lcom/narvii/account/LoginActivity;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1225
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LoginActivity$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
