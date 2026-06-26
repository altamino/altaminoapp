.class public Lcom/narvii/tipping/TippingAuthorListFragment;
.super Lcom/narvii/tipping/TippingBaseFragment;
.source "TippingAuthorListFragment.java"


# instance fields
.field private bottomContainer:Landroid/widget/FrameLayout;

.field navToWallet:Landroid/widget/TextView;

.field totalCoins:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment;-><init>()V

    return-void
.end method

.method private updateHeader()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/narvii/tipping/TippingAuthorListFragment;->bottomContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingAuthorListFragment;->totalCoins:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/narvii/tipping/TippingAuthorListFragment;->bottomContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f09074e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingAuthorListFragment;->navToWallet:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/narvii/tipping/TippingAuthorListFragment;->bottomContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/narvii/tipping/-$$Lambda$TippingAuthorListFragment$IwR2ROFJi0agdInCv4RA31oVkdI;

    invoke-direct {v1, p0}, Lcom/narvii/tipping/-$$Lambda$TippingAuthorListFragment$IwR2ROFJi0agdInCv4RA31oVkdI;-><init>(Lcom/narvii/tipping/TippingAuthorListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected isAuthor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$updateHeader$0$TippingAuthorListFragment(Landroid/view/View;)V
    .locals 2

    .line 93
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Props Givers"

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 96
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "WalletBar"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/narvii/tipping/TippingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/tipping/TippingBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09014c

    .line 52
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/narvii/tipping/TippingAuthorListFragment;->bottomContainer:Landroid/widget/FrameLayout;

    .line 53
    iget-object p3, p0, Lcom/narvii/tipping/TippingAuthorListFragment;->bottomContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0696

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object p2
.end method

.method public onStart()V
    .locals 0

    .line 76
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    return-void
.end method

.method protected onTippingSummaryUpdated(Lcom/narvii/tipping/model/TipSummary;Lcom/narvii/tipping/model/TipSummary;)V
    .locals 3

    .line 102
    invoke-super {p0, p1, p2}, Lcom/narvii/tipping/TippingBaseFragment;->onTippingSummaryUpdated(Lcom/narvii/tipping/model/TipSummary;Lcom/narvii/tipping/model/TipSummary;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget p1, p1, Lcom/narvii/tipping/model/TipSummary;->totalCoins:I

    iget p2, p2, Lcom/narvii/tipping/model/TipSummary;->totalCoins:I

    add-int/2addr p1, p2

    .line 107
    iget-object p2, p0, Lcom/narvii/tipping/TippingAuthorListFragment;->totalCoins:Landroid/widget/TextView;

    sget-object v0, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/narvii/tipping/TippingBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0f0c44

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyText(I)V

    .line 61
    invoke-direct {p0}, Lcom/narvii/tipping/TippingAuthorListFragment;->updateHeader()V

    return-void
.end method

.method protected titleId()I
    .locals 1

    const v0, 0x7f0f10b8

    return v0
.end method
