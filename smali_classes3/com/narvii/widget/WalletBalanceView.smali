.class public Lcom/narvii/widget/WalletBalanceView;
.super Landroid/widget/FrameLayout;
.source "WalletBalanceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;
    }
.end annotation


# instance fields
.field private claimHintLayout:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

.field private coinLayout:Landroid/view/View;

.field private membership:Lcom/narvii/wallet/MembershipService;

.field onClaimIconPreClickListener:Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;

.field onWalletPreClickListener:Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/WalletBalanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/WalletBalanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "Store"

    .line 30
    iput-object p2, p0, Lcom/narvii/widget/WalletBalanceView;->source:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "membership"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/widget/WalletBalanceView;->membership:Lcom/narvii/wallet/MembershipService;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090244

    const-string v1, "Source"

    if-eq p1, v0, :cond_2

    const v0, 0x7f090ac1

    if-eq p1, v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/WalletBalanceView;->onWalletPreClickListener:Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;

    if-eqz p1, :cond_1

    .line 76
    invoke-interface {p1}, Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;->onPreClick()V

    .line 79
    :cond_1
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->source:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/WalletBalanceView;->onClaimIconPreClickListener:Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;

    if-eqz p1, :cond_3

    .line 86
    invoke-interface {p1}, Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;->onPreClick()V

    .line 88
    :cond_3
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->source:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090ac1

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->coinLayout:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->coinLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090cf3

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    const v0, 0x7f090244

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    iput-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->claimHintLayout:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    .line 68
    iget-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->claimHintLayout:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->canGetNewMemberRewards()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/widget/WalletBalanceView;->setIsNew(Z)V

    .line 108
    iget-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/widget/WalletBalanceView;->setBalance(I)V

    return-void
.end method

.method public setBalance(I)V
    .locals 4

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/narvii/widget/WalletBalanceView;->coinLayout:Landroid/view/View;

    const v2, 0x7f090cf3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClaimHintBackground(II)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->claimHintLayout:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1, p2}, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->setBackgroundResource(II)V

    :cond_0
    return-void
.end method

.method public setCoinBackground(II)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->coinLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, p2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public setIsNew(Z)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->coinLayout:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/narvii/widget/WalletBalanceView;->claimHintLayout:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setOnClaimIconPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/widget/WalletBalanceView;->onClaimIconPreClickListener:Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;

    return-void
.end method

.method public setOnWalletPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/widget/WalletBalanceView;->onWalletPreClickListener:Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;

    return-void
.end method
