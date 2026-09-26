.class public Lcom/narvii/quiz/theme/QuizBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->actions:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->params:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/quiz/theme/QuizThemeDelegate;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lcom/narvii/quiz/theme/QuizThemeDelegate;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizeThemeDelegate:Lcom/narvii/quiz/theme/QuizThemeDelegate;

    .line 25
    return-void
.end method


# virtual methods
.method public addQuizListExtra(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/narvii/feed/FeedHelper;->addQuizListExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 14
    return-void
.end method

.method protected allowQuit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method protected isFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isJoinedThisCommunity()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    :cond_0
    const-string v0, "affiliations"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 25
    .line 26
    const-string v1, "config"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 40
    move-result v0

    .line 41
    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->allowQuit()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 20
    .line 21
    .line 22
    const v0, 0x7f12118b

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 28
    .line 29
    .line 30
    const v0, 0x7f1201e2

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/quiz/theme/QuizBaseFragment$1;-><init>(Lcom/narvii/quiz/theme/QuizBaseFragment;)V

    .line 42
    .line 43
    const/high16 v1, -0x10000

    .line 44
    .line 45
    .line 46
    const v2, 0x7f120f9b

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    const/16 v0, 0x400

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quitAlertDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 66
    const/4 p1, 0x1

    .line 67
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 19
    .line 20
    const-string p1, "quiz"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-class v0, Lcom/narvii/model/Blog;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/model/Blog;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 35
    .line 36
    const-string p1, "preview"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 40
    move-result p1

    .line 41
    .line 42
    const-string v0, "flagMode"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 61
    move-result p1

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    const-string p1, "currentQuestion"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 70
    move-result p1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 83
    goto :goto_2

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 87
    return-void

    .line 88
    .line 89
    :cond_3
    :goto_1
    const-string p1, "question"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    const-class v0, Lcom/narvii/model/QuizQuestion;

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 104
    :goto_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizeThemeDelegate:Lcom/narvii/quiz/theme/QuizThemeDelegate;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->isFullScreen()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/narvii/quiz/theme/QuizThemeDelegate;->setTheme(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Blog;Lcom/narvii/model/QuizQuestion;Z)V

    .line 17
    return-void
.end method

.method public uploadQuizResult(Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->isJoinedThisCommunity()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploading:Z

    .line 11
    .line 12
    const-string v1, "api"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 19
    .line 20
    const-string v2, "resultList"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    const-class v3, Lcom/narvii/scene/quiz/QuizQuestionResult;

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    :cond_1
    const-string v3, "hellMode"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 43
    move-result v3

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v6, "blog/"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object v6, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v6, "/quiz/result"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    sget-object v5, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    const-string v5, "mode"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    sget-object v4, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    const-string v4, "quizAnswerList"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->signature(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    const/16 v2, 0xe6

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->selfHandleErrorCode(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 129
    return-void
.end method
