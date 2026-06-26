.class Lcom/narvii/amino/HomeFragment$8;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/HomeFragment;->sendFeaturedUserListRequest(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;

.field final synthetic val$followedBySpeedDialRequest:Z

.field final synthetic val$speedDialAutoRefresh:Z


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;Ljava/lang/Class;ZZ)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    iput-boolean p3, p0, Lcom/narvii/amino/HomeFragment$8;->val$followedBySpeedDialRequest:Z

    iput-boolean p4, p0, Lcom/narvii/amino/HomeFragment$8;->val$speedDialAutoRefresh:Z

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

    .line 533
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 534
    iget-boolean p1, p0, Lcom/narvii/amino/HomeFragment$8;->val$followedBySpeedDialRequest:Z

    if-eqz p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-boolean p2, p0, Lcom/narvii/amino/HomeFragment$8;->val$speedDialAutoRefresh:Z

    invoke-static {p1, p2}, Lcom/narvii/amino/HomeFragment;->access$900(Lcom/narvii/amino/HomeFragment;Z)V

    .line 537
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/amino/HomeFragment;->access$702(Lcom/narvii/amino/HomeFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 538
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/amino/HomeFragment;->skipLayout:Z

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 518
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/amino/HomeFragment$8;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 521
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 522
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/amino/HomeFragment;->access$702(Lcom/narvii/amino/HomeFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 523
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/amino/HomeFragment;->featureUserList:Ljava/util/List;

    .line 524
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-boolean p2, p1, Lcom/narvii/amino/HomeFragment;->skipLayout:Z

    invoke-static {p1, p2}, Lcom/narvii/amino/HomeFragment;->access$800(Lcom/narvii/amino/HomeFragment;Z)V

    .line 525
    iget-boolean p1, p0, Lcom/narvii/amino/HomeFragment$8;->val$followedBySpeedDialRequest:Z

    if-eqz p1, :cond_0

    .line 526
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-boolean p2, p0, Lcom/narvii/amino/HomeFragment$8;->val$speedDialAutoRefresh:Z

    invoke-static {p1, p2}, Lcom/narvii/amino/HomeFragment;->access$900(Lcom/narvii/amino/HomeFragment;Z)V

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/amino/HomeFragment;->skipLayout:Z

    return-void
.end method
