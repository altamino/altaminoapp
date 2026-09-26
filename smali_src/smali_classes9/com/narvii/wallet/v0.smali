.class public final synthetic Lcom/narvii/wallet/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/v0;->a:Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/v0;->a:Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;

    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->h(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
