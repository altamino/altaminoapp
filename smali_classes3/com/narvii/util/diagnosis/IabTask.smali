.class public Lcom/narvii/util/diagnosis/IabTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "IabTask.java"

# interfaces
.implements Lcom/narvii/wallet/util/IabHelper$OnIabSetupFinishedListener;
.implements Lcom/narvii/wallet/util/IabHelper$QueryInventoryFinishedListener;


# instance fields
.field iabHelper:Lcom/narvii/wallet/util/IabHelper;

.field myUid:Ljava/lang/String;

.field purchases:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "Iab"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const-string v0, "account"

    .line 30
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 31
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/diagnosis/IabTask;->myUid:Ljava/lang/String;

    .line 32
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/wallet/IabUtils;->createIabHelper(Landroid/content/Context;)Lcom/narvii/wallet/util/IabHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/diagnosis/IabTask;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    return-void
.end method


# virtual methods
.method appendTo(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/narvii/util/diagnosis/DiagnosisTask;->appendTo(Landroid/text/SpannableStringBuilder;)V

    .line 97
    iget-object v0, p0, Lcom/narvii/util/diagnosis/IabTask;->purchases:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method destory()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/narvii/util/diagnosis/DiagnosisTask;->destory()V

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/diagnosis/IabTask;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    invoke-virtual {v0}, Lcom/narvii/wallet/util/IabHelper;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/narvii/util/diagnosis/IabTask;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    return-void
.end method

.method public onIabSetupFinished(Lcom/narvii/wallet/util/IabResult;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/util/diagnosis/IabTask;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    if-eqz v0, :cond_1

    .line 54
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/narvii/wallet/util/IabHelper;->queryInventoryAsync(Lcom/narvii/wallet/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 56
    iput-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    .line 60
    :cond_1
    iput-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 61
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public onQueryInventoryFinished(Lcom/narvii/wallet/util/IabResult;Lcom/narvii/wallet/util/Inventory;)V
    .locals 5

    .line 67
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    .line 68
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/narvii/wallet/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    sget-object p2, Lcom/narvii/wallet/IabUtils;->PURCHASE_COMPARATOR_R:Ljava/util/Comparator;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "    None\n"

    .line 72
    iput-object p1, p0, Lcom/narvii/util/diagnosis/IabTask;->purchases:Ljava/lang/String;

    goto/16 :goto_3

    .line 74
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/wallet/util/Purchase;

    const-string v3, "    "

    .line 76
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/narvii/wallet/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/narvii/wallet/util/Purchase;->isAutoRenewing()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "A"

    goto :goto_1

    :cond_1
    const-string v4, "N"

    :goto_1
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Lcom/narvii/wallet/util/Purchase;->getPurchaseState()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/narvii/wallet/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Lcom/narvii/wallet/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    new-array v3, p1, [Ljava/lang/String;

    const-string v4, "uid"

    aput-object v4, v3, v1

    .line 79
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/narvii/util/diagnosis/IabTask;->myUid:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v2, 0xa

    .line 84
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/diagnosis/IabTask;->purchases:Ljava/lang/String;

    goto :goto_3

    .line 89
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 90
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method public run()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/util/diagnosis/IabTask;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    invoke-virtual {v0, p0}, Lcom/narvii/wallet/util/IabHelper;->startSetup(Lcom/narvii/wallet/util/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method
