.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fetchMembership()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/MembershipResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 2
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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
    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "purchased"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 15
    const/4 p2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->E(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/android/billingclient/api/Purchase;)V

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 21
    .line 22
    iget-object p3, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    const p3, 0x7f1202ba

    .line 36
    const/4 p4, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3, p4, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 47
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
    check-cast p2, Lcom/narvii/wallet/MembershipResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    const-string v0, "purchased"

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->E(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/android/billingclient/api/Purchase;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->A(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    const-string v0, "logging"

    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 7
    iget-object v0, p2, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "MembershipViewEntered"

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v3, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "membershipStatus"

    aput-object v5, v4, v2

    .line 9
    iget v0, v0, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-interface {p1, v3, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 10
    invoke-static {p1, v1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->D(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Z)V

    :cond_2
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setResponse(Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method
