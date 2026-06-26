.class public Lcom/narvii/monetization/MemberShipExpireWarningFragment;
.super Lcom/narvii/app/NVFragment;
.source "MemberShipExpireWarningFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnRenew:Landroid/view/View;

.field private cell:Landroid/view/View;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field public source:Ljava/lang/String;

.field private tvExpireContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method public static attachTo(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-static {p0, v0}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static attachTo(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "membership_expire"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;

    invoke-direct {v0}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;-><init>()V

    .line 100
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const v2, 0x7f0906f1

    invoke-virtual {p0, v2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    if-eqz p1, :cond_2

    .line 103
    iput-object p1, v0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->source:Ljava/lang/String;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090954

    if-eq p1, v0, :cond_0

    const v0, 0x7f09098b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    const-class p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->source:Ljava/lang/String;

    const-string v1, "Source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "subscribe"

    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "membership"

    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02bf

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 6

    .line 54
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 57
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->tvExpireContent:Landroid/widget/TextView;

    const v3, 0x7f0f0b60

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    if-ne v0, v3, :cond_2

    .line 62
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->tvExpireContent:Landroid/widget/TextView;

    const v3, 0x7f0f0b61

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    if-le v0, v3, :cond_3

    .line 64
    iget-object v4, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->tvExpireContent:Landroid/widget/TextView;

    const v5, 0x7f0f0b62

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p0, v5, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->tvExpireContent:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->cell:Landroid/view/View;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09098b

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->cell:Landroid/view/View;

    .line 46
    iget-object p2, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->cell:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090954

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->btnRenew:Landroid/view/View;

    .line 48
    iget-object p2, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->btnRenew:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090408

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->tvExpireContent:Landroid/widget/TextView;

    return-void
.end method
