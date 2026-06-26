.class Lcom/narvii/account/AccountService$14;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountService;->sendReminderStatRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/account/RecentVisitorCountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountService;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountService;Ljava/lang/Class;)V
    .locals 0

    .line 1446
    iput-object p1, p0, Lcom/narvii/account/AccountService$14;->this$0:Lcom/narvii/account/AccountService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic lambda$onFinish$0(Lcom/narvii/account/RecentVisitorCountResponse;Lcom/narvii/account/AccountService$RecentVisitorListener;)V
    .locals 1

    .line 1453
    iget v0, p0, Lcom/narvii/account/RecentVisitorCountResponse;->unreadVisitorsCount:I

    iget p0, p0, Lcom/narvii/account/RecentVisitorCountResponse;->visitorsCount:I

    invoke-interface {p1, v0, p0}, Lcom/narvii/account/AccountService$RecentVisitorListener;->onVisitorCountChanged(II)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/RecentVisitorCountResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1449
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 1450
    iget-object p1, p0, Lcom/narvii/account/AccountService$14;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {p1}, Lcom/narvii/account/AccountService;->access$400(Lcom/narvii/account/AccountService;)I

    move-result p1

    .line 1451
    iget v0, p2, Lcom/narvii/account/RecentVisitorCountResponse;->unreadVisitorsCount:I

    if-eq p1, v0, :cond_0

    .line 1452
    iget-object p1, p0, Lcom/narvii/account/AccountService$14;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {p1, v0}, Lcom/narvii/account/AccountService;->access$500(Lcom/narvii/account/AccountService;I)V

    .line 1453
    iget-object p1, p0, Lcom/narvii/account/AccountService$14;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {p1}, Lcom/narvii/account/AccountService;->access$600(Lcom/narvii/account/AccountService;)Lcom/narvii/util/EventDispatcher;

    move-result-object p1

    new-instance v0, Lcom/narvii/account/-$$Lambda$AccountService$14$OSEbLc_FOzi2gpmcj8au9256k1Y;

    invoke-direct {v0, p2}, Lcom/narvii/account/-$$Lambda$AccountService$14$OSEbLc_FOzi2gpmcj8au9256k1Y;-><init>(Lcom/narvii/account/RecentVisitorCountResponse;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

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

    .line 1446
    check-cast p2, Lcom/narvii/account/RecentVisitorCountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/AccountService$14;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/RecentVisitorCountResponse;)V

    return-void
.end method
