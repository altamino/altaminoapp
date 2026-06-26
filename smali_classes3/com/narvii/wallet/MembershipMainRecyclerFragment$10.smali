.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "MembershipMainRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipMainRecyclerFragment;->switchAutoRenew(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/wallet/MembershipResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Ljava/lang/Class;Landroid/view/View;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    iput-object p3, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;->val$v:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 873
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 874
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    .line 875
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;->val$v:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 858
    check-cast p2, Lcom/narvii/wallet/MembershipResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 861
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setResponse(Lcom/narvii/wallet/MembershipResponse;)V

    .line 862
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;->val$v:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 863
    new-instance p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10$1;

    invoke-direct {p1, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10$1;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
