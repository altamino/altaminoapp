.class Lcom/narvii/livelayer/LiveLayerHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LiveLayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerHelper;->requestOnlineMembers(Ljava/lang/String;IZZLcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerHelper;

.field final synthetic val$addMe:Z

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$iconPreload:Z


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerHelper;Ljava/lang/Class;ZZLcom/narvii/util/Callback;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerHelper;

    iput-boolean p3, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->val$addMe:Z

    iput-boolean p4, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->val$iconPreload:Z

    iput-object p5, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->val$callback:Lcom/narvii/util/Callback;

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

    .line 75
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

    .line 35
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/livelayer/LiveLayerHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 39
    new-instance p1, Lcom/narvii/util/FilterHelper;

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerHelper;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 40
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->val$addMe:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerHelper;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 42
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerHelper;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerHelper;->onlineHelper:Lcom/narvii/onlinestatus/OnlineHelper;

    invoke-virtual {v1}, Lcom/narvii/onlinestatus/OnlineHelper;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 45
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 46
    iget v0, p2, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    .line 50
    :cond_0
    iput-object p1, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    .line 52
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->val$iconPreload:Z

    if-nez p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_3

    .line 54
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerHelper;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerHelper;->userIconsPreloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->discard()V

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerHelper;

    new-instance v0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    iget-object v1, p1, Lcom/narvii/livelayer/LiveLayerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p1, Lcom/narvii/livelayer/LiveLayerHelper;->userIconsPreloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    .line 61
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerHelper;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 62
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerHelper;

    iget-object v1, p1, Lcom/narvii/livelayer/LiveLayerHelper;->userIconsPreloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    iget-object v2, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-instance v6, Lcom/narvii/livelayer/LiveLayerHelper$1$1;

    invoke-direct {v6, p0, p2}, Lcom/narvii/livelayer/LiveLayerHelper$1$1;-><init>(Lcom/narvii/livelayer/LiveLayerHelper$1;Lcom/narvii/model/api/UserListResponse;)V

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->preloadUserIcons(Ljava/util/List;IIILcom/narvii/util/Callback;)V

    :cond_3
    :goto_0
    return-void
.end method
