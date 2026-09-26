.class Lcom/narvii/account/LoginActivity$5;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginActivity;->tryToJoinCommunity(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/invitation/CommunityInviteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;

.field final synthetic val$newAccount:Z


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginActivity;Ljava/lang/Class;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$5;->this$0:Lcom/narvii/account/LoginActivity;

    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/narvii/account/LoginActivity$5;->val$newAccount:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$5;->this$0:Lcom/narvii/account/LoginActivity;

    .line 6
    .line 7
    .line 8
    invoke-static {p6}, Lcom/narvii/util/Utils;->getHttpCode(Ljava/lang/Throwable;)I

    .line 9
    move-result p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/account/LoginActivity;->setHttpCode(I)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$5;->this$0:Lcom/narvii/account/LoginActivity;

    .line 15
    .line 16
    iget-boolean p2, p0, Lcom/narvii/account/LoginActivity$5;->val$newAccount:Z

    .line 17
    const/4 p3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2, p3}, Lcom/narvii/account/LoginActivity;->x(Lcom/narvii/account/LoginActivity;ZLjava/lang/String;)V

    .line 21
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-boolean p1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$5;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p1, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "newAccount"

    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity$5;->val$newAccount:Z

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/account/LoginActivity$5;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 v0, -0x1

    .line 7
    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$5;->this$0:Lcom/narvii/account/LoginActivity;

    .line 8
    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$5;->this$0:Lcom/narvii/account/LoginActivity;

    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity$5;->val$newAccount:Z

    .line 9
    iget-object p2, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/narvii/account/LoginActivity;->x(Lcom/narvii/account/LoginActivity;ZLjava/lang/String;)V

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

    .line 1
    check-cast p2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LoginActivity$5;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V

    return-void
.end method
