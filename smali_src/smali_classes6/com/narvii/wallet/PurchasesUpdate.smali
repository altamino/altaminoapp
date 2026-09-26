.class public final Lcom/narvii/wallet/PurchasesUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final billingResult:Lcom/android/billingclient/api/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final purchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/h;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "billingResult"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/wallet/PurchasesUpdate;->billingResult:Lcom/android/billingclient/api/h;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/wallet/PurchasesUpdate;->purchases:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public final getBillingResult()Lcom/android/billingclient/api/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/wallet/PurchasesUpdate;->billingResult:Lcom/android/billingclient/api/h;

    return-object v0
.end method

.method public final getPurchases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/wallet/PurchasesUpdate;->purchases:Ljava/util/List;

    return-object v0
.end method

.method public final isSuccess()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/PurchasesUpdate;->billingResult:Lcom/android/billingclient/api/h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/wallet/BillingKt;->isSuccess(Lcom/android/billingclient/api/h;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final userCanceled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/PurchasesUpdate;->billingResult:Lcom/android/billingclient/api/h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/wallet/BillingKt;->userCanceled(Lcom/android/billingclient/api/h;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
