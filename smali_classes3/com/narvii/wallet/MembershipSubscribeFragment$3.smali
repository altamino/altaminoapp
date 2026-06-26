.class Lcom/narvii/wallet/MembershipSubscribeFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MembershipSubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->onStart()V
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
.field final synthetic this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

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

    .line 205
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {p1, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p2, 0x7f0f0274

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 207
    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 208
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 209
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    check-cast p2, Lcom/narvii/wallet/MembershipResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-object p2, p2, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-nez p2, :cond_0

    new-instance p2, Lcom/narvii/wallet/MembershipStatus;

    invoke-direct {p2}, Lcom/narvii/wallet/MembershipStatus;-><init>()V

    :cond_0
    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 199
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;

    .line 200
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    return-void
.end method
