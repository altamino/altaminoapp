.class public Lcom/narvii/wallet/CoinHistoryFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/wallet/CoinHistoryFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/wallet/CoinHistoryFragment$1;-><init>(Lcom/narvii/wallet/CoinHistoryFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;-><init>(Lcom/narvii/wallet/CoinHistoryFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/list/DatePagedAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/wallet/CoinHistoryFragment;->businessWallet:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const v0, 0x7f080143

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 25
    .line 26
    .line 27
    const v0, -0xd25b19

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "businessWallet"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/wallet/CoinHistoryFragment;->businessWallet:Z

    .line 12
    .line 13
    .line 14
    const v0, 0x7f121288

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, "statistics"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 28
    .line 29
    const-string v0, "Transactions Page"

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string v0, "Transactions Page Total"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 39
    .line 40
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/wallet/CoinHistoryFragment;->businessWallet:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const-string p1, "Business Wallet History"

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    const-string p1, "Wallet History"

    .line 48
    .line 49
    :goto_0
    iput-object p1, p0, Lcom/narvii/wallet/CoinHistoryFragment;->source:Ljava/lang/String;

    .line 50
    return-void
.end method
