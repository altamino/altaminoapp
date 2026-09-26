.class Lcom/narvii/drawer/DrawerHost$18;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BlogCategoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

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
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    iput-object p4, p1, Lcom/narvii/drawer/DrawerHost;->blogCategoryError:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->r(Lcom/narvii/drawer/DrawerHost;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    .line 14
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
    check-cast p2, Lcom/narvii/model/api/BlogCategoryListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerHost$18;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogCategoryListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogCategoryListResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/narvii/drawer/DrawerHost;->blogCategoryError:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/narvii/drawer/DrawerHost;->blogCategoryList:Ljava/util/ArrayList;

    .line 4
    iget-object p1, p2, Lcom/narvii/model/api/BlogCategoryListResponse;->blogCategoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/BlogCategory;

    .line 5
    iget v1, v0, Lcom/narvii/model/BlogCategory;->status:I

    const/16 v2, 0x9

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :cond_1
    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 6
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 7
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->blogCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 8
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->blogCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 9
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->r(Lcom/narvii/drawer/DrawerHost;)V

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$18;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 11
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "_drawerResponseListener"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/Callback;

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
