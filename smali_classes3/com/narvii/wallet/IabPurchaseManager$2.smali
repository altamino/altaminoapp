.class Lcom/narvii/wallet/IabPurchaseManager$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "IabPurchaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/IabPurchaseManager;->consumeProduct(Lcom/narvii/wallet/util/Purchase;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/WalletResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/IabPurchaseManager;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$purchase:Lcom/narvii/wallet/util/Purchase;

.field final synthetic val$silent:Z


# direct methods
.method constructor <init>(Lcom/narvii/wallet/IabPurchaseManager;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/wallet/util/Purchase;Z)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->this$0:Lcom/narvii/wallet/IabPurchaseManager;

    iput-object p3, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->val$purchase:Lcom/narvii/wallet/util/Purchase;

    iput-boolean p5, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->val$silent:Z

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

    .line 346
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 349
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->val$silent:Z

    if-eqz p1, :cond_1

    .line 350
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->this$0:Lcom/narvii/wallet/IabPurchaseManager;

    iget-object p1, p1, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 352
    :cond_1
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p2, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->this$0:Lcom/narvii/wallet/IabPurchaseManager;

    iget-object p2, p2, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {p1, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p2, 0x7f0f0274

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 354
    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 355
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

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

    .line 329
    check-cast p2, Lcom/narvii/wallet/WalletResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/IabPurchaseManager$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->this$0:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/IabPurchaseManager;->onWalletResponse(Lcom/narvii/wallet/WalletResponse;)V

    .line 337
    :try_start_0
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->this$0:Lcom/narvii/wallet/IabPurchaseManager;

    iget-object p1, p1, Lcom/narvii/wallet/IabPurchaseManager;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    iget-object p2, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->val$purchase:Lcom/narvii/wallet/util/Purchase;

    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->this$0:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/wallet/util/IabHelper;->consumeAsync(Lcom/narvii/wallet/util/Purchase;Lcom/narvii/wallet/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 339
    iget-object p2, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->this$0:Lcom/narvii/wallet/IabPurchaseManager;

    iget-object p2, p2, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/NVToast;->show()V

    .line 340
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to consume product "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager$2;->val$purchase:Lcom/narvii/wallet/util/Purchase;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
