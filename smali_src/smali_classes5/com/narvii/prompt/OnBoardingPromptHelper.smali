.class public Lcom/narvii/prompt/OnBoardingPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "SourceFile"


# instance fields
.field public communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field public mOnBoardingIntent:Landroid/content/Intent;

.field public onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

.field recommendFeedsFinished:Z

.field recommendFollowFinished:Z

.field public showWelcome:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 4
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/prompt/OnBoardingPromptHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/prompt/OnBoardingPromptHelper;->startOnBoarding()V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/prompt/OnBoardingPromptHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/prompt/OnBoardingPromptHelper;->tryStartOnBoarding()V

    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startOnBoarding()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getCommunity()Lcom/narvii/model/Community;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    .line 19
    .line 20
    const-string v3, "flags"

    .line 21
    const/4 v4, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v5}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->showInNow()V

    .line 38
    .line 39
    :cond_1
    iget-boolean v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->showWelcome:Z

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 47
    move-result v5

    .line 48
    .line 49
    or-int/lit8 v5, v5, 0x2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    .line 55
    .line 56
    iget-object v5, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/narvii/modulization/CommunityConfigHelper;->getWelcomeMessageText()Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    const-string v6, "message"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    .line 68
    .line 69
    const-string v5, "community"

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    :cond_2
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 87
    .line 88
    .line 89
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->showInNow()V

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    const/16 v2, 0x8

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v2}, Lcom/narvii/amino/PromptShowListener;->setPromptShown(I)V

    .line 109
    .line 110
    :cond_3
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 111
    .line 112
    .line 113
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v2}, Lcom/narvii/prompt/OnBoardingPromptHelper;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 122
    .line 123
    .line 124
    const v2, 0x7f010037

    .line 125
    .line 126
    .line 127
    const v3, 0x7f010038

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    const-string v2, "welcomeShown_"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    iget v2, p0, Lcom/narvii/prompt/PromptHelper;->communityId:I

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 154
    const/4 v2, 0x1

    .line 155
    .line 156
    .line 157
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 165
    goto :goto_0

    .line 166
    .line 167
    .line 168
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 169
    :goto_0
    return-void
.end method

.method private tryStartOnBoarding()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->recommendFollowFinished:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->recommendFeedsFinished:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    .line 11
    .line 12
    const-string v1, "flags"

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/prompt/OnBoardingPromptHelper$4;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/prompt/OnBoardingPromptHelper$4;-><init>(Lcom/narvii/prompt/OnBoardingPromptHelper;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-class v2, Lcom/narvii/onboarding/OnBoardingActivity;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getWelcomeMessageText()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->welcomeMessageEnabled()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-nez v0, :cond_0

    .line 64
    move v0, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v0, v3

    .line 67
    .line 68
    :goto_0
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v5, "welcomeShown_"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    iget v5, p0, Lcom/narvii/prompt/PromptHelper;->communityId:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-nez v1, :cond_1

    .line 94
    .line 95
    if-eqz v0, :cond_1

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move v2, v3

    .line 98
    .line 99
    :goto_1
    iput-boolean v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->showWelcome:Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getUser()Lcom/narvii/model/User;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->canShowNow()Z

    .line 111
    move-result v0

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    const-string v1, "/user-profile/recommended"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 130
    .line 131
    const-string v2, "api"

    .line 132
    .line 133
    .line 134
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 138
    .line 139
    new-instance v2, Lcom/narvii/prompt/OnBoardingPromptHelper$1;

    .line 140
    .line 141
    const-class v3, Lcom/narvii/model/api/UserListResponse;

    .line 142
    .line 143
    .line 144
    invoke-direct {v2, p0, v3}, Lcom/narvii/prompt/OnBoardingPromptHelper$1;-><init>(Lcom/narvii/prompt/OnBoardingPromptHelper;Ljava/lang/Class;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    const-string v2, "/feed/blog-recommended"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    new-instance v2, Lcom/narvii/prompt/OnBoardingPromptHelper$2;

    .line 164
    .line 165
    const-class v3, Lcom/narvii/model/api/BlogListResponse;

    .line 166
    .line 167
    .line 168
    invoke-direct {v2, p0, v3}, Lcom/narvii/prompt/OnBoardingPromptHelper$2;-><init>(Lcom/narvii/prompt/OnBoardingPromptHelper;Ljava/lang/Class;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 172
    return-void

    .line 173
    .line 174
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->showWelcome:Z

    .line 175
    .line 176
    if-eqz v0, :cond_3

    .line 177
    .line 178
    new-instance v0, Lcom/narvii/prompt/OnBoardingPromptHelper$3;

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, p0}, Lcom/narvii/prompt/OnBoardingPromptHelper$3;-><init>(Lcom/narvii/prompt/OnBoardingPromptHelper;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    .line 185
    return-void

    .line 186
    .line 187
    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 189
    return-void
.end method
