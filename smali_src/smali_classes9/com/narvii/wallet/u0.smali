.class public final synthetic Lcom/narvii/wallet/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/u0;->a:Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/u0;->a:Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;

    check-cast p1, Lcom/narvii/model/api/AccountResponse;

    invoke-static {v0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->g(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
