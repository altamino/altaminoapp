.class public Lcom/narvii/monetization/MembershipTrialDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const v0, 0x7f13015d

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d01c1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    const p1, 0x7f0a0321

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f0a0f0b

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "statistics"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 20
    .line 21
    const-string v1, "Amino+ Trial Prompt"

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "Event"

    .line 28
    .line 29
    const-string v2, "Dismissed"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "Amino+ Trial Prompt Dismissed Total"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 39
    return-void
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
    const v0, 0x7f0a0321

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0f0b

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
    const-string v1, "Try Amino+ Dialog"

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
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/narvii/monetization/MembershipTrialDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string v0, "statistics"

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 59
    .line 60
    const-string v0, "Amino+ Trial Prompt"

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string v0, "Event"

    .line 67
    .line 68
    const-string v1, "Try Button"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    const-string v0, "Amino+ Trial Prompt Try Button Total"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/MembershipTrialDialog;->cancel()V

    .line 82
    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 4
    .line 5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 12
    .line 13
    const-wide/16 v1, 0x190

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a01c8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const v0, 0x7f0a083f

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    const v2, 0x7f010030

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    new-instance v2, Lcom/narvii/monetization/MembershipTrialDialog$1;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, p0, v0}, Lcom/narvii/monetization/MembershipTrialDialog$1;-><init>(Lcom/narvii/monetization/MembershipTrialDialog;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 60
    :cond_1
    return-void
.end method
