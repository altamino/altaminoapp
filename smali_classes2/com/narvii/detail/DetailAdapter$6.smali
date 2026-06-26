.class Lcom/narvii/detail/DetailAdapter$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/DetailAdapter;
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
.field final synthetic this$0:Lcom/narvii/detail/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 1446
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$6;->this$0:Lcom/narvii/detail/DetailAdapter;

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

    .line 1463
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$6;->this$0:Lcom/narvii/detail/DetailAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/detail/DetailAdapter;->access$202(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 1464
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$6;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-static {p1, p4}, Lcom/narvii/detail/DetailAdapter;->access$302(Lcom/narvii/detail/DetailAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1465
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$6;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1446
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1450
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$6;->this$0:Lcom/narvii/detail/DetailAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/detail/DetailAdapter;->access$202(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 1451
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$6;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-static {p1, v0}, Lcom/narvii/detail/DetailAdapter;->access$302(Lcom/narvii/detail/DetailAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1452
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$6;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-static {p1, p2}, Lcom/narvii/detail/DetailAdapter;->access$402(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/model/api/UserListResponse;)Lcom/narvii/model/api/UserListResponse;

    .line 1453
    iget-object p1, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 1454
    new-instance p1, Lcom/narvii/util/FilterHelper;

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter$6;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-direct {p1, v0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    .line 1456
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$6;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method
