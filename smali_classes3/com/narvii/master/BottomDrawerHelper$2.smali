.class Lcom/narvii/master/BottomDrawerHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "BottomDrawerHelper.java"


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

    .line 247
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

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

    .line 269
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/master/BottomDrawerHelper;->access$102(Lcom/narvii/master/BottomDrawerHelper;Z)Z

    .line 270
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->access$000(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->access$000(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p1

    const/4 p2, -0x1

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

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

    const-string p1, "bottom_drawer_check"

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 250
    iget-object v1, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 251
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    invoke-static {v1}, Lcom/narvii/master/BottomDrawerHelper;->access$000(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "begin to show sg"

    .line 252
    invoke-static {p1, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    invoke-static {p1, v0}, Lcom/narvii/master/BottomDrawerHelper;->access$102(Lcom/narvii/master/BottomDrawerHelper;Z)Z

    .line 254
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->access$000(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p1

    invoke-interface {p1, v2, p2}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    invoke-static {p2, v0}, Lcom/narvii/master/BottomDrawerHelper;->access$102(Lcom/narvii/master/BottomDrawerHelper;Z)Z

    .line 258
    iget-object p2, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    invoke-static {p2}, Lcom/narvii/master/BottomDrawerHelper;->access$000(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 259
    iget-object p2, p0, Lcom/narvii/master/BottomDrawerHelper$2;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    invoke-static {p2}, Lcom/narvii/master/BottomDrawerHelper;->access$000(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    :cond_1
    const-string p2, "fetched sg data, but not satisfied"

    .line 261
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 247
    check-cast p2, Lcom/narvii/community/MyCommunityListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/BottomDrawerHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;)V

    return-void
.end method
