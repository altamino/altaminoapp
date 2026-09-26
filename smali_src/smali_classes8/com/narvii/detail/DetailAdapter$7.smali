.class Lcom/narvii/detail/DetailAdapter$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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
        "Lcom/narvii/tipping/model/TipLogListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/detail/DetailAdapter;->j(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p4}, Lcom/narvii/detail/DetailAdapter;->i(Lcom/narvii/detail/DetailAdapter;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 17
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
    check-cast p2, Lcom/narvii/tipping/model/TipLogListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/tipping/model/TipLogListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/tipping/model/TipLogListResponse;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/narvii/detail/DetailAdapter;->j(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)V

    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/detail/DetailAdapter;->i(Lcom/narvii/detail/DetailAdapter;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 4
    invoke-static {p1, p2}, Lcom/narvii/detail/DetailAdapter;->h(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/tipping/model/TipLogListResponse;)V

    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 6
    instance-of v0, p1, Lcom/narvii/model/Tippable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 7
    invoke-static {v0}, Lcom/narvii/detail/DetailAdapter;->f(Lcom/narvii/detail/DetailAdapter;)Lcom/narvii/tipping/TippingHelper;

    move-result-object v0

    check-cast p1, Lcom/narvii/model/Tippable;

    invoke-virtual {v0, p1}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    move-result p1

    .line 8
    new-instance v0, Lcom/narvii/util/FilterHelper;

    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->keepBlockedUser(Z)Lcom/narvii/util/FilterHelper;

    move-result-object p1

    iget-object v0, p2, Lcom/narvii/tipping/model/TipLogListResponse;->tippedUserList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/tipping/model/TipLogListResponse;->tippedUserList:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 9
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method
