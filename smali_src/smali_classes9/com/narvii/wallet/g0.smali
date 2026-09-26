.class public final synthetic Lcom/narvii/wallet/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/PurchaseCoinFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/PurchaseCoinFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/g0;->a:Lcom/narvii/wallet/PurchaseCoinFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/g0;->a:Lcom/narvii/wallet/PurchaseCoinFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialogFragment;->dismiss()V

    return-void
.end method
