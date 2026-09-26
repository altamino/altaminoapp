.class public final synthetic Lcom/narvii/wallet/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/t0;->a:Lcom/narvii/wallet/WalletRecyclerFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/t0;->a:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->t(Lcom/narvii/wallet/WalletRecyclerFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
