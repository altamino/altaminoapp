.class public Lcom/narvii/wallet/CoinHistoryFragment;
.super Lcom/narvii/list/NVListFragment;
.source "CoinHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/CoinHistoryFragment$Adapter;
    }
.end annotation


# instance fields
.field businessWallet:Z

.field source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 67
    new-instance p1, Lcom/narvii/wallet/CoinHistoryFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/wallet/CoinHistoryFragment$1;-><init>(Lcom/narvii/wallet/CoinHistoryFragment;Lcom/narvii/app/NVContext;)V

    .line 78
    new-instance v0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;-><init>(Lcom/narvii/wallet/CoinHistoryFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/DatePagedAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 80
    invoke-virtual {v0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    iget-boolean p1, p0, Lcom/narvii/wallet/CoinHistoryFragment;->businessWallet:Z

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0xd25b19

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "businessWallet"

    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/wallet/CoinHistoryFragment;->businessWallet:Z

    const v0, 0x7f0f1181

    .line 47
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 52
    iget-boolean p1, p0, Lcom/narvii/wallet/CoinHistoryFragment;->businessWallet:Z

    if-eqz p1, :cond_0

    const-string p1, "Business Wallet History"

    goto :goto_0

    :cond_0
    const-string p1, "Wallet History"

    :goto_0
    iput-object p1, p0, Lcom/narvii/wallet/CoinHistoryFragment;->source:Ljava/lang/String;

    return-void
.end method
