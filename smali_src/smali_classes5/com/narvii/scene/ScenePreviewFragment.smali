.class public Lcom/narvii/scene/ScenePreviewFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

.field private storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->isWaitingPlaying:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->isPlayingGame:Z

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method private showInvalidDialog()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/scene/ScenePreviewFragment$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/scene/ScenePreviewFragment$1;-><init>(Lcom/narvii/scene/ScenePreviewFragment;)V

    .line 20
    .line 21
    .line 22
    const v2, 0x104000a

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 33
    return-void
.end method

.method private shuffleQuizAnswer()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    new-instance v3, Ljava/util/Random;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v4

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "scene_preview"

    return-object v0
.end method

.method public getPollQuizPlayRecord(Ljava/lang/String;)Lcom/narvii/scene/ScenePlayRecord;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/ScenePlayRecord;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    move-object v0, p1

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/scene/ScenePlayRecord;

    .line 20
    :cond_0
    return-object v0
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollQuizContainer:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollQuizContainer:Landroid/view/ViewGroup;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollQuizContainer:Landroid/view/ViewGroup;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    instance-of v2, v1, Lcom/narvii/scene/ScenePlayView;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/scene/ScenePlayView;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, p1}, Lcom/narvii/scene/ScenePlayView;->onActiveChanged(Z)V

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->pause()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    new-array v1, v0, [Ljava/lang/Object;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    const-string v3, "ScenePreviewLayout"

    .line 14
    .line 15
    aput-object v3, v1, v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->release([Ljava/lang/Object;)V

    .line 19
    const/4 p1, -0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 26
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    sget v0, Lcom/narvii/mediaeditor/R$id;->to_last_scene:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->playLast()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->to_next_scene:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->getCurrentSceneId()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->getCurrentSceneIndex()I

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/ScenePreviewFragment;->onSceneEnd(Ljava/lang/String;I)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/scene/model/SceneDraft;

    .line 6
    .line 7
    const-string v1, "sceneDraft"

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/ScenePreviewFragment;->shuffleQuizAnswer()V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 40
    .line 41
    if-eqz p1, :cond_7

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 44
    .line 45
    if-eqz p1, :cond_7

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v3

    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    check-cast v3, Lcom/narvii/model/QuizOption;

    .line 88
    .line 89
    iget-object v4, v3, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 90
    .line 91
    if-nez v4, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 95
    move-result-object v4

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 99
    move-result-object v4

    .line 100
    .line 101
    iput-object v4, v3, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_3
    new-instance v2, Ljava/util/Random;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    move-result-wide v3

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 115
    .line 116
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 120
    .line 121
    :cond_4
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 122
    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    iget-object v0, v0, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 126
    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    move-result v1

    .line 136
    .line 137
    if-eqz v1, :cond_1

    .line 138
    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    check-cast v1, Lcom/narvii/model/PollOption;

    .line 144
    .line 145
    iget-object v2, v1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 146
    .line 147
    if-nez v2, :cond_5

    .line 148
    .line 149
    .line 150
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    iput-object v2, v1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 158
    goto :goto_2

    .line 159
    .line 160
    :cond_6
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 161
    .line 162
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 163
    .line 164
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 168
    move-result v1

    .line 169
    .line 170
    .line 171
    invoke-static {p1, v0, v1}, Lcom/narvii/scene/poll/PollExtensionKt;->initPollPlayRecord(Ljava/util/List;Ljava/util/HashMap;Z)V

    .line 172
    .line 173
    :cond_7
    const-string p1, ""

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/mediaeditor/R$layout;->preview_scene_fullscreen_layout:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    aput-object v3, v1, v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->release([Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 17
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->isPlaying()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->isWaitingPlaying:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->toPause()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 17
    return-void
.end method

.method public onPlayingError(Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/ScenePreviewFragment;->showInvalidDialog()V

    .line 4
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/scene/ScenePreviewFragment;->isWaitingPlaying:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->toResume(Z)V

    .line 11
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "sceneDraft"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v0, "currentPosition"

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 21
    return-void
.end method

.method public onSceneChanged(Ljava/lang/String;I)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->isPlayingGame:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/narvii/scene/view/ScenePreviewLayout;->getCurrentSceneIndexIgnoreEmpty()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/widgets/StoryProgressBar;->setCurSceneIndex(I)V

    .line 16
    :cond_0
    return-void
.end method

.method public onSceneEnd(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/narvii/scene/model/SceneInfo;->containsPollOrQuiz()Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Ljava/lang/String;Z)V

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->isPlayingGame:Z

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->isPlayingGame:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 29
    .line 30
    sget p2, Lcom/narvii/scene/ScenePreviewFragment;->VOLUME_WHEN_PLAY_POLL_QUIZ:F

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/narvii/scene/view/ScenePreviewLayout;->setVolumePercent(F)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->playNext()V

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public onScenePlayEnd(Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->isPlayingGame:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->playNext()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->unMute()V

    .line 14
    return-void
.end method

.method public onScenePlayRecordGenerated(Ljava/lang/String;Lcom/narvii/scene/ScenePlayRecord;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget v0, p2, Lcom/narvii/scene/ScenePlayRecord;->interactionType:I

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/widgets/StoryProgressBar;->updatePlayedPollQuiz()V

    .line 37
    :cond_2
    return-void
.end method

.method public onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    sget p2, Lcom/narvii/mediaeditor/R$id;->preview_layout:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 14
    .line 15
    sget p2, Lcom/narvii/mediaeditor/R$id;->story_progress:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Lcom/narvii/widgets/StoryProgressBar;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Lcom/narvii/widgets/StoryProgressBar;->setStoryQuizPollPlayListener(Lcom/narvii/widgets/IStoryPollQuizPlayListener;)V

    .line 27
    .line 28
    sget p2, Lcom/narvii/mediaeditor/R$id;->to_last_scene:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    sget p2, Lcom/narvii/mediaeditor/R$id;->to_next_scene:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 59
    const/4 v0, 0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setLoop(Z)V

    .line 63
    .line 64
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->getSceneListIgnoreEmpty()Ljava/util/List;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v1, v0}, Lcom/narvii/widgets/StoryProgressBar;->setStory(Ljava/lang/String;Ljava/util/List;)V

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/scene/ScenePreviewFragment;->storyProgressBar:Lcom/narvii/widgets/StoryProgressBar;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/scene/ScenePreviewFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->getCurrentSceneIndexIgnoreEmpty()I

    .line 83
    move-result v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Lcom/narvii/widgets/StoryProgressBar;->setCurSceneIndex(I)V

    .line 87
    .line 88
    sget p2, Lcom/narvii/mediaeditor/R$id;->poll_quiz_container:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    check-cast p1, Landroid/view/ViewGroup;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/narvii/scene/ScenePreviewFragment;->pollQuizContainer:Landroid/view/ViewGroup;

    .line 97
    return-void
.end method
