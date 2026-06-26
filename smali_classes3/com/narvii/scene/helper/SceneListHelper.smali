.class public Lcom/narvii/scene/helper/SceneListHelper;
.super Ljava/lang/Object;
.source "SceneListHelper.java"


# static fields
.field public static final EDIT_BACKGROUND_MUSIC:I = 0xfc14

.field public static final MANAGE_SCENE_REQUEST:I = 0xfc10

.field public static final SCENE_EDIT_FROM_BLOG_TO_STORY:I = 0x2

.field public static final SCENE_EDIT_FROM_MEDIA_PICKER:I = 0x3

.field public static final SCENE_EDIT_FROM_STORY:I = 0x1

.field public static final SCENE_EDIT_REQUEST:I = 0xfc12

.field public static final SCENE_POLL:I = 0xfc16

.field public static final SCENE_PREVIEW:I = 0xfc13

.field public static final SCENE_QUIZ:I = 0xfc15


# instance fields
.field private nvContext:Lcom/narvii/app/NVContext;

.field private photoManager:Lcom/narvii/photos/PhotoManager;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneListHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "photo"

    .line 56
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneListHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    return-void
.end method


# virtual methods
.method public isSceneBackgroundResult(IILandroid/content/Intent;)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const p2, 0xfc14

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSceneEditorResult(IILandroid/content/Intent;)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const p2, 0xfc12

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSceneManageResult(IILandroid/content/Intent;)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const p2, 0xfc10

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isScenePollResult(IILandroid/content/Intent;)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const p2, 0xfc16

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isScenePreviewResult(II)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const p2, 0xfc13

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSceneQuizResult(IILandroid/content/Intent;)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const p2, 0xfc15

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public launch(Landroid/content/Intent;I)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneListHelper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 194
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 195
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 196
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public launchEditPoll(Lcom/narvii/model/Scene;Ljava/lang/String;)V
    .locals 4

    .line 177
    new-instance v0, Lcom/narvii/scene/model/SceneInfo;

    invoke-direct {v0}, Lcom/narvii/scene/model/SceneInfo;-><init>()V

    .line 178
    iget-object v1, p1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 179
    iget-object v1, p1, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    iput-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 180
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ndc://fragment/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/narvii/scene/poll/ScenePollPostFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "outputFileDir"

    .line 181
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "sceneInfo"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "editRemote"

    const/4 v0, 0x1

    .line 183
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    iget-object p1, p1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "coverImageUrl"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xfc16

    .line 185
    invoke-virtual {p0, v1, p1}, Lcom/narvii/scene/helper/SceneListHelper;->launch(Landroid/content/Intent;I)V

    return-void
.end method

.method public launchEditPoll(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneListHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "editorPackFactory"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/IEditorPackFactory;

    invoke-interface {v0}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/narvii/scene/SceneBasePostFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0, p1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->getLastFrameSnapShot(Lcom/narvii/scene/model/SceneInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 170
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/scene/poll/ScenePollPostFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "outputFileDir"

    .line 171
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sceneInfo"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xfc16

    .line 173
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/helper/SceneListHelper;->launch(Landroid/content/Intent;I)V

    return-void
.end method

.method public launchEditQuiz(Lcom/narvii/model/Scene;Ljava/lang/String;)V
    .locals 3

    .line 154
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "editRemote"

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    iget-object v1, p1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "coverImageUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "outputFileDir"

    .line 157
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object p2, p1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    const-string v1, "sceneId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p1}, Lcom/narvii/model/Scene;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "question"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xfc15

    .line 160
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/helper/SceneListHelper;->launch(Landroid/content/Intent;I)V

    return-void
.end method

.method public launchEditQuiz(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneListHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "editorPackFactory"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/IEditorPackFactory;

    invoke-interface {v0}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/narvii/scene/SceneBasePostFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0, p1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->getLastFrameSnapShot(Lcom/narvii/scene/model/SceneInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "outputFileDir"

    .line 147
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v1, "sceneId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->getQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "question"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xfc15

    .line 150
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/helper/SceneListHelper;->launch(Landroid/content/Intent;I)V

    return-void
.end method

.method public launchSceneBackgroundMusic(Lcom/narvii/scene/model/SceneDraft;Lcom/narvii/model/Media;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "soundDataList"

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/media/online/audio/model/Sound;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/online/audio/model/Sound;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    const-string v0, "category"

    .line 138
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/narvii/media/online/audio/model/AssetCategory;

    invoke-static {p3, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 139
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->getTotalDuration()J

    move-result-wide v4

    iget-object v6, p0, Lcom/narvii/scene/helper/SceneListHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/narvii/scene/helper/SceneUtils;->createAudioClipInfo(Lcom/narvii/model/Media;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;JLcom/narvii/photos/PhotoManager;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object p2

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneBackgroundMusic(Lcom/narvii/scene/model/SceneDraft;Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void
.end method

.method public launchSceneBackgroundMusic(Lcom/narvii/scene/model/SceneDraft;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 3

    .line 125
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sceneDraft"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bgMusicClip"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xfc14

    .line 128
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/helper/SceneListHelper;->launch(Landroid/content/Intent;I)V

    return-void
.end method

.method public launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 64
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "outputFileDir"

    .line 65
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "sceneInfo"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x7b

    :goto_0
    const-string p2, "mediaType"

    .line 67
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "from"

    .line 68
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra"

    .line 69
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xfc12

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/helper/SceneListHelper;->launch(Landroid/content/Intent;I)V

    return-void
.end method

.method public launchSceneEditor(Ljava/util/List;Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Lcom/narvii/scene/model/SceneInfo;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    if-eqz p5, :cond_1

    const-string v3, "pickFrom"

    .line 80
    invoke-virtual {p5, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 82
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/narvii/model/Media;

    .line 83
    iget-object v3, p0, Lcom/narvii/scene/helper/SceneListHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    iget-object v4, p5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, ""

    .line 85
    :goto_1
    invoke-virtual {p5}, Lcom/narvii/model/Media;->isImage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-static {v3}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 87
    invoke-static {v3}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 88
    invoke-static {v3}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 89
    invoke-static {v3}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 92
    :cond_3
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v4, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget p5, p5, Lcom/narvii/model/Media;->type:I

    invoke-virtual {v4, v3, p5, v2}, Lcom/narvii/video/services/SceneMediaProcessor;->getVideoSource(Ljava/lang/String;II)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {p2}, Lcom/narvii/scene/model/SceneInfo;->copy()Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/narvii/scene/helper/SceneListHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    invoke-static {p1, v0, v1, p2}, Lcom/narvii/scene/helper/SceneUtils;->fillSceneInfoWithMediaList(Lcom/narvii/scene/model/SceneInfo;Ljava/util/List;Ljava/util/List;Lcom/narvii/photos/PhotoManager;)V

    .line 97
    invoke-virtual {p0, p1, p3, p4}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;)V

    return-void
.end method

.method public launchSceneManager(Lcom/narvii/scene/model/SceneDraft;)V
    .locals 3

    .line 105
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/scene/SceneManageFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sceneDraft"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xfc10

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/helper/SceneListHelper;->launch(Landroid/content/Intent;I)V

    return-void
.end method

.method public launchScenePreview(Lcom/narvii/scene/model/SceneDraft;)V
    .locals 3

    .line 115
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/scene/ScenePreviewFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sceneDraft"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xfc13

    .line 117
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/helper/SceneListHelper;->launch(Landroid/content/Intent;I)V

    return-void
.end method
