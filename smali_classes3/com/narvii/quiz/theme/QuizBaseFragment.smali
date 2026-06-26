.class public Lcom/narvii/quiz/theme/QuizBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "QuizBaseFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# static fields
.field public static final QUIZ_MODE_HELL:I = 0x1

.field public static final QUIZ_MODE_NORMAL:I


# instance fields
.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private feedHelper:Lcom/narvii/feed/FeedHelper;

.field protected liveLayerTarget:Ljava/lang/String;

.field public final params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

.field protected quiz:Lcom/narvii/model/Blog;

.field protected quizQuestion:Lcom/narvii/model/QuizQuestion;

.field protected quizeThemeDelegate:Lcom/narvii/quiz/theme/QuizThemeDelegate;

.field protected resultUploaded:Z

.field protected resultUploading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->actions:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->params:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/narvii/quiz/theme/QuizThemeDelegate;

    invoke-direct {v0}, Lcom/narvii/quiz/theme/QuizThemeDelegate;-><init>()V

    iput-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizeThemeDelegate:Lcom/narvii/quiz/theme/QuizThemeDelegate;

    return-void
.end method


# virtual methods
.method public addQuizListExtra(Landroid/content/Intent;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->feedHelper:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/feed/FeedHelper;->addQuizListExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method protected allowQuit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected isFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isJoinedThisCommunity()Z
    .locals 2

    const-string v0, "account"

    .line 118
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 119
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "affiliations"

    .line 122
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    const-string v1, "config"

    .line 123
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 124
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->allowQuit()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 134
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    const v0, 0x7f0f1089

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 135
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    const v0, 0x7f0f0193

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 136
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    const v0, 0x7f0f0e7a

    new-instance v1, Lcom/narvii/quiz/theme/QuizBaseFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/quiz/theme/QuizBaseFragment$1;-><init>(Lcom/narvii/quiz/theme/QuizBaseFragment;)V

    const/high16 v2, -0x10000

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 157
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 158
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 61
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->feedHelper:Lcom/narvii/feed/FeedHelper;

    const-string p1, "quiz"

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Blog;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    const-string p1, "preview"

    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "flagMode"

    .line 64
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_3

    if-eqz v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "currentQuestion"

    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    .line 73
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    goto :goto_2

    .line 69
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    :cond_3
    :goto_1
    const-string p1, "question"

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/QuizQuestion;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    :goto_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizeThemeDelegate:Lcom/narvii/quiz/theme/QuizThemeDelegate;

    iget-object p2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->isFullScreen()Z

    move-result v1

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/narvii/quiz/theme/QuizThemeDelegate;->setTheme(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Blog;Lcom/narvii/model/QuizQuestion;Z)V

    return-void
.end method

.method public uploadQuizResult(Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 7

    .line 103
    invoke-virtual {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->isJoinedThisCommunity()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploading:Z

    const-string v1, "api"

    .line 107
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    const-string v2, "resultList"

    .line 108
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/narvii/scene/quiz/QuizQuestionResult;

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-string v3, "hellMode"

    .line 112
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    .line 113
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v6}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/quiz/result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    sget-object v5, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "mode"

    invoke-virtual {v4, v5, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    sget-object v4, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v4, "quizAnswerList"

    invoke-virtual {v3, v4, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->signature(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/16 v2, 0xe6

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->selfHandleErrorCode(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 114
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
