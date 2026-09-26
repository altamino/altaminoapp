.class public final Lcom/narvii/scene/helper/SceneMediaPickerHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaPickerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaPickerHelper.kt\ncom/narvii/scene/helper/SceneMediaPickerHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1#2:123\n*E\n"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private draftId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mediaPicker:Lcom/narvii/media/MediaPickerFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sceneInfo:Lcom/narvii/scene/model/SceneInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sceneMediaPickerDialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final templateChooseService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/media/MediaPickerFragment;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/media/MediaPickerFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "path"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "mediaPicker"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->path:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 25
    .line 26
    new-instance p1, Lcom/narvii/scene/helper/SceneMediaPickerHelper$templateChooseService$2;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper$templateChooseService$2;-><init>(Lcom/narvii/scene/helper/SceneMediaPickerHelper;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->templateChooseService$delegate:Lw7/m;

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;-><init>(Lcom/narvii/scene/helper/SceneMediaPickerHelper;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->sceneMediaPickerDialog$delegate:Lw7/m;

    .line 47
    return-void
.end method

.method private final getCacheDir()Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "storyTemplate"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 28
    :cond_0
    return-object v0
.end method

.method private final getSceneMediaPickerDialog()Lcom/narvii/scene/dialog/SceneMediaPickerDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->sceneMediaPickerDialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    .line 9
    return-object v0
.end method

.method private final getTemplateChooseService()Lcom/narvii/scene/service/ChooseSceneTemplateService;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->templateChooseService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/service/ChooseSceneTemplateService;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final dismissTemplate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getTemplateChooseService()Lcom/narvii/scene/service/ChooseSceneTemplateService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    .line 8
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getDraftId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->draftId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaPicker()Lcom/narvii/media/MediaPickerFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getSceneInfo()Lcom/narvii/scene/model/SceneInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-object v0
.end method

.method public onPickOnlineVideo()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "type"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "video"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    .line 20
    .line 21
    const/16 v2, 0x20

    .line 22
    .line 23
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    .line 30
    .line 31
    iput-boolean v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGoogleVideoSearch:Z

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 34
    const/4 v3, 0x0

    .line 35
    .line 36
    iput-object v3, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    .line 42
    return-void
.end method

.method public onPickPhoto()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "type"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "video"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    .line 20
    .line 21
    const/16 v2, 0xa

    .line 22
    .line 23
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    .line 24
    .line 25
    const/16 v2, 0x10

    .line 26
    .line 27
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    iput-object v3, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v3, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    .line 44
    return-void
.end method

.method public onPickRecentMedia(Lcom/narvii/model/Media;)V
    .locals 3
    .param p1    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/media/MediaPickerFragment$OnResultListener;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "type"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "video"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/media/MediaPickerFragment$OnResultListener;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1, v0}, Lcom/narvii/media/MediaPickerFragment$OnResultListener;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    .line 38
    :cond_1
    return-void
.end method

.method public onPickVideoTemplate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getTemplateChooseService()Lcom/narvii/scene/service/ChooseSceneTemplateService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/scene/helper/SceneMediaPickerHelper$onPickVideoTemplate$1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper$onPickVideoTemplate$1;-><init>(Lcom/narvii/scene/helper/SceneMediaPickerHelper;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->setOnChooseTemplateListener(Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getTemplateChooseService()Lcom/narvii/scene/service/ChooseSceneTemplateService;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->show()V

    .line 20
    return-void
.end method

.method public final setDraftId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->draftId:Ljava/lang/String;

    return-void
.end method

.method public final setSceneInfo(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-void
.end method

.method public final showPickerDialog(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sceneInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "draftId"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->draftId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getSceneMediaPickerDialog()Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->show()V

    .line 22
    return-void
.end method
