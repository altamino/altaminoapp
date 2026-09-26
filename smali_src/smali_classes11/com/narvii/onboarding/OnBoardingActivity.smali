.class public Lcom/narvii/onboarding/OnBoardingActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"


# instance fields
.field succeed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "statistics"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 9
    .line 10
    const-string v1, "Community Onboarding Result"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/narvii/onboarding/OnBoardingActivity;->succeed:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v1, "Succeess"

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const-string v1, "Skip"

    .line 24
    .line 25
    :goto_0
    const-string v2, "Result"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 29
    .line 30
    .line 31
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 32
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f010037

    .line 7
    .line 8
    .line 9
    const v1, 0x7f010038

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 13
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string v0, "dialog"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/onboarding/OnBoardingFragment;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Lcom/narvii/onboarding/OnBoardingFragment;-><init>()V

    .line 29
    .line 30
    .line 31
    const v2, 0x1020002

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 39
    :cond_0
    return-void
.end method
