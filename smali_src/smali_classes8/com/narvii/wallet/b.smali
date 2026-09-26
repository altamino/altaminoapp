.class public final synthetic Lcom/narvii/wallet/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/BusinessWalletFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/BusinessWalletFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/b;->a:Lcom/narvii/wallet/BusinessWalletFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/b;->a:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v0}, Lcom/narvii/wallet/BusinessWalletFragment;->o(Lcom/narvii/wallet/BusinessWalletFragment;)V

    return-void
.end method
