.class public final synthetic Lcom/narvii/wallet/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/q0;->a:Lcom/narvii/wallet/WalletRecyclerFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/q0;->a:Lcom/narvii/wallet/WalletRecyclerFragment;

    check-cast p1, Lcom/narvii/wallet/WalletResponse;

    invoke-static {v0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->u(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method
