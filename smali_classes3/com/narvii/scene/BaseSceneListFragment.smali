.class public Lcom/narvii/scene/BaseSceneListFragment;
.super Lcom/narvii/app/NVFragment;
.source "BaseSceneListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;
.implements Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;
.implements Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;
.implements Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;
.implements Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;
.implements Lcom/narvii/permisson/PermissionListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
.implements Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/BaseSceneListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseSceneListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseSceneListFragment.kt\ncom/narvii/scene/BaseSceneListFragment\n+ 2 MediaPreEditingActivity.kt\ncom/narvii/pre_editing/MediaPreEditingActivityKt\n*L\n1#1,1178:1\n346#2,8:1179\n323#2,21:1187\n*E\n*S KotlinDebug\n*F\n+ 1 BaseSceneListFragment.kt\ncom/narvii/scene/BaseSceneListFragment\n*L\n464#1,8:1179\n495#1,21:1187\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/scene/BaseSceneListFragment$Companion;

.field public static final MODE_CREATE:I = 0x1

.field public static final MODE_EDIT:I = 0x2

.field public static final PERMISSION_COMPILE_VIDEO_TO_SHARE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BaseSceneListFragment"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private alreadyClearUselessFile:Z

.field private final autoSaveDraft:Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

.field private autoSaveSceneDraft:Lcom/narvii/scene/model/SceneDraft;

.field private autoSaveSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundMusicButton$delegate:Lkotlin/Lazy;

.field private final createSceneLayout$delegate:Lkotlin/Lazy;

.field private final createSceneView$delegate:Lkotlin/Lazy;

.field protected draftId:Ljava/lang/String;

.field protected draftManager:Lcom/narvii/post/DraftManager;

.field private final emptyManageLayout$delegate:Lkotlin/Lazy;

.field private final emptyScenePlaceholder$delegate:Lkotlin/Lazy;

.field private final errorScenePlaceholder$delegate:Lkotlin/Lazy;

.field private final fileMisssingDialog$delegate:Lkotlin/Lazy;

.field private final invalidDialog$delegate:Lkotlin/Lazy;

.field private isError:Z

.field private isToPreview:Z

.field private isWaitingPlaying:Z

.field private loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private final manageLayout$delegate:Lkotlin/Lazy;

.field protected mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private mode:I

.field protected oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

.field private oldSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private permissionDenied:Z

.field private final playerContainer$delegate:Lkotlin/Lazy;

.field private final playerView$delegate:Lkotlin/Lazy;

.field private final previewContainer$delegate:Lkotlin/Lazy;

.field private final previewLayout$delegate:Lkotlin/Lazy;

.field private final radiusLayout$delegate:Lkotlin/Lazy;

.field private final roundCornerCover$delegate:Lkotlin/Lazy;

.field protected sceneDraft:Lcom/narvii/scene/model/SceneDraft;

.field protected sceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

.field private sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

.field private final sceneRecyclerView$delegate:Lkotlin/Lazy;

.field private selectedSceneId:Ljava/lang/String;

.field private selectedSceneIndex:I

.field private storyPostService:Lcom/narvii/scene/StoryPostService;

.field private toolTipHelper:Lcom/narvii/util/ToolTipHelper;

.field private final tvAdvancedStory$delegate:Lkotlin/Lazy;

.field private final tvManage$delegate:Lkotlin/Lazy;

.field private final tvTimeCurrent$delegate:Lkotlin/Lazy;

.field private final tvTimeTotal$delegate:Lkotlin/Lazy;

.field private videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

.field private final videoPlayButton$delegate:Lkotlin/Lazy;

.field private final warningLayout$delegate:Lkotlin/Lazy;

.field private final warningView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x17

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "previewContainer"

    const-string v4, "getPreviewContainer()Landroid/widget/FrameLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "backgroundMusicButton"

    const-string v4, "getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tvTimeCurrent"

    const-string v4, "getTvTimeCurrent()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tvTimeTotal"

    const-string v4, "getTvTimeTotal()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tvManage"

    const-string v4, "getTvManage()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sceneRecyclerView"

    const-string v4, "getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tvAdvancedStory"

    const-string v4, "getTvAdvancedStory()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "manageLayout"

    const-string v4, "getManageLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "emptyManageLayout"

    const-string v4, "getEmptyManageLayout()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "createSceneLayout"

    const-string v4, "getCreateSceneLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "createSceneView"

    const-string v4, "getCreateSceneView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "emptyScenePlaceholder"

    const-string v4, "getEmptyScenePlaceholder()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "errorScenePlaceholder"

    const-string v4, "getErrorScenePlaceholder()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerView"

    const-string v4, "getPlayerView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerContainer"

    const-string v4, "getPlayerContainer()Landroid/view/ViewGroup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "videoPlayButton"

    const-string v4, "getVideoPlayButton()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "warningView"

    const-string v4, "getWarningView()Lcom/narvii/widget/TintButton;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "warningLayout"

    const-string v4, "getWarningLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "roundCornerCover"

    const-string v4, "getRoundCornerCover()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "radiusLayout"

    const-string v4, "getRadiusLayout()Lcom/narvii/widget/RadiusLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "previewLayout"

    const-string v4, "getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fileMisssingDialog"

    const-string v4, "getFileMisssingDialog()Lcom/narvii/widget/ACMAlertDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "invalidDialog"

    const-string v4, "getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/BaseSceneListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/BaseSceneListFragment;->Companion:Lcom/narvii/scene/BaseSceneListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->mode:I

    .line 74
    sget v0, Lcom/narvii/mediaeditor/R$id;->preview_container:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->previewContainer$delegate:Lkotlin/Lazy;

    .line 75
    sget v0, Lcom/narvii/mediaeditor/R$id;->background_music_button:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->backgroundMusicButton$delegate:Lkotlin/Lazy;

    .line 76
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_time_current:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvTimeCurrent$delegate:Lkotlin/Lazy;

    .line 77
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_time_total:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvTimeTotal$delegate:Lkotlin/Lazy;

    .line 78
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_manage_scene:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvManage$delegate:Lkotlin/Lazy;

    .line 79
    sget v0, Lcom/narvii/mediaeditor/R$id;->scene_recycler_view:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneRecyclerView$delegate:Lkotlin/Lazy;

    .line 80
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_advanced_story:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvAdvancedStory$delegate:Lkotlin/Lazy;

    .line 81
    sget v0, Lcom/narvii/mediaeditor/R$id;->manage_layout:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->manageLayout$delegate:Lkotlin/Lazy;

    .line 82
    sget v0, Lcom/narvii/mediaeditor/R$id;->empty_manage_layout:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->emptyManageLayout$delegate:Lkotlin/Lazy;

    .line 83
    sget v0, Lcom/narvii/mediaeditor/R$id;->create_scene_layout:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->createSceneLayout$delegate:Lkotlin/Lazy;

    .line 84
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_create_scene:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->createSceneView$delegate:Lkotlin/Lazy;

    .line 85
    sget v0, Lcom/narvii/mediaeditor/R$id;->empty_placeholder_view:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->emptyScenePlaceholder$delegate:Lkotlin/Lazy;

    .line 86
    sget v0, Lcom/narvii/mediaeditor/R$id;->error_placeholder_view:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->errorScenePlaceholder$delegate:Lkotlin/Lazy;

    .line 87
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_view:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->playerView$delegate:Lkotlin/Lazy;

    .line 88
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_container:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->playerContainer$delegate:Lkotlin/Lazy;

    .line 89
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_play_button:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoPlayButton$delegate:Lkotlin/Lazy;

    .line 90
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_warning:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->warningView$delegate:Lkotlin/Lazy;

    .line 91
    sget v0, Lcom/narvii/mediaeditor/R$id;->fl_warning:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->warningLayout$delegate:Lkotlin/Lazy;

    .line 92
    sget v0, Lcom/narvii/mediaeditor/R$id;->round_corner_cover:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->roundCornerCover$delegate:Lkotlin/Lazy;

    .line 93
    sget v0, Lcom/narvii/mediaeditor/R$id;->radius_layout:I

    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->radiusLayout$delegate:Lkotlin/Lazy;

    .line 94
    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$previewLayout$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/BaseSceneListFragment$previewLayout$2;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->previewLayout$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->fileMisssingDialog$delegate:Lkotlin/Lazy;

    .line 130
    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$invalidDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/BaseSceneListFragment$invalidDialog$2;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->invalidDialog$delegate:Lkotlin/Lazy;

    .line 979
    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraft:Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

    return-void
.end method

.method public static final synthetic access$clearUselessClip(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->clearUselessClip()V

    return-void
.end method

.method public static final synthetic access$createPreviewLayout(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/scene/view/BaseScenePreviewLayout;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->createPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPermissionDenied$p(Lcom/narvii/scene/BaseSceneListFragment;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/narvii/scene/BaseSceneListFragment;->permissionDenied:Z

    return p0
.end method

.method public static final synthetic access$getSceneRecyclerView$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/scene/view/SceneRecyclerView;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getToolTipHelper$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/util/ToolTipHelper;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/narvii/scene/BaseSceneListFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-object p0
.end method

.method public static final synthetic access$getVideoAdvanceDialog$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/scene/dialog/VideoAdvanceDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    return-object p0
.end method

.method public static final synthetic access$logEditClose(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->logEditClose()V

    return-void
.end method

.method public static final synthetic access$setPermissionDenied$p(Lcom/narvii/scene/BaseSceneListFragment;Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->permissionDenied:Z

    return-void
.end method

.method public static final synthetic access$setToolTipHelper$p(Lcom/narvii/scene/BaseSceneListFragment;Lcom/narvii/util/ToolTipHelper;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method

.method public static final synthetic access$setVideoAdvanceDialog$p(Lcom/narvii/scene/BaseSceneListFragment;Lcom/narvii/scene/dialog/VideoAdvanceDialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    return-void
.end method

.method public static final synthetic access$updateSceneDraft(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateSceneDraft()V

    return-void
.end method

.method private final bind(I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 1173
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/scene/BaseSceneListFragment$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/BaseSceneListFragment$bind$1;-><init>(Lcom/narvii/scene/BaseSceneListFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final clearUselessClip()V
    .locals 1

    .line 943
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->clearUselessClip()Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 945
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateSceneDraft()V

    const/4 v0, 0x0

    .line 946
    invoke-virtual {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->saveDraft(Z)V

    .line 947
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->checkPermission()V

    .line 948
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->startAutoSaveTask()V

    goto :goto_0

    .line 944
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final createPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;
    .locals 13

    .line 473
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v1, "context!!"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/narvii/scene/view/ScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->backgroundMusicButton$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    return-object v0
.end method

.method private final getCreateSceneLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->createSceneLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getCreateSceneView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->createSceneView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getDraftAbsolutePath()Ljava/lang/String;
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "draftManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final getEmptyManageLayout()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->emptyManageLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getEmptyScenePlaceholder()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->emptyScenePlaceholder$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getErrorScenePlaceholder()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->errorScenePlaceholder$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getFileMisssingDialog()Lcom/narvii/widget/ACMAlertDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->fileMisssingDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ACMAlertDialog;

    return-object v0
.end method

.method private final getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->invalidDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/dialog/AlertDialog;

    return-object v0
.end method

.method private final getManageLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->manageLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getPlayerContainer()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->playerContainer$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final getPlayerView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->playerView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getPreviewContainer()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->previewContainer$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->previewLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/BaseScenePreviewLayout;

    return-object v0
.end method

.method private final getRadiusLayout()Lcom/narvii/widget/RadiusLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->radiusLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/RadiusLayout;

    return-object v0
.end method

.method private final getRoundCornerCover()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->roundCornerCover$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneRecyclerView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/SceneRecyclerView;

    return-object v0
.end method

.method private final getSelectedSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getTvAdvancedStory()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvAdvancedStory$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvManage()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvManage$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvTimeCurrent()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvTimeCurrent$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvTimeTotal()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvTimeTotal$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getVideoPlayButton()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoPlayButton$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getWarningLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->warningLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getWarningView()Lcom/narvii/widget/TintButton;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->warningView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/BaseSceneListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    return-object v0
.end method

.method private final hasNoScene()Z
    .locals 1

    .line 887
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->sceneSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final loadingVideo()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 558
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 559
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 557
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 565
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 562
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method private final logEditClose()V
    .locals 3

    .line 391
    sget-object v0, Lcom/narvii/logging/ActSemantic;->editClose:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "EditArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    const-string v2, "storyDraftId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method private final pickBackgroundMusic()V
    .locals 6

    .line 678
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "audio"

    .line 679
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v4, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 681
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/16 v3, 0x4206

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    return-void

    :cond_2
    const-string v0, "mediaPickerFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string v0, "draftManager"

    .line 680
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final resetSelectedScene()V
    .locals 6

    .line 737
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    const-string v1, ""

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 739
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iput v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 741
    iput-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 747
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 748
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Scene;

    .line 749
    iget-object v2, v2, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    iget-object v5, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 750
    iput v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 747
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 757
    :cond_4
    iput v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 758
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Scene;

    iget-object v0, v0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    const-string v1, "sceneList!![0].sceneId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 739
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 761
    :cond_7
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 762
    iput v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 763
    iput-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    return-void

    .line 768
    :cond_8
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 769
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string v1, "sceneDraft!!.sceneInfos"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_c

    .line 770
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 771
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 772
    iput v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    return-void

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 770
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 769
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 779
    :cond_c
    iput v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 780
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v1, "sceneDraft!!.sceneInfos[0]!!.id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    :goto_2
    return-void

    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 761
    :cond_f
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_4

    :goto_3
    throw v4

    :goto_4
    goto :goto_3
.end method

.method private final sceneChanged(ILjava/lang/String;)V
    .locals 3

    .line 1102
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->selectedScene(IZ)Z

    .line 1103
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->setPlaying(Z)V

    .line 1105
    iget-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    if-nez v0, :cond_0

    .line 1106
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->setSceneCanPlaying(ZLjava/lang/String;)V

    .line 1109
    :cond_0
    iput p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 1110
    iput-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 1112
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateTitle()V

    .line 1113
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer()V

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sceneChanged  >>>  sceneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  index = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseSceneListFragment"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final sceneSize()I
    .locals 2

    .line 889
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method private final showInvalidDialog()V
    .locals 4

    .line 931
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->RESUMED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 933
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/narvii/scene/BaseSceneListFragment$showInvalidDialog$1;

    invoke-direct {v2, p0}, Lcom/narvii/scene/BaseSceneListFragment$showInvalidDialog$1;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 937
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 938
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return-void
.end method

.method private final showTip()V
    .locals 3

    .line 689
    new-instance v0, Lcom/narvii/scene/helper/ScenePrefsHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/scene/helper/ScenePrefsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/narvii/scene/helper/ScenePrefsHelper;->isFirstEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    new-instance v0, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {v0}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 692
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/narvii/scene/BaseSceneListFragment$showTip$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/BaseSceneListFragment$showTip$1;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 702
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;

    invoke-direct {v1, p0}, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void

    .line 689
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final startAutoSaveTask()V
    .locals 3

    .line 971
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraftInterval()I

    move-result v0

    if-lez v0, :cond_0

    .line 972
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraft:Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 973
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraft:Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraftInterval()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private final toSceneEditor(Lcom/narvii/scene/model/SceneInfo;Z)V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "sceneListHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final updateBgMusicButton()V
    .locals 4

    .line 785
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 788
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_5

    .line 790
    iget-object v1, v0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 791
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v3, Lcom/narvii/mediaeditor/R$string;->background_music:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->setMode(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    .line 793
    :cond_3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    :goto_1
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->setMode(ILjava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final updateData()V
    .locals 3

    .line 914
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    .line 915
    instance-of v1, v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 916
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.scene.view.ScenePreviewLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_2
    instance-of v0, v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    if-eqz v0, :cond_5

    .line 919
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/EditScenePreviewLayout;->setSceneList(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.scene.view.EditScenePreviewLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method private final updateList()V
    .locals 3

    .line 859
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->setSceneList(Ljava/util/List;)V

    goto :goto_0

    .line 862
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V

    .line 864
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->selectedScene(IZ)Z

    .line 865
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->setPlaying(Z)V

    .line 867
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 868
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getManageLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 869
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 870
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyManageLayout()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 871
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getCreateSceneLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 873
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->hasNoScene()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 874
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getManageLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 875
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 876
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyManageLayout()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getCreateSceneLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 879
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getManageLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 880
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 881
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyManageLayout()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getCreateSceneLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final updatePlayerContainer()V
    .locals 1

    const/4 v0, 0x0

    .line 809
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer(Ljava/lang/String;)V

    return-void
.end method

.method private final updatePlayerContainer(Ljava/lang/String;)V
    .locals 5

    .line 813
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 816
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 817
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getErrorScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 819
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 820
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 821
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getErrorScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 823
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 824
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getWarningLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 825
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 826
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 827
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvManage()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 829
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->hasNoScene()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 830
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x32ffffff

    goto :goto_1

    :cond_3
    const-wide v0, 0xfffafafdL

    long-to-int v0, v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 831
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 832
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 834
    :cond_4
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const-wide v3, 0xffffffffL

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 835
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v0

    const-string v3, "selectedSceneInfo"

    .line 836
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 837
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 838
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 840
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isCanPlay()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 848
    :cond_6
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 849
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 850
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getWarningLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isError()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 851
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 852
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 841
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 842
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 843
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getWarningLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 845
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void

    .line 835
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final updatePreviewLayout()V
    .locals 4

    .line 724
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    .line 725
    instance-of v1, v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 726
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.narvii.scene.view.ScenePreviewLayout"

    if-eqz v0, :cond_2

    check-cast v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V

    .line 727
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_3
    instance-of v0, v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    if-eqz v0, :cond_7

    .line 730
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.narvii.scene.view.EditScenePreviewLayout"

    if-eqz v0, :cond_6

    check-cast v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Lcom/narvii/scene/view/EditScenePreviewLayout;->setSceneList(Ljava/util/List;)V

    .line 731
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/EditScenePreviewLayout;->seekScene(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_0
    return-void
.end method

.method private final updateSceneDraft()V
    .locals 2

    .line 907
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateData()V

    .line 908
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 909
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->toResume(Z)V

    const/4 v0, 0x0

    .line 910
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    return-void
.end method

.method private final updateTitle()V
    .locals 2

    .line 801
    iget v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    .line 802
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 804
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->sceneSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final updateView()V
    .locals 0

    .line 715
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->resetSelectedScene()V

    .line 716
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateTitle()V

    .line 717
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer()V

    .line 719
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateList()V

    .line 720
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected final autoSaveDraftInterval()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public beforePlayingPause()V
    .locals 0

    return-void
.end method

.method public beforePlayingStart()V
    .locals 1

    .line 1093
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideo()V

    :cond_0
    return-void
.end method

.method protected final checkPermission()V
    .locals 7

    .line 953
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-static {v0, v2}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->toResume(Z)V

    .line 956
    iput-boolean v4, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    goto :goto_0

    .line 958
    :cond_0
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 959
    invoke-virtual {v0, v6}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v4

    aput-object v5, v1, v6

    .line 960
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 961
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 962
    new-instance v1, Lcom/narvii/scene/BaseSceneListFragment$checkPermission$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/BaseSceneListFragment$checkPermission$1;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->rationaleDneyCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    :goto_0
    return-void
.end method

.method protected closeWhenDraftChanged()V
    .locals 3

    .line 376
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 377
    sget v1, Lcom/narvii/mediaeditor/R$string;->discard_changes:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 378
    new-instance v1, Lcom/narvii/scene/BaseSceneListFragment$closeWhenDraftChanged$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/BaseSceneListFragment$closeWhenDraftChanged$1;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 387
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method public editVideo(Lcom/narvii/scene/model/SceneInfo;I)V
    .locals 0

    .line 655
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    const/4 p2, 0x0

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/BaseSceneListFragment;->toSceneEditor(Lcom/narvii/scene/model/SceneInfo;Z)V

    return-void
.end method

.method protected getActionBarLayoutId()I
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/narvii/mediaeditor/R$layout;->actionbar_dark_layout:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$layout;->actionbar_layout_no_shadow:I

    :goto_0
    return v0
.end method

.method public final getBooleanParam(Ljava/lang/String;ZLandroid/os/Bundle;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1160
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    .line 1161
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getCustomTheme()I
    .locals 1

    .line 256
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method protected final getDraftManager()Lcom/narvii/post/DraftManager;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "draftManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getIntParam(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1169
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method protected getMajorTextColor()I
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const v0, -0xb5b5b6

    :goto_0
    return v0
.end method

.method protected final getMediaPickerFragment()Lcom/narvii/media/MediaPickerFragment;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mediaPickerFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoryEdit"

    return-object v0
.end method

.method protected final getRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;
    .locals 1

    .line 1157
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public final getStringParam(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1165
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    return-object p2
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEditMode()Z
    .locals 2

    .line 191
    iget v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifySceneDraftChanged(Z)V
    .locals 5

    .line 1008
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    const-string v1, "update"

    if-eqz v0, :cond_0

    .line 1009
    new-instance v0, Lcom/narvii/notification/Notification;

    new-instance v2, Lcom/narvii/scene/notification/SceneDraftWrapper;

    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    iget-object v4, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p1}, Lcom/narvii/scene/notification/SceneDraftWrapper;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    invoke-direct {v0, v1, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto :goto_0

    .line 1011
    :cond_0
    new-instance v0, Lcom/narvii/notification/Notification;

    new-instance v2, Lcom/narvii/scene/notification/SceneDraftWrapper;

    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-direct {v2, v3, p1}, Lcom/narvii/scene/notification/SceneDraftWrapper;-><init>(Lcom/narvii/scene/model/SceneDraft;Z)V

    invoke-direct {v0, v1, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1013
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 313
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 314
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVDialog;->onActiveChanged(Z)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 205
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    move-result p1

    if-nez p1, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget v1, Lcom/narvii/mediaeditor/R$color;->story_theme_action_bar_view:I

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonTint(I)V

    .line 208
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lcom/narvii/mediaeditor/R$color;->story_theme_text_color:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarTitleColor(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 207
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 395
    const-class v0, Lcom/narvii/scene/model/SceneInfo;

    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult  >>>  requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseSceneListFragment"

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    const-string v2, "sceneListHelper"

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    invoke-virtual {v1, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneQuizResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p3, :cond_5

    const-string p1, "sceneId"

    .line 400
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "question"

    .line 401
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/narvii/model/QuizQuestion;

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/QuizQuestion;

    .line 402
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 403
    iget-object p3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Scene;

    iget-object v1, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    check-cast v0, Lcom/narvii/model/Scene;

    if-eqz v0, :cond_22

    .line 404
    iput-object p2, v0, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 405
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    goto/16 :goto_6

    .line 403
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 408
    :cond_3
    iget-object p3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 409
    iput-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 410
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    goto/16 :goto_6

    .line 408
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 400
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 414
    :cond_6
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v1, :cond_27

    invoke-virtual {v1, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isScenePollResult(IILandroid/content/Intent;)Z

    move-result v1

    const/4 v4, 0x1

    const-string v5, "sceneInfo"

    if-eqz v1, :cond_f

    if-eqz p3, :cond_e

    .line 415
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 416
    iget-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 417
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 418
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 419
    iget-object p3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz p3, :cond_b

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Scene;

    iget-object v1, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_8
    move-object v0, v3

    :goto_1
    check-cast v0, Lcom/narvii/model/Scene;

    if-eqz v0, :cond_22

    .line 420
    iget-object p2, v0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    .line 421
    iget-boolean p3, p2, Lcom/narvii/model/PollAttach;->isModified:Z

    if-nez p3, :cond_9

    invoke-virtual {p2, p1}, Lcom/narvii/model/PollAttach;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_2

    .line 424
    :cond_9
    iget-object p2, v0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    iget-boolean v4, p2, Lcom/narvii/model/PollAttach;->isModified:Z

    .line 421
    :goto_2
    iput-boolean v4, p1, Lcom/narvii/model/PollAttach;->isModified:Z

    .line 427
    :cond_a
    iput-object p1, v0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 428
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    goto/16 :goto_6

    .line 419
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 431
    :cond_c
    iget-object p3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p3, :cond_d

    invoke-virtual {p3, p2}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 432
    iput-object p1, p2, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 433
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    goto/16 :goto_6

    .line 431
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 415
    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 437
    :cond_f
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v1, :cond_26

    invoke-virtual {v1, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneManageResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p3, :cond_13

    const-string p1, "scene_list"

    .line 438
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 439
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p2, :cond_12

    if-eqz p2, :cond_11

    iget v1, p2, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    const-string v2, "draft_serial_no"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p2, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 440
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p2, :cond_10

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneDraft;->setSceneInfos(Ljava/util/List;)V

    .line 441
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 442
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    goto/16 :goto_6

    .line 440
    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 439
    :cond_11
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 438
    :cond_13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 444
    :cond_14
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v1, :cond_25

    invoke-virtual {v1, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneEditorResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz p3, :cond_1a

    .line 445
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 446
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p2, :cond_19

    if-eqz p1, :cond_15

    iget-object p3, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    goto :goto_3

    :cond_15
    move-object p3, v3

    :goto_3
    invoke-virtual {p2, p3}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 447
    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneInfo;->copyScene(Lcom/narvii/scene/model/SceneInfo;)V

    :cond_16
    if-eqz p2, :cond_17

    .line 448
    iget-object p1, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    if-eqz p1, :cond_17

    goto :goto_4

    :cond_17
    const-string p1, ""

    :goto_4
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 449
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->correctBgMusicClip()V

    .line 450
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 451
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    goto/16 :goto_6

    .line 449
    :cond_18
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 446
    :cond_19
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 445
    :cond_1a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 453
    :cond_1b
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1, p2}, Lcom/narvii/scene/helper/SceneListHelper;->isScenePreviewResult(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 454
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    goto/16 :goto_6

    .line 456
    :cond_1c
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneBackgroundResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p3, :cond_1e

    const-string p1, "bgMusicClip"

    .line 457
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 458
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p2, :cond_1d

    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneDraft;->setBgMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 459
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 460
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    goto :goto_6

    .line 458
    :cond_1d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 457
    :cond_1e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 463
    :cond_1f
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, -0x1

    if-ne p2, v0, :cond_22

    const p2, 0xfd30

    if-ne p1, p2, :cond_22

    if-eqz p3, :cond_22

    const-string p1, "media"

    .line 1181
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/narvii/model/Media;

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    const-string v0, "bundle"

    .line 1182
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 1183
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object v5, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v5, :cond_21

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getSelectedSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v7

    iget p1, p2, Lcom/narvii/model/Media;->type:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_20

    const/4 v8, 0x1

    goto :goto_5

    :cond_20
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_5
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v5 .. v10}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Ljava/util/List;Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_21
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_22
    :goto_6
    return-void

    .line 456
    :cond_23
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 453
    :cond_24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 444
    :cond_25
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 437
    :cond_26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 414
    :cond_27
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 399
    :cond_28
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v3

    :goto_8
    goto :goto_7
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 356
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneList:Ljava/util/List;

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->closeWhenDraftChanged()V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 360
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 361
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->logEditClose()V

    goto :goto_0

    .line 364
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p1, v2, v1, v0}, Lcom/narvii/scene/model/SceneDraft;->isSame(Ljava/lang/Object;ZZ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->closeWhenDraftChanged()V

    goto :goto_0

    .line 364
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 367
    :cond_3
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 368
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 369
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->logEditClose()V

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 507
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->tv_manage_scene:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 508
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 509
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p1, v0}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneManager(Lcom/narvii/scene/model/SceneDraft;)V

    goto/16 :goto_6

    :cond_2
    const-string p1, "sceneListHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_3
    :goto_1
    sget v1, Lcom/narvii/mediaeditor/R$id;->iv_create_scene:I

    const/4 v2, 0x1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 513
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_5

    .line 514
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->createEmptyScene()Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_5
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 517
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->sceneSize()I

    move-result p1

    if-ne p1, v2, :cond_12

    .line 518
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->showTip()V

    goto/16 :goto_6

    .line 522
    :cond_6
    :goto_2
    sget v1, Lcom/narvii/mediaeditor/R$id;->tv_advanced_story:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_b

    .line 523
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eq p1, v2, :cond_12

    .line 524
    :cond_8
    new-instance p1, Lcom/narvii/scene/BaseSceneListFragment$onClick$2;

    invoke-direct {p1, p0, p0}, Lcom/narvii/scene/BaseSceneListFragment$onClick$2;-><init>(Lcom/narvii/scene/BaseSceneListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    .line 529
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 530
    :cond_9
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    if-eqz p1, :cond_a

    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$onClick$3;

    invoke-direct {v0, p0}, Lcom/narvii/scene/BaseSceneListFragment$onClick$3;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 531
    :cond_a
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->show()V

    goto :goto_6

    .line 535
    :cond_b
    :goto_3
    sget v1, Lcom/narvii/mediaeditor/R$id;->fl_warning:I

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_d

    .line 536
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 537
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getSelectedSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/BaseSceneListFragment;->toSceneEditor(Lcom/narvii/scene/model/SceneInfo;Z)V

    goto :goto_6

    .line 540
    :cond_d
    :goto_4
    sget v1, Lcom/narvii/mediaeditor/R$id;->empty_placeholder_view:I

    if-nez p1, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_10

    .line 541
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v0

    :cond_f
    if-eqz v0, :cond_12

    .line 543
    iget p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->pickVideo(Lcom/narvii/scene/model/SceneInfo;I)V

    goto :goto_6

    .line 547
    :cond_10
    :goto_5
    sget v0, Lcom/narvii/mediaeditor/R$id;->error_placeholder_view:I

    if-nez p1, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_12

    .line 548
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateData()V

    .line 549
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideo()V

    .line 550
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->play()V

    :cond_12
    :goto_6
    return-void
.end method

.method public onClick(Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;I)V
    .locals 1

    .line 570
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 571
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_4

    .line 572
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_3

    .line 573
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_1

    iget-object p2, v0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p1, v0, p2}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneBackgroundMusic(Lcom/narvii/scene/model/SceneDraft;Lcom/narvii/video/model/AVClipInfoPack;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    :cond_2
    const-string p1, "sceneListHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 575
    :cond_3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->pickBackgroundMusic()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 149
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-string v1, "isEdit"

    .line 150
    invoke-virtual {p0, v1, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getBooleanParam(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->mode:I

    const-string v1, "selectedIndex"

    .line 151
    invoke-virtual {p0, v1, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getIntParam(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 152
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    const-string v1, "sceneList"

    .line 153
    invoke-virtual {p0, v1, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getStringParam(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/narvii/model/Scene;

    invoke-static {v1, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    const-string v1, "draftId"

    .line 155
    invoke-virtual {p0, v1, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getStringParam(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    const-string v1, "alreadyClearUselessFile"

    .line 156
    invoke-virtual {p0, v1, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getBooleanParam(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->alreadyClearUselessFile:Z

    .line 157
    iget p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    if-lez p1, :cond_5

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 158
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Scene;

    iget-object p1, p1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 157
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 160
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Scene;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneList:Ljava/util/List;

    .line 161
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneList:Ljava/util/List;

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneList:Ljava/util/List;

    goto :goto_7

    :cond_6
    const-string v0, "sceneDraft"

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getStringParam(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/scene/model/SceneDraft;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_7

    goto :goto_4

    .line 164
    :cond_7
    new-instance p1, Lcom/narvii/scene/model/SceneDraft;

    invoke-direct {p1}, Lcom/narvii/scene/model/SceneDraft;-><init>()V

    :goto_4
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 165
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    .line 166
    iget v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    if-lez v0, :cond_b

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_b

    .line 167
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    iget v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move-object p1, v2

    :goto_5
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    goto :goto_6

    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 166
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 169
    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 170
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    :goto_7
    const-string p1, "draft"

    .line 173
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService<DraftManager>(\"draft\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/post/DraftManager;

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 174
    new-instance p1, Lcom/narvii/scene/helper/SceneListHelper;

    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneListHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 175
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "storyPost"

    .line 176
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/StoryPostService;

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->storyPostService:Lcom/narvii/scene/StoryPostService;

    .line 180
    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string v0, "playListMediaPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 181
    instance-of v1, p1, Lcom/narvii/media/MediaPickerFragment;

    if-eqz v1, :cond_d

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    goto :goto_8

    .line 182
    :cond_d
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 183
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 181
    :goto_8
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 187
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    const-string v0, "mediaPickerFragment"

    if-eqz p1, :cond_f

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 188
    new-instance p1, Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v2, :cond_e

    invoke-direct {p1, p0, v1, v2}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/media/MediaPickerFragment;)V

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    return-void

    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 180
    :cond_11
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 170
    :cond_12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 169
    :cond_13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 165
    :cond_14
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    .line 213
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    if-eqz p1, :cond_1

    .line 215
    sget p2, Lcom/narvii/lib/R$string;->compose_preview:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 216
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v0, Lcom/narvii/lib/R$string;->ion_eye:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x3f59999a    # 0.85f

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v4, Lcom/narvii/mediaeditor/R$color;->story_theme_text_color:I

    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x7f

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 217
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    sget p3, Lcom/narvii/mediaeditor/R$layout;->post_scene_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDeletePoll(Ljava/lang/String;)V
    .locals 2

    .line 603
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/narvii/model/Scene;->getScene(Ljava/lang/String;Ljava/util/List;)Lcom/narvii/model/Scene;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 605
    iput-object v1, p1, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    goto :goto_0

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 609
    iput-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 612
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateList()V

    return-void
.end method

.method public onDeleteQuiz(Ljava/lang/String;)V
    .locals 2

    .line 616
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/narvii/model/Scene;->getScene(Ljava/lang/String;Ljava/util/List;)Lcom/narvii/model/Scene;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 618
    iput-object v1, p1, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 622
    iput-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 625
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateList()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 349
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->release()V

    .line 350
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 351
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    return-void

    :cond_0
    const-string v0, "mediaPickerFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onEditPoll(Lcom/narvii/scene/SceneWrapper;)V
    .locals 3

    .line 592
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    if-eqz p1, :cond_3

    .line 594
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "sceneListHelper"

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditPoll(Lcom/narvii/model/Scene;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditPoll(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public onEditQuiz(Lcom/narvii/scene/SceneWrapper;)V
    .locals 3

    .line 581
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    if-eqz p1, :cond_3

    .line 583
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "sceneListHelper"

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditQuiz(Lcom/narvii/model/Scene;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditQuiz(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1136
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1137
    :goto_0
    instance-of v2, v1, Lcom/narvii/scene/notification/CloseSceneTemplateObject;

    if-eqz v2, :cond_1

    .line 1138
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->dismissTemplate()V

    goto :goto_3

    .line 1140
    :cond_1
    instance-of v1, v1, Lcom/narvii/scene/notification/SceneInfoObject;

    if-eqz v1, :cond_8

    .line 1141
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_7

    check-cast p1, Lcom/narvii/scene/notification/SceneInfoObject;

    iget-object p1, p1, Lcom/narvii/scene/notification/SceneInfoObject;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 1142
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1143
    invoke-virtual {v1, p1}, Lcom/narvii/scene/model/SceneInfo;->copyScene(Lcom/narvii/scene/model/SceneInfo;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 1144
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, ""

    :goto_2
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 1145
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->correctBgMusicClip()V

    .line 1146
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 1147
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    goto :goto_3

    .line 1145
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 1142
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 1141
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.scene.notification.SceneInfoObject"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 237
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/narvii/mediaeditor/R$string;->compose_preview:I

    if-ne v0, v1, :cond_2

    .line 238
    sget-object v0, Lcom/narvii/logging/ActSemantic;->preview:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "PreviewIcon"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 239
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 240
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isToPreview:Z

    .line 242
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->storyPostService:Lcom/narvii/scene/StoryPostService;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/narvii/scene/StoryPostService;->launchStoryPreview(Ljava/util/List;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchScenePreview(Lcom/narvii/scene/model/SceneDraft;)V

    goto :goto_0

    :cond_1
    const-string p1, "sceneListHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 248
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 337
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 338
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 339
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->toPause()V

    .line 340
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->alreadyClearUselessFile:Z

    const-string v0, "editorPackFactory"

    .line 342
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/narvii/video/services/IEditorPackFactory;

    invoke-interface {v0}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoRecycler()Lcom/narvii/video/interfaces/IEditorRecycler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorRecycler;->clearCacheResources()V

    .line 344
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraft:Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 342
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.video.services.IEditorPackFactory"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public onPermissionDenied(IZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "deniedPermissions"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    const/4 v0, 0x0

    .line 898
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->permissionDenied:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 900
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateSceneDraft()V

    :cond_0
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    .line 485
    iget-object v1, v0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/narvii/scene/BaseSceneListFragment;->getSelectedSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    .line 486
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    if-eqz v6, :cond_c

    const-string v1, "type"

    .line 488
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 489
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    .line 490
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    const-string v7, "video"

    .line 494
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "sceneListHelper"

    const/4 v9, 0x0

    if-eqz v7, :cond_a

    .line 1188
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/narvii/model/Media;

    invoke-virtual {v7}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v9

    :goto_0
    check-cast v5, Lcom/narvii/model/Media;

    if-eqz v5, :cond_3

    .line 1190
    new-instance v1, Lcom/narvii/scene/helper/SceneSpHelper;

    invoke-direct {v1, v0}, Lcom/narvii/scene/helper/SceneSpHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v7, v5, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    const-string v10, "it.fileName"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v7}, Lcom/narvii/scene/helper/SceneSpHelper;->saveRecentVideo(Lcom/narvii/model/Media;Ljava/lang/String;)V

    .line 1193
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    if-eqz v1, :cond_c

    .line 1194
    iget-object v5, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1196
    iget v5, v1, Lcom/narvii/model/Media;->type:I

    const/16 v7, 0x67

    const-string v10, "scene_intermediate_file"

    const-string v11, "/"

    if-ne v5, v7, :cond_4

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v6, v2}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/16 v7, 0x7b

    const/4 v12, 0x1

    const/16 v13, 0x64

    if-ne v5, v7, :cond_7

    .line 1198
    iget-wide v14, v1, Lcom/narvii/model/Media;->duration:J

    const v7, 0xee47

    move/from16 v16, v5

    int-to-long v4, v7

    cmp-long v7, v14, v4

    if-lez v7, :cond_5

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 496
    :cond_5
    iget-object v1, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v1, :cond_6

    move/from16 v4, v16

    if-ne v4, v13, :cond_8

    goto :goto_2

    :cond_6
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_7
    move v4, v5

    iget-object v1, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v1, :cond_9

    if-ne v4, v13, :cond_8

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Ljava/util/List;Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_9
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_a
    const-string v2, "audio"

    .line 499
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 500
    iget-object v1, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-eqz v1, :cond_b

    iget-object v2, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v1, v2, v5, v6}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneBackgroundMusic(Lcom/narvii/scene/model/SceneDraft;Lcom/narvii/model/Media;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_b
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_c
    :goto_4
    return-void
.end method

.method public onPlayingError(Ljava/lang/Exception;)V
    .locals 4

    .line 1050
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1051
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1052
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    .line 1053
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer(Ljava/lang/String;)V

    .line 1054
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->setSceneCanPlaying(ZLjava/lang/String;)V

    goto :goto_0

    .line 1056
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1057
    iget-boolean p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->permissionDenied:Z

    if-eqz p1, :cond_3

    .line 1058
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->showInvalidDialog()V

    .line 1062
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayingError >>>  previewLayout visibility : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseSceneListFragment"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayingPause()V
    .locals 2

    .line 1032
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->setPlaying(Z)V

    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 1

    .line 1123
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvTimeCurrent()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/narvii/scene/helper/SceneUtils;->durationMsToUIText(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvTimeTotal()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p3, p4}, Lcom/narvii/scene/helper/SceneUtils;->durationMsToUIText(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPlayingStart()V
    .locals 4

    .line 1037
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1038
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1039
    iput-boolean v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    .line 1040
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 1042
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->setPlaying(Z)V

    .line 1044
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    iget v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    invoke-virtual {v0, v3, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->selectedScene(IZ)Z

    .line 1045
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/narvii/scene/view/SceneRecyclerView;->setSceneCanPlaying(ZLjava/lang/String;)V

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayingStart >>>  previewLayout visibility : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSceneListFragment"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayingStop()V
    .locals 2

    .line 1026
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    iget v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/narvii/scene/BaseSceneListFragment;->onSelected(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 222
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    if-eqz v1, :cond_8

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_1
    iget-object v2, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    move-result v2

    .line 225
    :goto_0
    sget v4, Lcom/narvii/mediaeditor/R$string;->compose_preview:I

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v4, "previewItem"

    .line 226
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-nez v2, :cond_4

    .line 228
    new-instance v2, Lcom/narvii/util/ActionBarIcon;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v4, Lcom/narvii/lib/R$string;->ion_eye:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x3f59999a    # 0.85f

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/narvii/mediaeditor/R$color;->white:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/narvii/mediaeditor/R$color;->story_theme_action_bar_view:I

    :goto_1
    invoke-static {v4, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    const/16 v10, 0xff

    const/4 v11, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    goto :goto_3

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 230
    :cond_4
    new-instance v2, Lcom/narvii/util/ActionBarIcon;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v4, Lcom/narvii/lib/R$string;->ion_eye:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x3f59999a    # 0.85f

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lcom/narvii/mediaeditor/R$color;->white:I

    goto :goto_2

    :cond_5
    sget v3, Lcom/narvii/mediaeditor/R$color;->story_theme_action_bar_view:I

    :goto_2
    invoke-static {v4, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v16

    const/16 v17, 0x7f

    const/16 v18, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 227
    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_4

    .line 230
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 224
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_8
    :goto_4
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1019
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1020
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    .line 1021
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 318
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 319
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->toResume(Z)V

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 322
    iget-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isToPreview:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->seekScene(Ljava/lang/String;)V

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->startAutoSaveTask()V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->originFileMissing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->alreadyClearUselessFile:Z

    if-nez v0, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->showOriginFileMissingDialog()V

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->checkPermission()V

    .line 331
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->startAutoSaveTask()V

    :goto_0
    return-void

    .line 327
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    iget v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    const-string v1, "selectedIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    const-string v1, "draftId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sceneList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sceneDraft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSceneChanged(Ljava/lang/String;I)V
    .locals 3

    const-string p2, "sceneId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 1074
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_7

    .line 1075
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Scene;

    .line 1076
    iget-object v2, v2, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1077
    invoke-direct {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->sceneChanged(ILjava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 1074
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 1082
    :cond_4
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p2, :cond_8

    iget-object p2, p2, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string v2, "sceneDraft!!.sceneInfos"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_7

    .line 1083
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 1084
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1085
    invoke-direct {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->sceneChanged(ILjava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1083
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_7
    return-void

    .line 1082
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public onSceneEnd(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "sceneId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer(Ljava/lang/String;)V

    return-void
.end method

.method public onSelected(Ljava/lang/String;I)V
    .locals 0

    .line 638
    iput p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 639
    :goto_0
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 641
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateTitle()V

    .line 642
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer()V

    .line 644
    iget-boolean p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    if-eqz p1, :cond_1

    .line 645
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideo()V

    .line 646
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    goto :goto_1

    .line 648
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 649
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->seekScene(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onSizeChanged(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/SceneWrapper;",
            ">;I)V"
        }
    .end annotation

    .line 629
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result p2

    if-nez p2, :cond_1

    .line 630
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/narvii/scene/SceneWrapper;->getSceneInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneDraft;->setSceneInfos(Ljava/util/List;)V

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateTitle()V

    .line 632
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateList()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 271
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvTimeCurrent()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMajorTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvTimeTotal()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMajorTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvTimeTotal()Landroid/widget/TextView;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 274
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvManage()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMajorTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyManageLayout()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMajorTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getWarningView()Lcom/narvii/widget/TintButton;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->warningViewTintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 277
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvAdvancedStory()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->showAdvancedEditor()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getRoundCornerCover()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->useRoundCornerCover()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->useRoundCornerCover()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int v0, p1

    .line 281
    :goto_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getRadiusLayout()Lcom/narvii/widget/RadiusLayout;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    .line 282
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getRadiusLayout()Lcom/narvii/widget/RadiusLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 285
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvManage()Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvAdvancedStory()Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getCreateSceneView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getWarningLayout()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getErrorScenePlaceholder()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 295
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/SceneRecyclerView;->setOnListSizeChangedListener(Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;)V

    .line 296
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/SceneRecyclerView;->setOnSelectedListener(Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;)V

    .line 297
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/SceneRecyclerView;->setOnEditVideoListener(Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;)V

    .line 298
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/SceneRecyclerView;->setOnDialogItemClickListener(Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;)V

    .line 299
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object p1

    new-instance p2, Lcom/narvii/scene/BaseSceneListFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/scene/BaseSceneListFragment$onViewCreated$1;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/scene/view/SceneRecyclerView;->setOnAttachPreClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    .line 302
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setBeforePlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;)V

    .line 303
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 305
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateData()V

    .line 306
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 307
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 308
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideo()V

    :cond_3
    return-void

    .line 280
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public pickVideo(Lcom/narvii/scene/model/SceneInfo;I)V
    .locals 2

    .line 661
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 666
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1, v1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->showPickerDialog(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 668
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    if-eqz p1, :cond_4

    if-eqz p1, :cond_3

    .line 669
    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public previewPause()V
    .locals 1

    .line 1128
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    return-void
.end method

.method public previewStart()V
    .locals 1

    .line 1132
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->play()V

    return-void
.end method

.method protected final saveDraft(Z)V
    .locals 4

    .line 993
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneList:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Scene;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneList:Ljava/util/List;

    goto :goto_0

    .line 999
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v3}, Lcom/narvii/scene/model/SceneDraft;->isSame(Ljava/lang/Object;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 1002
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 1004
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->notifySceneDraftChanged(Z)V

    return-void

    .line 1002
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method protected final setDraftManager(Lcom/narvii/post/DraftManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    return-void
.end method

.method protected final setMediaPickerFragment(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    return-void
.end method

.method protected showAdvancedEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final showOriginFileMissingDialog()V
    .locals 1

    .line 925
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getFileMisssingDialog()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getFileMisssingDialog()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return-void
.end method

.method protected useRoundCornerCover()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected warningViewTintColor()I
    .locals 1

    const v0, -0x1dcf52

    return v0
.end method
