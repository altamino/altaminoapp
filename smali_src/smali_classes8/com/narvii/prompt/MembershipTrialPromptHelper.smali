.class public Lcom/narvii/prompt/MembershipTrialPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "SourceFile"


# static fields
.field public static final FORCE_SHOW:Z = false

.field public static final MEMBERSHIP_TRIAL_PROMPT_SHOWN_TIME:Ljava/lang/String; = "membership_trial_prompt_shown_time"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 5
    return-void
.end method

.method private canShow()Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_8

    .line 19
    .line 20
    iget-object v2, v0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    iget-object v0, v0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 37
    move-result-wide v4

    .line 38
    .line 39
    sub-long v4, v2, v4

    .line 40
    .line 41
    .line 42
    const-wide/32 v6, 0x240c8400

    .line 43
    .line 44
    cmp-long v0, v4, v6

    .line 45
    .line 46
    if-gez v0, :cond_2

    .line 47
    return v1

    .line 48
    .line 49
    :cond_2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v4}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    return v1

    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 64
    .line 65
    const-string v4, "membership"

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    .line 75
    move-result v4

    .line 76
    .line 77
    if-nez v4, :cond_4

    .line 78
    return v1

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    return v1

    .line 86
    .line 87
    :cond_5
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    .line 92
    invoke-interface {v0}, Lcom/narvii/amino/PromptShowListener;->anyPromptShown()Z

    .line 93
    move-result v0

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    return v1

    .line 97
    .line 98
    :cond_6
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    .line 99
    .line 100
    const-string v4, "membership_trial_prompt_shown_time"

    .line 101
    .line 102
    const-wide/16 v8, 0x0

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 106
    move-result-wide v4

    .line 107
    sub-long/2addr v2, v4

    .line 108
    .line 109
    cmp-long v0, v2, v6

    .line 110
    .line 111
    if-gez v0, :cond_7

    .line 112
    return v1

    .line 113
    :cond_7
    const/4 v0, 0x1

    .line 114
    return v0

    .line 115
    :cond_8
    :goto_0
    return v1
.end method


# virtual methods
.method protected doTryShow()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/prompt/MembershipTrialPromptHelper;->canShow()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x800

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/amino/PromptShowListener;->setPromptShown(I)V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "membership_trial_prompt_shown_time"

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/monetization/MembershipTrialDialog;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/narvii/monetization/MembershipTrialDialog;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/monetization/MembershipTrialDialog;->show()V

    .line 49
    .line 50
    new-instance v1, Lcom/narvii/prompt/MembershipTrialPromptHelper$1;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/narvii/prompt/MembershipTrialPromptHelper$1;-><init>(Lcom/narvii/prompt/MembershipTrialPromptHelper;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 61
    :goto_0
    return-void
.end method
