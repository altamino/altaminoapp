.class Lcom/narvii/community/MyCommunityListService$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MyCommunityListService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/CommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/MyCommunityListService;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityListService;Ljava/lang/Class;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$7;->this$0:Lcom/narvii/community/MyCommunityListService;

    iput-object p3, p0, Lcom/narvii/community/MyCommunityListService$7;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 8
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

    .line 283
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 284
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$7;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->suggestCommunityListener:Lcom/narvii/util/http/ApiResponseListener;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 285
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$7;->this$0:Lcom/narvii/community/MyCommunityListService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/community/MyCommunityListService;->access$202(Lcom/narvii/community/MyCommunityListService;Z)Z

    .line 286
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$7;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 287
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/CommunityListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 274
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$7;->this$0:Lcom/narvii/community/MyCommunityListService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/community/MyCommunityListService;->access$202(Lcom/narvii/community/MyCommunityListService;Z)Z

    .line 275
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$7;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v0, v0, Lcom/narvii/community/MyCommunityListService;->suggestCommunityListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 276
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$7;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 277
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    check-cast p2, Lcom/narvii/master/CommunityListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/MyCommunityListService$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/CommunityListResponse;)V

    return-void
.end method
