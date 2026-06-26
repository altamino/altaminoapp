.class Lcom/narvii/community/CommunityService$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommunityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/CommunityService;->fetchLiteCommunity(ILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/CommunityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityService;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityService;Ljava/lang/Class;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/narvii/community/CommunityService$1;->this$0:Lcom/narvii/community/CommunityService;

    iput-object p3, p0, Lcom/narvii/community/CommunityService$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 349
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    check-cast p2, Lcom/narvii/model/api/CommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/CommunityService$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommunityResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommunityResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 336
    iget-object p1, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_1

    .line 337
    iget p2, p1, Lcom/narvii/model/Community;->id:I

    if-nez p2, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object p2, p0, Lcom/narvii/community/CommunityService$1;->this$0:Lcom/narvii/community/CommunityService;

    invoke-virtual {p2, p1}, Lcom/narvii/community/CommunityService;->updateLiteCommunity(Lcom/narvii/model/Community;)V

    .line 343
    iget-object p2, p0, Lcom/narvii/community/CommunityService$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_1

    .line 344
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
