.class public Lcom/narvii/prompt/MembershipTrialPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "MembershipTrialPromptHelper.java"


# static fields
.field public static final FORCE_SHOW:Z = false

.field public static final MEMBERSHIP_TRIAL_PROMPT_SHOWN_TIME:Ljava/lang/String; = "membership_trial_prompt_shown_time"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    return-void
.end method

.method private canShow()Z
    .locals 9

    .line 49
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/32 v2, 0x240c8400

    .line 56
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 57
    iget-object v4, v0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 61
    iget-object v0, v0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_2

    return v1

    .line 66
    :cond_2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v6, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v6}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 67
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v6, "membership"

    invoke-interface {v0, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 72
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v6

    if-nez v6, :cond_4

    return v1

    .line 76
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/narvii/amino/PromptShowListener;->anyPromptShown()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    const-string v8, "membership_trial_prompt_shown_time"

    invoke-interface {v0, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x1

    return v0

    :cond_8
    :goto_0
    return v1
.end method


# virtual methods
.method protected doTryShow()V
    .locals 4

    .line 26
    invoke-direct {p0}, Lcom/narvii/prompt/MembershipTrialPromptHelper;->canShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    .line 29
    invoke-interface {v0, v1}, Lcom/narvii/amino/PromptShowListener;->setPromptShown(I)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "membership_trial_prompt_shown_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    new-instance v0, Lcom/narvii/monetization/MembershipTrialDialog;

    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/monetization/MembershipTrialDialog;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0}, Lcom/narvii/monetization/MembershipTrialDialog;->show()V

    .line 36
    new-instance v1, Lcom/narvii/prompt/MembershipTrialPromptHelper$1;

    invoke-direct {v1, p0}, Lcom/narvii/prompt/MembershipTrialPromptHelper$1;-><init>(Lcom/narvii/prompt/MembershipTrialPromptHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :goto_0
    return-void
.end method
