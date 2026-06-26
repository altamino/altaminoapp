.class final Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$1;
.super Ljava/lang/Object;
.source "BusinessWalletFragment.kt"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;


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

    iput-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v0}, Lcom/narvii/wallet/BusinessWalletFragment;->access$sendBusinessCoinStatsRequest(Lcom/narvii/wallet/BusinessWalletFragment;)V

    return-void
.end method
