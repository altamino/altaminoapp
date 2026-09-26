.class Lcom/narvii/master/BottomDrawerHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/BottomDrawerHelper;->requestSuggestCommunity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/MyCommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/BottomDrawerHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/BottomDrawerHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

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
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/master/BottomDrawerHelper;->b(Lcom/narvii/master/BottomDrawerHelper;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    .line 20
    move-result-object p1

    .line 21
    const/4 p2, -0x1

    .line 22
    const/4 p3, 0x0

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2, p3}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    const-string v0, "bottom_drawer_check"

    if-eqz p2, :cond_0

    .line 2
    iget-object v1, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 3
    invoke-static {v1}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "begin to show sg"

    .line 4
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 5
    invoke-static {v0, p1}, Lcom/narvii/master/BottomDrawerHelper;->b(Lcom/narvii/master/BottomDrawerHelper;Z)V

    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 6
    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p1

    invoke-interface {p1, v2, p2}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 7
    invoke-static {p2, p1}, Lcom/narvii/master/BottomDrawerHelper;->b(Lcom/narvii/master/BottomDrawerHelper;Z)V

    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 8
    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 9
    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    :cond_1
    const-string p1, "fetched sg data, but not satisfied"

    .line 10
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
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
    check-cast p2, Lcom/narvii/community/MyCommunityListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/BottomDrawerHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;)V

    return-void
.end method
