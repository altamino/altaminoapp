.class Lcom/narvii/amino/HomeFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/narvii/amino/HomeFragment$6;->val$followedBySpeedDialRequest:Z

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/narvii/amino/HomeFragment$6;->val$speedDialAutoRefresh:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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
    iget-boolean p1, p0, Lcom/narvii/amino/HomeFragment$6;->val$followedBySpeedDialRequest:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/narvii/amino/HomeFragment$6;->val$speedDialAutoRefresh:Z

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/amino/HomeFragment;->C(Lcom/narvii/amino/HomeFragment;Z)V

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/narvii/amino/HomeFragment;->v(Lcom/narvii/amino/HomeFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 23
    const/4 p2, 0x0

    .line 24
    .line 25
    iput-boolean p2, p1, Lcom/narvii/amino/HomeFragment;->skipLayout:Z

    .line 26
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
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/amino/HomeFragment$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/amino/HomeFragment;->v(Lcom/narvii/amino/HomeFragment;Lcom/narvii/util/http/ApiRequest;)V

    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 4
    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/amino/HomeFragment;->featureUserList:Ljava/util/List;

    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 5
    iget-boolean p2, p1, Lcom/narvii/amino/HomeFragment;->skipLayout:Z

    invoke-static {p1, p2}, Lcom/narvii/amino/HomeFragment;->z(Lcom/narvii/amino/HomeFragment;Z)V

    iget-boolean p1, p0, Lcom/narvii/amino/HomeFragment$6;->val$followedBySpeedDialRequest:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-boolean p2, p0, Lcom/narvii/amino/HomeFragment$6;->val$speedDialAutoRefresh:Z

    .line 6
    invoke-static {p1, p2}, Lcom/narvii/amino/HomeFragment;->C(Lcom/narvii/amino/HomeFragment;Z)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p1, Lcom/narvii/amino/HomeFragment;->skipLayout:Z

    return-void
.end method
