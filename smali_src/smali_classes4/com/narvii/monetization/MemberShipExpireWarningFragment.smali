.class public Lcom/narvii/monetization/MemberShipExpireWarningFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static attachTo(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static attachTo(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "membership_expire"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;

    invoke-direct {v0}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v2, 0x7f0a0952

    invoke-virtual {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    iput-object p1, v0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->source:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0c10

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0c4c

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/narvii/wallet/membership/MembershipActivity;->createMembershipIntent()Landroid/content/Intent;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string v0, "Source"

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->source:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    const-string v0, "subscribe"

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 36
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "membership"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 14
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02f1

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onResume()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    if-ltz v0, :cond_0

    .line 30
    move v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v2

    .line 33
    .line 34
    :goto_0
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->tvExpireContent:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v3, 0x7f120c64

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    if-ne v0, v3, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->tvExpireContent:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    const v3, 0x7f120c65

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    if-le v0, v3, :cond_3

    .line 57
    .line 58
    iget-object v4, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->tvExpireContent:Landroid/widget/TextView;

    .line 59
    .line 60
    new-array v3, v3, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    aput-object v0, v3, v2

    .line 67
    .line 68
    .line 69
    const v0, 0x7f120c66

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->tvExpireContent:Landroid/widget/TextView;

    .line 80
    const/4 v3, 0x0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    :goto_1
    iget-object v0, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->cell:Landroid/view/View;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :cond_4
    const/16 v2, 0x8

    .line 91
    .line 92
    .line 93
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0c4c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->cell:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    const p2, 0x7f0a0c10

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->btnRenew:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0a0540

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->tvExpireContent:Landroid/widget/TextView;

    .line 39
    return-void
.end method
