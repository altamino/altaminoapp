.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;
.super Lcom/narvii/app/NVFragment;
.source "SceneTemplateGeneratorFragment.kt"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;
.implements Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ItemClickListener;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$GridItemDecoration;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateGeneratorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,914:1\n716#2:915\n738#2,2:916\n1587#2,2:918\n1587#2,2:920\n1587#2,2:922\n1587#2,2:924\n673#2:926\n746#2,2:927\n1313#2:929\n1382#2,3:930\n*E\n*S KotlinDebug\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment\n*L\n291#1:915\n291#1,2:916\n291#1,2:918\n514#1,2:920\n563#1,2:922\n591#1,2:924\n635#1:926\n635#1,2:927\n635#1:929\n635#1,3:930\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final CROP_IMAGE:I = 0xfd41

.field public static final Companion:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public adapter:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

.field private addEntry:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/narvii/model/Media;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private blog:Lcom/narvii/model/Blog;

.field private curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

.field private curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

.field private final downLoadImageHelper$delegate:Lkotlin/Lazy;

.field private draftId:Ljava/lang/String;

.field private final draftManager$delegate:Lkotlin/Lazy;

.field private final entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final loadingBar$delegate:Lkotlin/Lazy;

.field private maxSelectedEntryCount:I

.field public mediaPicker:Lcom/narvii/media/MediaPickerFragment;

.field private minSelectedEntryCount:I

.field private final photoManager$delegate:Lkotlin/Lazy;

.field private final progressDialog$delegate:Lkotlin/Lazy;

.field public recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private sceneInfo:Lcom/narvii/scene/model/SceneInfo;

.field private final sceneListHelper$delegate:Lkotlin/Lazy;

.field private final sceneTemplateHelper$delegate:Lkotlin/Lazy;

.field private final selectImageDialog$delegate:Lkotlin/Lazy;

.field public sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

.field public submitButton:Landroid/widget/Button;

.field private templateConfig:Lcom/narvii/scene/model/TemplateConfig;

.field private temporaryDraftId:Ljava/lang/String;

.field private webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "draftManager"

    const-string v4, "getDraftManager()Lcom/narvii/post/DraftManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "photoManager"

    const-string v4, "getPhotoManager()Lcom/narvii/photos/PhotoManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "selectImageDialog"

    const-string v4, "getSelectImageDialog()Lcom/narvii/widget/ACMAlertDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sceneTemplateHelper"

    const-string v4, "getSceneTemplateHelper()Lcom/narvii/scene/template/SceneTemplateHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "downLoadImageHelper"

    const-string v4, "getDownLoadImageHelper()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "progressDialog"

    const-string v4, "getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "loadingBar"

    const-string v4, "getLoadingBar()Lcom/narvii/util/dialog/ProgressDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sceneListHelper"

    const-string v4, "getSceneListHelper()Lcom/narvii/scene/helper/SceneListHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->Companion:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->entryList:Ljava/util/List;

    .line 98
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->temporaryDraftId:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$draftManager$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$draftManager$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftManager$delegate:Lkotlin/Lazy;

    .line 107
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$photoManager$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$photoManager$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->photoManager$delegate:Lkotlin/Lazy;

    .line 111
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->selectImageDialog$delegate:Lkotlin/Lazy;

    .line 118
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$sceneTemplateHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$sceneTemplateHelper$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneTemplateHelper$delegate:Lkotlin/Lazy;

    .line 121
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->downLoadImageHelper$delegate:Lkotlin/Lazy;

    .line 165
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->progressDialog$delegate:Lkotlin/Lazy;

    .line 175
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$loadingBar$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$loadingBar$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->loadingBar$delegate:Lkotlin/Lazy;

    .line 188
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Lkotlin/jvm/functions/Function3;

    .line 251
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$sceneListHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$sceneListHelper$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneListHelper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDraftFile(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)Ljava/io/File;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDraftFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isSupportFormat(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/model/Media;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->isSupportFormat(Lcom/narvii/model/Media;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$pickResource(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->pickResource()V

    return-void
.end method

.method public static final synthetic access$selectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->selectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateItemView(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->updateItemView()V

    return-void
.end method

.method public static final synthetic access$updateSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->updateSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    return-void
.end method

.method private final checkSubmit()Z
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    if-eqz v3, :cond_2

    iget v2, v3, Lcom/narvii/scene/model/TemplateConfig;->minInputCount:I

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_3
    const-string v0, "sortLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final getAddMoreEntry()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
    .locals 9

    .line 410
    new-instance v8, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method private final getCacheDir()Ljava/io/File;
    .locals 3

    .line 536
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "storyTemplate"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0

    .line 536
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final getDownLoadImageHelper()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->downLoadImageHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    return-object v0
.end method

.method private final getDraftFile()Ljava/io/File;
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/narvii/scene/template/SceneTemplateHelperKt;->getTemporaryDraftRootDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->temporaryDraftId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDraftManager()Lcom/narvii/post/DraftManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 159
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const-string v1, "file"

    .line 162
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getEntryMediaList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->entryList:Ljava/util/List;

    .line 926
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 927
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 635
    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->hasMedia()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 929
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 930
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 931
    check-cast v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 635
    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getSceneListHelper()Lcom/narvii/scene/helper/SceneListHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneListHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/helper/SceneListHelper;

    return-object v0
.end method

.method private final getSceneTemplateHelper()Lcom/narvii/scene/template/SceneTemplateHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneTemplateHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/SceneTemplateHelper;

    return-object v0
.end method

.method private final getSelectImageDialog()Lcom/narvii/widget/ACMAlertDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->selectImageDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ACMAlertDialog;

    return-object v0
.end method

.method private final isSupportFormat(Lcom/narvii/model/Media;)Z
    .locals 2

    .line 235
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/narvii/scene/model/TemplateConfig;->videoEnabled:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 238
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->isSupportFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    .line 242
    :cond_3
    iget-object p1, p1, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->isSupportFormat(Ljava/lang/String;)Z

    move-result p1

    :goto_3
    return p1
.end method

.method private final isSupportFormat(Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_2

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ".jpg"

    .line 248
    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".jpeg"

    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".gif"

    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".png"

    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 247
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final pickResource()V
    .locals 5

    .line 544
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const-string v2, "photo"

    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    const/16 v2, 0x14

    .line 548
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    const/16 v2, 0x18

    .line 549
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    const/4 v2, 0x0

    .line 550
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    const/4 v2, 0x1

    .line 551
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    .line 552
    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    const-string v3, "mediaPicker"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iput-object v4, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 553
    iput-object v4, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {v2, v4, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    return-void

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 553
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 552
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private final selectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)Z
    .locals 21

    move-object/from16 v0, p0

    .line 202
    iget v1, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->maxSelectedEntryCount:I

    iget-object v2, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    const/4 v3, 0x0

    const-string v4, "sortLayout"

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    if-gt v1, v2, :cond_0

    return v5

    .line 205
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getCanSelected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input_image:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->showShortToast(I)V

    return v5

    .line 209
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getSelectCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    move-object/from16 v13, p1

    invoke-virtual {v13, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setSelectCount(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f

    const/4 v12, 0x0

    move-object/from16 v5, p1

    .line 211
    invoke-static/range {v5 .. v12}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->copy$default(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;Ljava/lang/String;Lcom/narvii/model/Media;ZIZILjava/lang/Object;)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    move-result-object v1

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getSelectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setId(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isHttpEntry()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v5, :cond_4

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x2

    .line 218
    :cond_4
    :goto_1
    new-instance v5, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getId()Ljava/lang/String;

    move-result-object v9

    .line 219
    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v8

    invoke-static {v8}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-class v10, Lcom/narvii/model/Media;

    invoke-static {v8, v10}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/narvii/model/Media;

    const-wide/16 v12, 0x0

    .line 222
    iget-object v8, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    if-eqz v8, :cond_5

    iget-wide v14, v8, Lcom/narvii/scene/model/TemplateConfig;->maxInputLengthMs:J

    goto :goto_2

    :cond_5
    const-wide/16 v14, 0x3a98

    :goto_2
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xe0

    const/16 v20, 0x0

    move-object v8, v5

    move v11, v7

    .line 218
    invoke-direct/range {v8 .. v20}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 223
    iget-object v8, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    if-eqz v8, :cond_7

    invoke-virtual {v8, v5}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->addData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    if-ne v7, v6, :cond_6

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDownLoadImageHelper()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    :cond_6
    return v2

    .line 223
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 202
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final sendNotification(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 2

    .line 677
    new-instance v0, Lcom/narvii/scene/notification/CloseSceneTemplateObject;

    invoke-direct {v0}, Lcom/narvii/scene/notification/CloseSceneTemplateObject;-><init>()V

    .line 678
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/scene/notification/CloseSceneTemplateObject;->id:Ljava/lang/String;

    .line 679
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v1, "new"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    const/4 v0, 0x0

    .line 680
    invoke-static {p0, p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    return-void
.end method

.method private final unSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 3

    .line 446
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDownLoadImageHelper()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->cancelRequest(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 447
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    invoke-virtual {v2, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->equalsSelectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    if-eqz v1, :cond_2

    .line 449
    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getSelectCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setSelectCount(I)V

    .line 450
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->updateItemView()V

    :cond_2
    return-void
.end method

.method private final updateItemView()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->adapter:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 532
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void

    :cond_0
    const-string v0, "adapter"

    .line 531
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final updateSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    return-void

    :cond_0
    const-string p1, "sortLayout"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 262
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x1d1e1f

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public final getAdapter()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->adapter:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAddEntry()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/narvii/model/Media;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getBlog()Lcom/narvii/model/Blog;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public final getCurCropEntry()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    return-object v0
.end method

.method public final getCurTrimEntry()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 438
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public final getDraftId()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDraftManager()Lcom/narvii/post/DraftManager;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/DraftManager;

    return-object v0
.end method

.method public final getEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->entryList:Ljava/util/List;

    return-object v0
.end method

.method public final getLoadingBar()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->loadingBar$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    return-object v0
.end method

.method public final getMaxSelectedEntryCount()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->maxSelectedEntryCount:I

    return v0
.end method

.method public final getMediaPicker()Lcom/narvii/media/MediaPickerFragment;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mediaPicker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getMinSelectedEntryCount()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->minSelectedEntryCount:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoTemplateMediaPicker"

    return-object v0
.end method

.method public final getPhotoManager()Lcom/narvii/photos/PhotoManager;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->photoManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method public final getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->progressDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/ProgressRingDialog;

    return-object v0
.end method

.method public final getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSceneInfo()Lcom/narvii/scene/model/SceneInfo;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-object v0
.end method

.method public final getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sortLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getStringParam(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 623
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

.method public final getSubmitButton()Landroid/widget/Button;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "submitButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTemplateConfig()Lcom/narvii/scene/model/TemplateConfig;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    return-object v0
.end method

.method public final getTemporaryDraftId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->temporaryDraftId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebMediaExtractor()Lcom/narvii/util/WebMediaExtractor;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 597
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    if-eqz p3, :cond_6

    const p2, 0xfd32

    const-string v0, "sortLayout"

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    .line 600
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    const-string p2, "trimStartTime"

    .line 601
    invoke-virtual {p3, p2, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setVideoTrimStart(J)V

    const-string p2, "trimEndTime"

    .line 602
    invoke-virtual {p3, p2, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setVideoTrimEnd(J)V

    .line 603
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 605
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    goto :goto_2

    :cond_2
    const p2, 0xfd41

    if-ne p1, p2, :cond_6

    .line 607
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    if-eqz p1, :cond_5

    const-string p2, "themeImage"

    .line 608
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v2, Lcom/narvii/theme/ThemeImage;

    invoke-static {p2, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/theme/ThemeImage;

    const-string v2, "imageId"

    .line 609
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "previewMedia"

    .line 610
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-class v3, Lcom/narvii/model/Media;

    invoke-static {p3, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Media;

    .line 611
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 612
    invoke-virtual {p1, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setCrop(Lcom/narvii/theme/ThemeImage;)V

    .line 613
    invoke-virtual {p1, p3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setPreviewMedia(Lcom/narvii/model/Media;)V

    .line 615
    :cond_3
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    if-eqz p2, :cond_4

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Z)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 617
    :cond_5
    :goto_1
    iput-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    :cond_6
    :goto_2
    return-void
.end method

.method public onBackgroundItemClick()V
    .locals 1

    .line 486
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSelectImageDialog()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSelectImageDialog()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 638
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSceneTemplateHelper()Lcom/narvii/scene/template/SceneTemplateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->cancel()V

    return-void
.end method

.method public onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const-string p2, "helper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->dismiss()V

    .line 691
    :cond_1
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 692
    invoke-virtual {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 693
    sget p2, Lcom/narvii/mediaeditor/R$string;->got_it:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 694
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public onCompileFinished(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Ljava/lang/String;Lcom/narvii/video/model/StreamInfo;)V
    .locals 8

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "template"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "filePath"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "streamInfo"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->dismiss()V

    .line 656
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_5

    .line 657
    new-instance p1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {p1}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 658
    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 659
    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 660
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    const/4 p3, 0x0

    .line 661
    iput p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 662
    iget p4, p4, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    iput p4, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    const/16 p4, 0x10

    .line 663
    iput p4, p1, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    .line 665
    iget-object p4, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/narvii/video/model/AVClipInfoPack;

    aput-object p1, v1, p3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p4, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 666
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_3

    iput-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    .line 667
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSceneListHelper()Lcom/narvii/scene/helper/SceneListHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDraftFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;ILjava/lang/String;)V

    .line 668
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sendNotification(Lcom/narvii/scene/model/SceneInfo;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 666
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 665
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 670
    :cond_5
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, p3, p2, p4}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragmentKt;->blogConvertToScene(Lcom/narvii/model/Blog;Landroid/content/Context;Ljava/lang/String;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v3

    .line 671
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSceneListHelper()Lcom/narvii/scene/helper/SceneListHelper;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDraftFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;ILjava/lang/String;)V

    .line 673
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V
    .locals 0

    const-string p3, "helper"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/scene/view/ProgressRingDialog;->updateProgress(I)V

    return-void
.end method

.method public onCompileStart(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 265
    const-class v0, Lcom/narvii/scene/model/SceneInfo;

    const-class v1, Lcom/narvii/scene/model/TemplateConfig;

    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 266
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$color;->white:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->setActionBarTitleColor(I)V

    .line 267
    sget v2, Lcom/narvii/mediaeditor/R$string;->photos_or_videos:I

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const/4 v2, 0x1

    .line 268
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string v3, "draftId"

    const-string v4, "sceneInfo"

    const-string v5, "templateConfig"

    const-string v6, "blogPost"

    if-nez p1, :cond_0

    .line 271
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v6, Lcom/narvii/model/Blog;

    invoke-static {p1, v6}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    .line 272
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/TemplateConfig;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 273
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 274
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/narvii/model/Blog;

    invoke-static {v6, v7}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Blog;

    iput-object v6, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    .line 277
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/TemplateConfig;

    iput-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 278
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 279
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    .line 282
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    if-nez p1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 287
    iget v1, p1, Lcom/narvii/scene/model/TemplateConfig;->minInputCount:I

    iput v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->minSelectedEntryCount:I

    if-eqz p1, :cond_c

    .line 288
    iget p1, p1, Lcom/narvii/scene/model/TemplateConfig;->maxInputCount:I

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->maxSelectedEntryCount:I

    .line 290
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->entryList:Ljava/util/List;

    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAddMoreEntry()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 915
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 916
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/narvii/model/Media;

    .line 291
    iget v5, v5, Lcom/narvii/model/Media;->type:I

    const/16 v6, 0x67

    if-ne v5, v6, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-nez v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 918
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    .line 291
    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Lkotlin/jvm/functions/Function3;

    const-string v5, "it"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v1, v5, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 292
    :cond_5
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 293
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 294
    new-instance v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$1;

    invoke-direct {v2, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$1;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 297
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 299
    new-instance v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    invoke-direct {v2, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 304
    new-instance v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2, v1, v4, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 339
    invoke-virtual {v3, p1}, Lcom/narvii/util/WebMediaExtractor;->extract(Ljava/lang/String;)V

    .line 338
    iput-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;

    .line 341
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x4e20

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v1, "playListMediaPicker"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 345
    instance-of v2, p1, Lcom/narvii/media/MediaPickerFragment;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    goto :goto_3

    .line 346
    :cond_7
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 347
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 345
    :goto_3
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 350
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 352
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_8

    .line 353
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$4;

    invoke-direct {p1, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$4;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_8
    return-void

    :cond_9
    const-string p1, "mediaPicker"

    .line 350
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 344
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 288
    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 287
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 358
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 360
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$layout;->actionbar_btn:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 361
    sget v0, Lcom/narvii/mediaeditor/R$id;->actionbar_right_btn_btn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "v.findViewById(R.id.actionbar_right_btn_btn)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    .line 363
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    const-string v2, "submitButton"

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 364
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    const/high16 v5, 0x41200000    # 10.0f

    if-lt v3, v4, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 369
    :goto_0
    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    if-eqz v3, :cond_7

    sget v4, Lcom/narvii/mediaeditor/R$string;->next:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 370
    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    if-eqz v3, :cond_6

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 371
    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    if-eqz v3, :cond_5

    const-wide v4, 0xff00d2b4L

    long-to-int v5, v4

    invoke-static {v5}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    new-instance v3, Lcom/narvii/util/OnPreventRepeatedClickListener;

    new-instance v4, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreateOptionsMenu$1;

    invoke-direct {v4, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreateOptionsMenu$1;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-direct {v3, v4}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreateOptionsMenu$2;

    invoke-direct {v1, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreateOptionsMenu$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    .line 378
    sget v0, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 379
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    .line 380
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    return-void

    .line 376
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_template_generator:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 405
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/WebMediaExtractor;->abort()V

    .line 406
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void

    :cond_1
    const-string v0, "mediaPicker"

    .line 404
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onItemClick(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 13

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->isVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 456
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 457
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/narvii/scene/model/TemplateConfig;->maxInputLengthMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1388

    :goto_0
    move-wide v10, v2

    .line 458
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getVideoTrimStart()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getVideoTrimEnd()J

    move-result-wide v8

    const/4 v12, 0x1

    move-object v4, p0

    invoke-static/range {v4 .. v12}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;JJJI)V

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 459
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->isImage()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 460
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v1, "position"

    .line 463
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "preview"

    .line 464
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 468
    :cond_4
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 469
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDraftFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ndc://fragment/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/narvii/scene/template/CropTemplateImageFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 471
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v1, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :cond_5
    const-string v3, "imageUrl"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "imageId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getPhotoManager()Lcom/narvii/photos/PhotoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputUrl"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getCrop()Lcom/narvii/theme/ThemeImage;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 475
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getCrop()Lcom/narvii/theme/ThemeImage;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "themeImage"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const p1, 0xfd41

    .line 477
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
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

    const/4 p2, 0x1

    .line 563
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 922
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    .line 564
    invoke-virtual {v3}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 569
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getLoadingBar()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 570
    new-instance p2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;

    invoke-direct {p2, p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 924
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    .line 591
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Lkotlin/jvm/functions/Function3;

    invoke-interface {v1, p2, v0, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 592
    :cond_3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->updateItemView()V

    :goto_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 384
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->checkSubmit()Z

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    const/4 v2, 0x0

    const-string v3, "submitButton"

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 386
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 387
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    .line 386
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 385
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public onRemove(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->unSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    return-void
.end method

.method public onRetryClick(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDownLoadImageHelper()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blogPost"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "templateConfig"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sceneInfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    const-string v1, "draftId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 400
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 419
    sget p2, Lcom/narvii/mediaeditor/R$id;->recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.recycler_view)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 420
    sget p2, Lcom/narvii/mediaeditor/R$id;->sort_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.sort_layout)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 423
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "recyclerView"

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 424
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_8

    new-instance v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$GridItemDecoration;

    invoke-direct {v2, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$GridItemDecoration;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 425
    new-instance p2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    invoke-direct {p2, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->adapter:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    .line 426
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->adapter:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    if-eqz v0, :cond_6

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 428
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    const-string v0, "sortLayout"

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/narvii/scene/model/TemplateConfig;->maxInputCount:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->setTotalCount(I)V

    .line 429
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->setOnRemoveItemListener(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;)V

    .line 430
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->setOnViewClickListener(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;)V

    .line 432
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;

    if-eqz p2, :cond_2

    .line 433
    sget v0, Lcom/narvii/mediaeditor/R$id;->wme_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Lcom/narvii/util/WebMediaExtractor;->getAttachView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void

    .line 430
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p1, "adapter"

    .line 426
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final setAdapter(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->adapter:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    return-void
.end method

.method public final setAddEntry(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/narvii/model/Media;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setBlog(Lcom/narvii/model/Blog;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    return-void
.end method

.method public final setCurCropEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    return-void
.end method

.method public final setCurTrimEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    return-void
.end method

.method public final setDraftId(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    return-void
.end method

.method public final setMaxSelectedEntryCount(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->maxSelectedEntryCount:I

    return-void
.end method

.method public final setMediaPicker(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    return-void
.end method

.method public final setMinSelectedEntryCount(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->minSelectedEntryCount:I

    return-void
.end method

.method public final setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public final setSceneInfo(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-void
.end method

.method public final setSortLayout(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    return-void
.end method

.method public final setSubmitButton(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    return-void
.end method

.method public final setTemplateConfig(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    return-void
.end method

.method public final setTemporaryDraftId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->temporaryDraftId:Ljava/lang/String;

    return-void
.end method

.method public final setWebMediaExtractor(Lcom/narvii/util/WebMediaExtractor;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;

    return-void
.end method

.method public final submit()V
    .locals 8

    .line 492
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getEntryMediaList()Ljava/util/List;

    move-result-object v0

    .line 494
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 495
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    .line 497
    invoke-virtual {v3}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "Video"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_0
    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Gif"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v3, "Image"

    .line 499
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_2
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v3, "CreateNow"

    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "mediaCount"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v2, ","

    .line 504
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 506
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    const-string v1, "sortLayout"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 507
    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 508
    sget v0, Lcom/narvii/mediaeditor/R$string;->some_images_are_loading:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    return-void

    .line 513
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v1

    .line 920
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 515
    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v5, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    invoke-direct {v5}, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;-><init>()V

    .line 516
    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getVideoTrimStart()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimStart:J

    .line 517
    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getVideoTrimEnd()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimEnd:J

    .line 518
    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getCrop()Lcom/narvii/theme/ThemeImage;

    move-result-object v3

    iput-object v3, v5, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->crop:Lcom/narvii/theme/ThemeImage;

    .line 515
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 521
    :cond_6
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSceneTemplateHelper()Lcom/narvii/scene/template/SceneTemplateHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->setOnCompileListener(Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;)V

    .line 522
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSceneTemplateHelper()Lcom/narvii/scene/template/SceneTemplateHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    if-eqz v3, :cond_7

    const-string v2, "storyTemplate"

    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/scene/template/SceneTemplateHelper;->startCompile(Ljava/util/List;Lcom/narvii/scene/model/TemplateConfig;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 514
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 506
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method
