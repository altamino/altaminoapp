.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MembershipMainRecyclerFragment.java"


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

    .line 655
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 2
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

    .line 676
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "purchased"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->purchasedSku:Lcom/narvii/wallet/util/Purchase;

    .line 679
    new-instance p3, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 680
    invoke-virtual {p3, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x7f0f0274

    const/4 p4, 0x0

    .line 681
    invoke-virtual {p3, p1, p4, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 682
    invoke-virtual {p3}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 684
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

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

    .line 655
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

    .line 658
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 659
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "purchased"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 660
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->purchasedSku:Lcom/narvii/wallet/util/Purchase;

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    iget-boolean v0, p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->logged:Z

    if-nez v0, :cond_2

    const-string v0, "logging"

    .line 663
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 664
    iget-object v0, p2, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "MembershipViewEntered"

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 665
    invoke-interface {p1, v3, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "membershipStatus"

    aput-object v5, v4, v2

    .line 667
    iget v0, v0, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-interface {p1, v3, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    :goto_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    iput-boolean v1, p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->logged:Z

    .line 671
    :cond_2
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setResponse(Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method
