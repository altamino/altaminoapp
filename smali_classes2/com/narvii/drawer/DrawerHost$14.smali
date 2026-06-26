.class Lcom/narvii/drawer/DrawerHost$14;
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
        "Lcom/narvii/flag/model/GeneraCheckResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V
    .locals 0

    .line 1392
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$14;->this$0:Lcom/narvii/drawer/DrawerHost;

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

    .line 1413
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$14;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    .line 1414
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$14;->this$0:Lcom/narvii/drawer/DrawerHost;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCountTime:J

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/flag/model/GeneraCheckResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1395
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$14;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, p2, Lcom/narvii/flag/model/GeneraCheckResponse;->communityGeneralCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    iput-object v0, p1, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 1396
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$600(Lcom/narvii/drawer/DrawerHost;)V

    .line 1397
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$14;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/drawer/DrawerHost$14$1;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$14$1;-><init>(Lcom/narvii/drawer/DrawerHost$14;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 1403
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$14;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    .line 1405
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$14;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "_drawerResponseListener"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 1407
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

    .line 1392
    check-cast p2, Lcom/narvii/flag/model/GeneraCheckResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerHost$14;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/flag/model/GeneraCheckResponse;)V

    return-void
.end method
