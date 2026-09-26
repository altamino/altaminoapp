.class public final synthetic Lcom/narvii/wallet/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/CoinBillingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/CoinBillingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/d;->a:Lcom/narvii/wallet/CoinBillingManager;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/d;->a:Lcom/narvii/wallet/CoinBillingManager;

    invoke-static {v0, p1}, Lcom/narvii/wallet/CoinBillingManager;->c(Lcom/narvii/wallet/CoinBillingManager;Landroid/content/DialogInterface;)V

    return-void
.end method
