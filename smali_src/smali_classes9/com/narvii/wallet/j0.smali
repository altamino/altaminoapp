.class public final synthetic Lcom/narvii/wallet/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/PurchaseCoinFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/PurchaseCoinFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/j0;->a:Lcom/narvii/wallet/PurchaseCoinFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/j0;->a:Lcom/narvii/wallet/PurchaseCoinFragment;

    check-cast p1, Lcom/narvii/wallet/WalletResponse;

    invoke-static {v0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->o(Lcom/narvii/wallet/PurchaseCoinFragment;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method
