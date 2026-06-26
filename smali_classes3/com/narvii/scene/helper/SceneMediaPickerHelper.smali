.class public final Lcom/narvii/scene/helper/SceneMediaPickerHelper;
.super Ljava/lang/Object;
.source "SceneMediaPickerHelper.kt"

# interfaces
.implements Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaPickerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaPickerHelper.kt\ncom/narvii/scene/helper/SceneMediaPickerHelper\n*L\n1#1,122:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private draftId:Ljava/lang/String;

.field private final mediaPicker:Lcom/narvii/media/MediaPickerFragment;

.field private final path:Ljava/lang/String;

.field private sceneInfo:Lcom/narvii/scene/model/SceneInfo;

.field private final sceneMediaPickerDialog$delegate:Lkotlin/Lazy;

.field private final templateChooseService$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "templateChooseService"

    const-string v5, "getTemplateChooseService()Lcom/narvii/scene/service/ChooseSceneTemplateService;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "sceneMediaPickerDialog"

    const-string v4, "getSceneMediaPickerDialog()Lcom/narvii/scene/dialog/SceneMediaPickerDialog;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/media/MediaPickerFragment;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaPicker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 24
    new-instance p1, Lcom/narvii/scene/helper/SceneMediaPickerHelper$templateChooseService$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper$templateChooseService$2;-><init>(Lcom/narvii/scene/helper/SceneMediaPickerHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->templateChooseService$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;-><init>(Lcom/narvii/scene/helper/SceneMediaPickerHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->sceneMediaPickerDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getCacheDir()Ljava/io/File;
    .locals 3

    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ctx.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "storyTemplate"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private final getSceneMediaPickerDialog()Lcom/narvii/scene/dialog/SceneMediaPickerDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->sceneMediaPickerDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    return-object v0
.end method

.method private final getTemplateChooseService()Lcom/narvii/scene/service/ChooseSceneTemplateService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->templateChooseService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/service/ChooseSceneTemplateService;

    return-object v0
.end method


# virtual methods
.method public final dismissTemplate()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getTemplateChooseService()Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getDraftId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->draftId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaPicker()Lcom/narvii/media/MediaPickerFragment;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getSceneInfo()Lcom/narvii/scene/model/SceneInfo;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-object v0
.end method

.method public onPickOnlineVideo()V
    .locals 4

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const-string v2, "video"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    const/16 v2, 0x20

    .line 69
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    const/4 v2, 0x0

    .line 70
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    const/4 v2, 0x1

    .line 71
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    .line 72
    iput-boolean v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGoogleVideoSearch:Z

    .line 73
    iget-object v2, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 74
    iput-object v3, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 75
    invoke-virtual {v2, v3, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    return-void
.end method

.method public onPickPhoto()V
    .locals 4

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const-string v2, "video"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    const/16 v2, 0xa

    .line 56
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    const/16 v2, 0x18

    .line 57
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    const/4 v2, 0x0

    .line 58
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    const/4 v2, 0x1

    .line 59
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    .line 60
    iget-object v2, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 61
    iput-object v3, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 62
    invoke-virtual {v2, v3, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    return-void
.end method

.method public onPickRecentMedia(Lcom/narvii/model/Media;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->ctx:Lcom/narvii/app/NVContext;

    instance-of v0, v0, Lcom/narvii/media/MediaPickerFragment$OnResultListener;

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const-string v2, "video"

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->ctx:Lcom/narvii/app/NVContext;

    check-cast p1, Lcom/narvii/media/MediaPickerFragment$OnResultListener;

    invoke-interface {p1, v1, v0}, Lcom/narvii/media/MediaPickerFragment$OnResultListener;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onPickVideoTemplate()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getTemplateChooseService()Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object v0

    new-instance v1, Lcom/narvii/scene/helper/SceneMediaPickerHelper$onPickVideoTemplate$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper$onPickVideoTemplate$1;-><init>(Lcom/narvii/scene/helper/SceneMediaPickerHelper;)V

    invoke-virtual {v0, v1}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->setOnChooseTemplateListener(Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;)V

    .line 108
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getTemplateChooseService()Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->show()V

    return-void
.end method

.method public final setDraftId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->draftId:Ljava/lang/String;

    return-void
.end method

.method public final setSceneInfo(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-void
.end method

.method public final showPickerDialog(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sceneInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 38
    iput-object p2, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->draftId:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getSceneMediaPickerDialog()Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->show()V

    return-void
.end method
