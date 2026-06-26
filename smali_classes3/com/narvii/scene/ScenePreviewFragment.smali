.class public Lcom/narvii/scene/ScenePreviewFragment;
.super Lcom/narvii/app/NVFragment;
.source "ScenePreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
.implements Lcom/narvii/scene/ScenePlayListener;
.implements Lcom/narvii/widgets/IStoryPollQuizPlayListener;


# static fields
.field private static VOLUME_WHEN_PLAY_POLL_QUIZ:F = 0.5f


# instance fields
.field private isPlayingGame:Z

.field private isWaitingPlaying:Z

.field pollPlayRecordHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/scene/ScenePlayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private pollQuizContainer:Landroid/view/ViewGroup;

.field private previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

.field quizPlayRecordHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/scene/ScenePlayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private sceneDraft:Lcom/narvii/scene/model/SceneDraft;

.field private scenePollQuizHelper:Lcom/narvii/scene/ScenePollQuizHelper;

.field private storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->isWaitingPlaying:Z

    .line 46
    iput-boolean v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->isPlayingGame:Z

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private showInvalidDialog()V
    .locals 4

    .line 178
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 179
    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 180
    new-instance v1, Lcom/narvii/scene/ScenePreviewFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/ScenePreviewFragment$1;-><init>(Lcom/narvii/scene/ScenePreviewFragment;)V

    const/4 v2, 0x0

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 187
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 188
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private shuffleQuizAnswer()V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 100
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-static {v2, v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 107
    invoke-virtual {v1, v2}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    .line 57
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ScenePreview"

    return-object v0
.end method

.method public getPollQuizPlayRecord(Ljava/lang/String;)Lcom/narvii/scene/ScenePlayRecord;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/ScenePlayRecord;

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/narvii/scene/ScenePlayRecord;

    :cond_0
    return-object v0
.end method

.method public hidePollQuiz()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->scenePollQuizHelper:Lcom/narvii/scene/ScenePollQuizHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/ScenePollQuizHelper;->hidePollQuiz()V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 260
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 261
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollQuizContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 264
    instance-of v2, v1, Lcom/narvii/scene/ScenePlayView;

    if-eqz v2, :cond_0

    .line 265
    check-cast v1, Lcom/narvii/scene/ScenePlayView;

    invoke-interface {v1, p1}, Lcom/narvii/scene/ScenePlayView;->onActiveChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 4

    .line 193
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->pause()V

    .line 194
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ScenePreviewLayout"

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->release([Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 195
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 196
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 170
    sget v0, Lcom/narvii/mediaeditor/R$id;->to_last_scene:I

    if-ne p1, v0, :cond_0

    .line 171
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->playLast()V

    goto :goto_0

    .line 172
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->to_next_scene:I

    if-ne p1, v0, :cond_1

    .line 173
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->getCurrentSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->getCurrentSceneIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/ScenePreviewFragment;->onSceneEnd(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 62
    const-class v0, Lcom/narvii/scene/model/SceneDraft;

    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "sceneDraft"

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    iput-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    iput-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/ScenePreviewFragment;->shuffleQuizAnswer()V

    .line 69
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    if-eqz p1, :cond_7

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    .line 71
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v1, :cond_4

    .line 72
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/QuizOption;

    .line 75
    iget-object v4, v3, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    goto :goto_1

    .line 79
    :cond_3
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-static {v1, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 80
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v2, v1}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 83
    :cond_4
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/PollOption;

    .line 85
    iget-object v2, v1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 86
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    goto :goto_2

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/narvii/scene/poll/PollExtensionKt;->initPollPlayRecord(Ljava/util/List;Ljava/util/HashMap;Z)V

    :cond_7
    const-string p1, ""

    .line 93
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 123
    sget p3, Lcom/narvii/mediaeditor/R$layout;->preview_scene_fullscreen_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/narvii/scene/view/ScenePreviewLayout;->release([Ljava/lang/Object;)V

    .line 164
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->isWaitingPlaying:Z

    .line 157
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->toPause()V

    .line 158
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    return-void
.end method

.method public onPlayingError(Ljava/lang/Exception;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/narvii/scene/ScenePreviewFragment;->showInvalidDialog()V

    return-void
.end method

.method public onPlayingPause()V
    .locals 0

    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 0

    return-void
.end method

.method public onPlayingStart()V
    .locals 0

    return-void
.end method

.method public onPlayingStop()V
    .locals 0

    return-void
.end method

.method public onPrepared()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 151
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    iget-boolean v1, p0, Lcom/narvii/scene/ScenePreviewFragment;->isWaitingPlaying:Z

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->toResume(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sceneDraft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "currentPosition"

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSceneChanged(Ljava/lang/String;I)V
    .locals 0

    .line 202
    iget-boolean p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->isPlayingGame:Z

    if-nez p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p2}, Lcom/narvii/scene/view/ScenePreviewLayout;->getCurrentSceneIndexIgnoreEmpty()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widgets/StoryProgressBar;->setCurSceneIndex(I)V

    :cond_0
    return-void
.end method

.method public onSceneEnd(Ljava/lang/String;I)V
    .locals 2

    .line 245
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p2}, Lcom/narvii/scene/model/SceneInfo;->containsPollOrQuiz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Ljava/lang/String;Z)V

    .line 248
    iget-boolean p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->isPlayingGame:Z

    if-nez p1, :cond_1

    .line 249
    iput-boolean v1, p0, Lcom/narvii/scene/ScenePreviewFragment;->isPlayingGame:Z

    .line 250
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    sget v0, Lcom/narvii/scene/ScenePreviewFragment;->VOLUME_WHEN_PLAY_POLL_QUIZ:F

    invoke-virtual {p1, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setVolumePercent(F)V

    .line 251
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    iget-object v0, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/ScenePlayRecord;

    invoke-virtual {p0, p2, p1, p0}, Lcom/narvii/scene/ScenePreviewFragment;->showPollQuiz(Lcom/narvii/model/story/ScenePollOrQuizHost;Lcom/narvii/scene/ScenePlayRecord;Lcom/narvii/scene/ScenePlayListener;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->playNext()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScenePlayEnd(Ljava/lang/String;)V
    .locals 0

    .line 297
    invoke-virtual {p0}, Lcom/narvii/scene/ScenePreviewFragment;->hidePollQuiz()V

    const/4 p1, 0x0

    .line 298
    iput-boolean p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->isPlayingGame:Z

    .line 299
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->playNext()V

    .line 300
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->unMute()V

    return-void
.end method

.method public onScenePlayRecordGenerated(Ljava/lang/String;Lcom/narvii/scene/ScenePlayRecord;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 282
    iget v0, p2, Lcom/narvii/scene/ScenePlayRecord;->interactionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    if-eqz p1, :cond_2

    .line 291
    invoke-virtual {p1}, Lcom/narvii/widgets/StoryProgressBar;->updatePlayedPollQuiz()V

    :cond_2
    return-void
.end method

.method public onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 128
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 129
    sget p2, Lcom/narvii/mediaeditor/R$id;->preview_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/scene/view/ScenePreviewLayout;

    iput-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 130
    sget p2, Lcom/narvii/mediaeditor/R$id;->story_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widgets/StoryProgressBar;

    iput-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    .line 131
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {p2, p0}, Lcom/narvii/widgets/StoryProgressBar;->setStoryQuizPollPlayListener(Lcom/narvii/widgets/IStoryPollQuizPlayListener;)V

    .line 133
    sget p2, Lcom/narvii/mediaeditor/R$id;->to_last_scene:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget p2, Lcom/narvii/mediaeditor/R$id;->to_next_scene:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    .line 137
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p2, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V

    .line 138
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setLoop(Z)V

    .line 140
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v1, v0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->getSceneListIgnoreEmpty()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/narvii/widgets/StoryProgressBar;->setStory(Ljava/lang/String;Ljava/util/List;)V

    .line 141
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->getCurrentSceneIndexIgnoreEmpty()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/widgets/StoryProgressBar;->setCurSceneIndex(I)V

    .line 143
    sget p2, Lcom/narvii/mediaeditor/R$id;->poll_quiz_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollQuizContainer:Landroid/view/ViewGroup;

    .line 145
    new-instance p1, Lcom/narvii/scene/ScenePollQuizHelper;

    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-direct {p1, p2}, Lcom/narvii/scene/ScenePollQuizHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->scenePollQuizHelper:Lcom/narvii/scene/ScenePollQuizHelper;

    return-void
.end method

.method public showPollQuiz(Lcom/narvii/model/story/ScenePollOrQuizHost;Lcom/narvii/scene/ScenePlayRecord;Lcom/narvii/scene/ScenePlayListener;)V
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->scenePollQuizHelper:Lcom/narvii/scene/ScenePollQuizHelper;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/scene/ScenePollQuizHelper;->showPollQuiz(Lcom/narvii/model/story/ScenePollOrQuizHost;Lcom/narvii/scene/ScenePlayRecord;Lcom/narvii/scene/ScenePlayListener;ZLcom/narvii/model/Blog;)V

    return-void
.end method
