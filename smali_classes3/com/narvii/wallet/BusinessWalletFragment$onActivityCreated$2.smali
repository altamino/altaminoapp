.class final Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$2;
.super Ljava/lang/Object;
.source "BusinessWalletFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/BusinessWalletFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/BusinessWalletFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/BusinessWalletFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$2;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$2;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getApiService$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/http/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$2;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v0}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getCoinRequest$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method
