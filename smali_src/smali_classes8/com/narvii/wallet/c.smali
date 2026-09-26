.class public final synthetic Lcom/narvii/wallet/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/BusinessWalletFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/BusinessWalletFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/c;->a:Lcom/narvii/wallet/BusinessWalletFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/c;->a:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v0, p1}, Lcom/narvii/wallet/BusinessWalletFragment;->n(Lcom/narvii/wallet/BusinessWalletFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
