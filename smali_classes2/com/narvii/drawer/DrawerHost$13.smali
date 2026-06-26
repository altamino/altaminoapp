.class Lcom/narvii/drawer/DrawerHost$13;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "DrawerHost.java"


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
        "Lcom/narvii/master/CommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V
    .locals 0

    .line 1277
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$13;->this$0:Lcom/narvii/drawer/DrawerHost;

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

    .line 1295
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$13;->this$0:Lcom/narvii/drawer/DrawerHost;

    iput-object p4, p1, Lcom/narvii/drawer/DrawerHost;->kindredCommunityError:Ljava/lang/String;

    .line 1296
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$500(Lcom/narvii/drawer/DrawerHost;)V

    .line 1297
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$13;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/CommunityListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1280
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 1281
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$13;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/drawer/DrawerHost;->kindredCommunityError:Ljava/lang/String;

    .line 1282
    iget-object v0, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    iput-object v0, p1, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    .line 1283
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$500(Lcom/narvii/drawer/DrawerHost;)V

    .line 1284
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$13;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    .line 1286
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$13;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "_drawerResponseListener"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 1288
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

    .line 1277
    check-cast p2, Lcom/narvii/master/CommunityListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerHost$13;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/CommunityListResponse;)V

    return-void
.end method
