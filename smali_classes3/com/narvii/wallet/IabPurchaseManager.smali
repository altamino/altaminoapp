.class public Lcom/narvii/wallet/IabPurchaseManager;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "IabPurchaseManager.java"

# interfaces
.implements Lcom/narvii/wallet/util/IabHelper$OnIabSetupFinishedListener;
.implements Lcom/narvii/wallet/util/IabHelper$QueryInventoryFinishedListener;
.implements Lcom/narvii/wallet/util/IabHelper$OnIabPurchaseFinishedListener;
.implements Lcom/narvii/wallet/util/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/ProductListResponse;",
        ">;",
        "Lcom/narvii/wallet/util/IabHelper$OnIabSetupFinishedListener;",
        "Lcom/narvii/wallet/util/IabHelper$QueryInventoryFinishedListener;",
        "Lcom/narvii/wallet/util/IabHelper$OnIabPurchaseFinishedListener;",
        "Lcom/narvii/wallet/util/IabHelper$OnConsumeFinishedListener;"
    }
.end annotation


# static fields
.field public static final FROM_PURCHASE_COIN_DIALOG:I = 0x2

.field public static final FROM_WALLET_FRAGMENT:I = 0x1

.field public static final REQUEST_IAB_PURCHASE:I = 0xe81f


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field from:I

.field iabError:Lcom/narvii/wallet/util/IabResult;

.field iabHelper:Lcom/narvii/wallet/util/IabHelper;

.field iabSetupted:Z

.field inventory:Lcom/narvii/wallet/util/Inventory;

.field pendingAction:Ljava/lang/Object;

.field pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

.field productListResponse:Lcom/narvii/wallet/ProductListResponse;

.field purchasingProduct:Lcom/narvii/wallet/Product;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 60
    const-class v0, Lcom/narvii/wallet/ProductListResponse;

    invoke-direct {p0, v0}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->from:I

    .line 61
    iput-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method private queryInv()V
    .locals 4

    .line 181
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->productListResponse:Lcom/narvii/wallet/ProductListResponse;

    iget-object v1, v1, Lcom/narvii/wallet/ProductListResponse;->productList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/wallet/Product;

    .line 183
    iget-object v2, v2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    const/4 v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/narvii/wallet/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/narvii/wallet/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "fail to query inventory"

    .line 189
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method clearPending()V
    .locals 2

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingAction:Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 138
    iput-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    :cond_0
    return-void
.end method

.method consumeProduct(Lcom/narvii/wallet/util/Purchase;Z)V
    .locals 9

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v5, v0

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {v5}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 322
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/wallet/product/purchase"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {p1}, Lcom/narvii/wallet/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sku"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    .line 324
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "paymentType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {p1}, Lcom/narvii/wallet/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "paymentContext"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 329
    new-instance v8, Lcom/narvii/wallet/IabPurchaseManager$2;

    const-class v4, Lcom/narvii/wallet/WalletResponse;

    move-object v2, v8

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/wallet/IabPurchaseManager$2;-><init>(Lcom/narvii/wallet/IabPurchaseManager;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/wallet/util/Purchase;Z)V

    invoke-virtual {v1, v0, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/wallet/util/IabHelper;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    :cond_0
    return-void
.end method

.method public getSkuDetail(Ljava/lang/String;)Lcom/narvii/wallet/util/SkuDetails;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->inventory:Lcom/narvii/wallet/util/Inventory;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/wallet/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/narvii/wallet/util/SkuDetails;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/wallet/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/wallet/IabPurchaseManager;->init(I)V

    return-void
.end method

.method public init(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->from:I

    .line 70
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/wallet/IabUtils;->createIabHelper(Landroid/content/Context;)Lcom/narvii/wallet/util/IabHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    .line 71
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    invoke-virtual {p1, p0}, Lcom/narvii/wallet/util/IabHelper;->startSetup(Lcom/narvii/wallet/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/narvii/wallet/IabPurchaseManager;->sendProductRequest()V

    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConsumeFinished(Lcom/narvii/wallet/util/Purchase;Lcom/narvii/wallet/util/IabResult;)V
    .locals 4

    .line 309
    invoke-virtual {p2}, Lcom/narvii/wallet/util/IabResult;->isSuccess()Z

    move-result v0

    const-string v1, "narvii_iab"

    if-eqz v0, :cond_0

    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "consumed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Lcom/narvii/wallet/IabUtils;->getErrorMessage(Lcom/narvii/wallet/util/IabResult;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/narvii/wallet/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 35
    check-cast p2, Lcom/narvii/wallet/ProductListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/IabPurchaseManager;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/ProductListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 114
    iput-object p2, p0, Lcom/narvii/wallet/IabPurchaseManager;->productListResponse:Lcom/narvii/wallet/ProductListResponse;

    .line 115
    iget-boolean p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabSetupted:Z

    if-eqz p1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/narvii/wallet/IabPurchaseManager;->queryInv()V

    :cond_0
    return-void
.end method

.method public onIabPurchaseFinished(Lcom/narvii/wallet/util/IabResult;Lcom/narvii/wallet/util/Purchase;)V
    .locals 0

    return-void
.end method

.method public onIabSetupFinished(Lcom/narvii/wallet/util/IabResult;)V
    .locals 6

    .line 195
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 196
    iput-boolean v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabSetupted:Z

    .line 197
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->productListResponse:Lcom/narvii/wallet/ProductListResponse;

    if-eqz p1, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/narvii/wallet/IabPurchaseManager;->queryInv()V

    goto :goto_0

    .line 201
    :cond_0
    iput-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabError:Lcom/narvii/wallet/util/IabResult;

    .line 202
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingAction:Ljava/lang/Object;

    instance-of v2, v0, Lcom/narvii/wallet/Product;

    if-eqz v2, :cond_1

    .line 203
    check-cast v0, Lcom/narvii/wallet/Product;

    .line 204
    invoke-virtual {p0}, Lcom/narvii/wallet/IabPurchaseManager;->clearPending()V

    .line 205
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v3, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-static {p1}, Lcom/narvii/wallet/IabUtils;->getErrorMessage(Lcom/narvii/wallet/util/IabResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v3, 0x7f0f0274

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 207
    invoke-virtual {v2, v3, v5, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 208
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    .line 210
    iget-object v2, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    const-string v3, "logging"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/logging/LoggingService;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sku"

    aput-object v4, v3, v5

    .line 211
    iget-object v0, v0, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object v0, v0, v5

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string v1, "reason"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    .line 213
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v1

    invoke-static {v1}, Lcom/narvii/wallet/IabUtils;->getReason(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "code"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    .line 214
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "message"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    .line 215
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "WalletPurchaseError"

    .line 211
    invoke-interface {v2, p1, v3}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onQueryInventoryFinished(Lcom/narvii/wallet/util/IabResult;Lcom/narvii/wallet/util/Inventory;)V
    .locals 6

    .line 222
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 223
    iput-object p2, p0, Lcom/narvii/wallet/IabPurchaseManager;->inventory:Lcom/narvii/wallet/util/Inventory;

    .line 227
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 228
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {p2}, Lcom/narvii/wallet/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/util/Purchase;

    .line 230
    invoke-virtual {v0}, Lcom/narvii/wallet/util/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inapp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/wallet/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "uid"

    aput-object v5, v4, v2

    .line 234
    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {p0, v0, v1}, Lcom/narvii/wallet/IabPurchaseManager;->consumeProduct(Lcom/narvii/wallet/util/Purchase;Z)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingAction:Ljava/lang/Object;

    instance-of p2, p1, Lcom/narvii/wallet/Product;

    if-eqz p2, :cond_4

    .line 241
    check-cast p1, Lcom/narvii/wallet/Product;

    .line 242
    invoke-virtual {p0}, Lcom/narvii/wallet/IabPurchaseManager;->clearPending()V

    .line 243
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/IabPurchaseManager;->purchase(Lcom/narvii/wallet/Product;)V

    goto :goto_1

    .line 246
    :cond_3
    iput-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabError:Lcom/narvii/wallet/util/IabResult;

    .line 247
    iget-object p2, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingAction:Ljava/lang/Object;

    instance-of v0, p2, Lcom/narvii/wallet/Product;

    if-eqz v0, :cond_4

    .line 248
    check-cast p2, Lcom/narvii/wallet/Product;

    .line 249
    invoke-virtual {p0}, Lcom/narvii/wallet/IabPurchaseManager;->clearPending()V

    .line 250
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v3, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-static {p1}, Lcom/narvii/wallet/IabUtils;->getErrorMessage(Lcom/narvii/wallet/util/IabResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v3, 0x7f0f0274

    const/4 v4, 0x0

    .line 252
    invoke-virtual {v0, v3, v2, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 253
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 255
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    const-string v3, "logging"

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sku"

    aput-object v4, v3, v2

    .line 256
    iget-object p2, p2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object p2, p2, v2

    aput-object p2, v3, v1

    const/4 p2, 0x2

    const-string v1, "reason"

    aput-object v1, v3, p2

    const/4 p2, 0x3

    .line 258
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v1

    invoke-static {v1}, Lcom/narvii/wallet/IabUtils;->getReason(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p2

    const/4 p2, 0x4

    const-string v1, "code"

    aput-object v1, v3, p2

    const/4 p2, 0x5

    .line 259
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p2

    const/4 p2, 0x6

    const-string v1, "message"

    aput-object v1, v3, p2

    const/4 p2, 0x7

    .line 260
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p2

    const-string p1, "WalletPurchaseError"

    .line 256
    invoke-interface {v0, p1, v3}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onWalletResponse(Lcom/narvii/wallet/WalletResponse;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    const-string v1, "membership"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 363
    invoke-virtual {v0, p1}, Lcom/narvii/wallet/MembershipService;->updateWalletBalance(Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method purchase(Lcom/narvii/wallet/Product;)V
    .locals 14

    .line 143
    invoke-virtual {p0}, Lcom/narvii/wallet/IabPurchaseManager;->clearPending()V

    .line 144
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->inventory:Lcom/narvii/wallet/util/Inventory;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 146
    iput-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 148
    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    const-string v2, "logging"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "sku"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 149
    iget-object v6, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const-string v6, "WalletPurchaseStarting"

    invoke-interface {v1, v6, v3}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :try_start_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    const-string v6, "uid"

    .line 154
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 155
    iget-object v8, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/Activity;

    iget-object v0, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object v10, v0, v5

    const v11, 0xe81f

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v12, p0

    invoke-virtual/range {v8 .. v13}, Lcom/narvii/wallet/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/narvii/wallet/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    .line 157
    iget-object v4, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v3, v7

    const-string v4, "reason"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "IAB_EXCEPTION"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "code"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const/16 v4, 0x28

    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "message"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "WalletPurchaseError"

    .line 157
    invoke-interface {v1, v2, v3}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "fail to launch iab purchase"

    .line 163
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingAction:Ljava/lang/Object;

    .line 168
    invoke-virtual {p0}, Lcom/narvii/wallet/IabPurchaseManager;->showPendingDlg()V

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingAction:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager;->iabError:Lcom/narvii/wallet/util/IabResult;

    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/IabPurchaseManager;->onIabSetupFinished(Lcom/narvii/wallet/util/IabResult;)V

    :cond_2
    return-void
.end method

.method public sendProductRequest()V
    .locals 7

    .line 91
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const-string v1, "rcmd"

    const-string v2, "page"

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "paymentType"

    const/16 v6, 0x65

    if-ne v0, v6, :cond_1

    .line 92
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v6, "/wallet/product/master"

    invoke-virtual {v0, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 94
    iget v4, p0, Lcom/narvii/wallet/IabPurchaseManager;->from:I

    if-ne v4, v3, :cond_0

    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v6, "/wallet/product"

    invoke-virtual {v0, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    .line 101
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v0, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 102
    iget v4, p0, Lcom/narvii/wallet/IabPurchaseManager;->from:I

    if-ne v4, v3, :cond_2

    .line 103
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 105
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 108
    invoke-virtual {v1, v0, p0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method showPendingDlg()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/narvii/wallet/IabPurchaseManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/wallet/IabPurchaseManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 124
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v1, Lcom/narvii/wallet/IabPurchaseManager$1;

    invoke-direct {v1, p0}, Lcom/narvii/wallet/IabPurchaseManager$1;-><init>(Lcom/narvii/wallet/IabPurchaseManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 131
    iget-object v0, p0, Lcom/narvii/wallet/IabPurchaseManager;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method
