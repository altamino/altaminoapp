.class public Lcom/narvii/prompt/OnBoardingPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "OnBoardingPromptHelper.java"


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

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/prompt/OnBoardingPromptHelper;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/prompt/OnBoardingPromptHelper;->tryStartOnBoarding()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/prompt/OnBoardingPromptHelper;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/prompt/OnBoardingPromptHelper;->startOnBoarding()V

    return-void
.end method

.method private startOnBoarding()V
    .locals 7

    .line 137
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getCommunity()Lcom/narvii/model/Community;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    const-string v4, "flags"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    new-instance v2, Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    iget-object v5, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v5}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 146
    invoke-virtual {v2}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->showInNow()V

    .line 149
    :cond_1
    iget-boolean v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->showWelcome:Z

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    iget-object v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v5}, Lcom/narvii/modulization/CommunityConfigHelper;->getWelcomeMessageText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "community"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    invoke-virtual {v0}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->showInNow()V

    .line 158
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    .line 159
    invoke-interface {v0, v2}, Lcom/narvii/amino/PromptShowListener;->setPromptShown(I)V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 162
    iget-object v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const v2, 0x7f010029

    const v3, 0x7f01002a

    .line 163
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 164
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "welcomeShown_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/prompt/PromptHelper;->communityId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 165
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :goto_0
    return-void
.end method

.method private tryStartOnBoarding()V
    .locals 3

    .line 122
    iget-boolean v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->recommendFollowFinished:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->recommendFeedsFinished:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/narvii/prompt/OnBoardingPromptHelper$4;

    invoke-direct {v0, p0}, Lcom/narvii/prompt/OnBoardingPromptHelper$4;-><init>(Lcom/narvii/prompt/OnBoardingPromptHelper;)V

    invoke-virtual {p0, v0}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 6

    .line 51
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/onboarding/OnBoardingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    .line 53
    new-instance v0, Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 55
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getWelcomeMessageText()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->welcomeMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "welcomeShown_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/narvii/prompt/PromptHelper;->communityId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 58
    :goto_1
    iput-boolean v2, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->showWelcome:Z

    .line 61
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getUser()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    invoke-virtual {v0}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->canShowNow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/user-profile/recommended"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 65
    new-instance v2, Lcom/narvii/prompt/OnBoardingPromptHelper$1;

    const-class v3, Lcom/narvii/model/api/UserListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/prompt/OnBoardingPromptHelper$1;-><init>(Lcom/narvii/prompt/OnBoardingPromptHelper;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 84
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v2, "/feed/blog-recommended"

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 85
    new-instance v2, Lcom/narvii/prompt/OnBoardingPromptHelper$2;

    const-class v3, Lcom/narvii/model/api/BlogListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/prompt/OnBoardingPromptHelper$2;-><init>(Lcom/narvii/prompt/OnBoardingPromptHelper;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    .line 107
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/prompt/OnBoardingPromptHelper;->showWelcome:Z

    if-eqz v0, :cond_3

    .line 108
    new-instance v0, Lcom/narvii/prompt/OnBoardingPromptHelper$3;

    invoke-direct {v0, p0}, Lcom/narvii/prompt/OnBoardingPromptHelper$3;-><init>(Lcom/narvii/prompt/OnBoardingPromptHelper;)V

    invoke-virtual {p0, v0}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    return-void

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void
.end method
