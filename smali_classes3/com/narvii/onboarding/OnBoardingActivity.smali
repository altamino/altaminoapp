.class public Lcom/narvii/onboarding/OnBoardingActivity;
.super Lcom/narvii/app/NVActivity;
.source "OnBoardingActivity.java"


# instance fields
.field succeed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 32
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    const v0, 0x7f010029

    const v1, 0x7f01002a

    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x1020002

    new-instance v2, Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-direct {v2}, Lcom/narvii/onboarding/OnBoardingFragment;-><init>()V

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
