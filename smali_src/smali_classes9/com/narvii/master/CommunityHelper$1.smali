.class Lcom/narvii/master/CommunityHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityHelper;->communityDetailWithInviteUrl(Lcom/narvii/model/Community;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/narvii/master/CommunityHelper;

.field final synthetic val$c:Lcom/narvii/model/Community;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityHelper$1;->this$0:Lcom/narvii/master/CommunityHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/master/CommunityHelper$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/master/CommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

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
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$1;->this$0:Lcom/narvii/master/CommunityHelper;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/master/CommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    .line 16
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$1;->this$0:Lcom/narvii/master/CommunityHelper;

    iget-object v0, p0, Lcom/narvii/master/CommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    .line 5
    invoke-virtual {p1, v0}, Lcom/narvii/master/CommunityHelper;->communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/narvii/master/CommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    .line 6
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themeColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "#%06X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageBackground"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/master/CommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "invitationId"

    .line 9
    iget-object p2, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/master/CommunityHelper$1;->this$0:Lcom/narvii/master/CommunityHelper;

    .line 10
    iget-object p2, p2, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-static {p2, p1}, Lcom/narvii/master/CommunityHelper$1;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$1;->this$0:Lcom/narvii/master/CommunityHelper;

    iget-object p2, p0, Lcom/narvii/master/CommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    :cond_1
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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunityHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V

    return-void
.end method
