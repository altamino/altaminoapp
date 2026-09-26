.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Companion;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$GridItemDecoration;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ItemClickListener;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;,
        Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateGeneratorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,924:1\n819#2:925\n847#2,2:926\n1855#2,2:928\n1855#2,2:931\n1855#2,2:933\n1855#2,2:935\n766#2:937\n857#2,2:938\n1549#2:940\n1620#2,3:941\n1855#2,2:944\n1#3:930\n*S KotlinDebug\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment\n*L\n303#1:925\n303#1:926,2\n303#1:928,2\n522#1:931,2\n571#1:933,2\n599#1:935,2\n644#1:937\n644#1:938,2\n644#1:940\n644#1:941,3\n582#1:944,2\n*E\n"
.end annotation


# static fields
.field public static final CROP_IMAGE:I = 0xfd41

.field public static final Companion:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public adapter:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

.field private addEntry:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "-",
            "Lcom/narvii/model/Media;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private blog:Lcom/narvii/model/Blog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final downLoadImageHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private draftId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final draftManager$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final loadingBar$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxSelectedEntryCount:I

.field public mediaPicker:Lcom/narvii/media/MediaPickerFragment;

.field private minSelectedEntryCount:I

.field private final photoManager$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progressDialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private sceneInfo:Lcom/narvii/scene/model/SceneInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sceneListHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sceneTemplateHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final selectImageDialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

.field public submitButton:Landroid/widget/Button;

.field private templateConfig:Lcom/narvii/scene/model/TemplateConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private temporaryDraftId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->Companion:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->entryList:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "toString(...)"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->temporaryDraftId:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$draftManager$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$draftManager$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftManager$delegate:Lw7/m;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$photoManager$2;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$photoManager$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->photoManager$delegate:Lw7/m;

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->selectImageDialog$delegate:Lw7/m;

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$sceneTemplateHelper$2;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$sceneTemplateHelper$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneTemplateHelper$delegate:Lw7/m;

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->downLoadImageHelper$delegate:Lw7/m;

    .line 82
    .line 83
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->progressDialog$delegate:Lw7/m;

    .line 93
    .line 94
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$loadingBar$2;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$loadingBar$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->loadingBar$delegate:Lw7/m;

    .line 104
    .line 105
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$addEntry$1;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 109
    .line 110
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Le8/q;

    .line 111
    .line 112
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$sceneListHelper$2;

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$sceneListHelper$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneListHelper$delegate:Lw7/m;

    .line 122
    return-void
.end method

.method public static final synthetic access$getDraftFile(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)Ljava/io/File;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDraftFile()Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$isSupportFormat(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/model/Media;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->isSupportFormat(Lcom/narvii/model/Media;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$pickResource(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->pickResource()V

    .line 4
    return-void
.end method

.method public static final synthetic access$selectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->selectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$updateSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->updateSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 4
    return-void
.end method

.method private final checkSubmit()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 24
    .line 25
    iget v2, v2, Lcom/narvii/scene/model/TemplateConfig;->minInputCount:I

    .line 26
    .line 27
    if-lt v0, v2, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1
    :goto_0
    return v1
.end method

.method private final getAddMoreEntry()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    .line 9
    const/16 v6, 0x1f

    .line 10
    const/4 v7, 0x0

    .line 11
    move-object v0, v8

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZILkotlin/jvm/internal/k;)V

    .line 15
    return-object v8
.end method

.method private final getCacheDir()Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "storyTemplate"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 26
    :cond_0
    return-object v0
.end method

.method private final getDownLoadImageHelper()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->downLoadImageHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    .line 9
    return-object v0
.end method

.method private final getDraftFile()Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/scene/template/SceneTemplateHelperKt;->getTemporaryDraftRootDir()Ljava/io/File;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->temporaryDraftId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDraftManager()Lcom/narvii/post/DraftManager;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->entryList:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/lang/Iterable;

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    move-object v3, v2

    .line 25
    .line 26
    check-cast v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isSelected()Z

    .line 30
    move-result v4

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->hasMedia()Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    const/16 v2, 0xa

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 50
    move-result v2

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    check-cast v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-static {v0}, Lkotlin/collections/t;->W0(Ljava/util/Collection;)Ljava/util/List;

    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method private final getSceneListHelper()Lcom/narvii/scene/helper/SceneListHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneListHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/helper/SceneListHelper;

    .line 9
    return-object v0
.end method

.method private final getSceneTemplateHelper()Lcom/narvii/scene/template/SceneTemplateHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneTemplateHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 9
    return-object v0
.end method

.method private final getSelectImageDialog()Lcom/narvii/widget/ACMAlertDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->selectImageDialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 9
    return-object v0
.end method

.method private final isSupportFormat(Lcom/narvii/model/Media;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p1, Lcom/narvii/scene/model/TemplateConfig;->videoEnabled:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->isSupportFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    .line 4
    :cond_3
    iget-object p1, p1, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    invoke-direct {p0, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->isSupportFormat(Ljava/lang/String;)Z

    move-result p1

    :goto_2
    return p1
.end method

.method private final isSupportFormat(Ljava/lang/String;)Z
    .locals 4

    .line 5
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "ROOT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".jpg"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".jpeg"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".gif"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".png"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic n(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->onCreate$lambda$5(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->onCreateOptionsMenu$lambda$6(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreate$lambda$4$lambda$2(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 10
    return-void
.end method

.method private static final onCreate$lambda$5(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->pickResource()V

    .line 10
    return-void
.end method

.method private static final onCreateOptionsMenu$lambda$6(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submit()V

    .line 10
    return-void
.end method

.method private static final onCreateOptionsMenu$lambda$7(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submit()V

    .line 10
    return-void
.end method

.method private static final onPickMediaResult$lambda$17(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "videoManager"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/video/services/VideoManager;

    .line 21
    .line 22
    const-string v2, "photo"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/photos/PhotoManager;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    move-object v3, p1

    .line 32
    .line 33
    check-cast v3, Ljava/lang/Iterable;

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v4

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    check-cast v4, Lcom/narvii/model/Media;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/narvii/model/Media;->isVideo()Z

    .line 53
    move-result v5

    .line 54
    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    const-string v5, "getAbsolutePath(...)"

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/narvii/video/model/StreamInfo;->isVCodecInWhiteList()Z

    .line 78
    move-result v5

    .line 79
    .line 80
    if-eqz v5, :cond_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/narvii/video/model/StreamInfo;->isResolutionValid()Z

    .line 84
    move-result v4

    .line 85
    .line 86
    if-eqz v4, :cond_0

    .line 87
    const/4 v4, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    const/4 v4, 0x0

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_1
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_2
    new-instance v1, Lcom/narvii/scene/template/h;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/scene/template/h;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method private static final onPickMediaResult$lambda$17$lambda$16(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$validFormatList"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getLoadingBar()Lcom/narvii/util/dialog/ProgressDialog;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    add-int/lit8 v1, v0, 0x1

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Lcom/narvii/model/Media;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Le8/q;

    .line 43
    .line 44
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const-string v5, "get(...)"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v3, v2, v4, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move v0, v1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->updateItemView()V

    .line 62
    return-void
.end method

.method public static synthetic p(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->onCreate$lambda$4$lambda$2(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final pickResource()V
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
    const-string v2, "photo"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    .line 19
    .line 20
    const/16 v2, 0x14

    .line 21
    .line 22
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    .line 23
    .line 24
    const/16 v2, 0x18

    .line 25
    .line 26
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getMediaPicker()Lcom/narvii/media/MediaPickerFragment;

    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    iput-object v3, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getMediaPicker()Lcom/narvii/media/MediaPickerFragment;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    iput-object v3, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getMediaPicker()Lcom/narvii/media/MediaPickerFragment;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    .line 53
    return-void
.end method

.method public static synthetic q(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->onCreateOptionsMenu$lambda$7(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->onPickMediaResult$lambda$17$lambda$16(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic s(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->onPickMediaResult$lambda$17(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;)V

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final selectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)Z
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->maxSelectedEntryCount:I

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    if-gt v1, v2, :cond_0

    .line 20
    return v3

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getCanSelected()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isVideo()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input_image:I

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->showShortToast(I)V

    .line 41
    return v3

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getSelectCount()I

    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x1

    .line 47
    add-int/2addr v1, v2

    .line 48
    .line 49
    move-object/from16 v11, p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v11, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setSelectCount(I)V

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    .line 59
    const/16 v9, 0x1f

    .line 60
    const/4 v10, 0x0

    .line 61
    .line 62
    move-object/from16 v3, p1

    .line 63
    .line 64
    .line 65
    invoke-static/range {v3 .. v10}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->copy$default(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;Ljava/lang/String;Lcom/narvii/model/Media;ZIZILjava/lang/Object;)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getSelectId()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setId(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isHttpEntry()Z

    .line 77
    move-result v3

    .line 78
    const/4 v4, 0x2

    .line 79
    const/4 v5, 0x4

    .line 80
    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isVideo()Z

    .line 85
    move-result v3

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move v5, v4

    .line 90
    .line 91
    :cond_4
    :goto_1
    new-instance v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getId()Ljava/lang/String;

    .line 95
    move-result-object v7

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    .line 99
    move-result-object v6

    .line 100
    .line 101
    .line 102
    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    move-result-object v6

    .line 104
    .line 105
    const-class v8, Lcom/narvii/model/Media;

    .line 106
    .line 107
    .line 108
    invoke-static {v6, v8}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    move-result-object v6

    .line 110
    move-object v8, v6

    .line 111
    .line 112
    check-cast v8, Lcom/narvii/model/Media;

    .line 113
    .line 114
    const-wide/16 v10, 0x0

    .line 115
    .line 116
    iget-object v6, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 117
    .line 118
    if-eqz v6, :cond_5

    .line 119
    .line 120
    iget-wide v12, v6, Lcom/narvii/scene/model/TemplateConfig;->maxInputLengthMs:J

    .line 121
    goto :goto_2

    .line 122
    .line 123
    :cond_5
    const-wide/16 v12, 0x3a98

    .line 124
    :goto_2
    const/4 v14, 0x0

    .line 125
    const/4 v15, 0x0

    .line 126
    .line 127
    const/16 v16, 0x0

    .line 128
    .line 129
    const/16 v17, 0xe0

    .line 130
    .line 131
    const/16 v18, 0x0

    .line 132
    move-object v6, v3

    .line 133
    move v9, v5

    .line 134
    .line 135
    .line 136
    invoke-direct/range {v6 .. v18}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;ILkotlin/jvm/internal/k;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 140
    move-result-object v6

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v3}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->addData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 147
    .line 148
    if-ne v5, v4, :cond_6

    .line 149
    .line 150
    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDownLoadImageHelper()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    .line 152
    move-result-object v3

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    .line 156
    :cond_6
    return v2
.end method

.method private final sendNotification(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/scene/notification/CloseSceneTemplateObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/scene/notification/CloseSceneTemplateObject;-><init>()V

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, v0, Lcom/narvii/scene/notification/CloseSceneTemplateObject;->id:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 12
    .line 13
    const-string v1, "new"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    .line 21
    return-void
.end method

.method private final unSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDownLoadImageHelper()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->cancelRequest(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->entryList:Ljava/util/List;

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    move-object v2, v1

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->equalsSelectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    check-cast v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getSelectCount()I

    .line 44
    move-result p1

    .line 45
    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setSelectCount(I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->updateItemView()V

    .line 53
    :cond_2
    return-void
.end method

.method private final updateItemView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAdapter()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 11
    return-void
.end method

.method private final updateSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, 0x1d1e1f

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    return-object v0
.end method

.method public final getAdapter()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->adapter:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "adapter"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getAddEntry()Le8/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/q<",
            "Lcom/narvii/model/Media;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Le8/q;

    return-object v0
.end method

.method public final getBlog()Lcom/narvii/model/Blog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public final getCurCropEntry()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    return-object v0
.end method

.method public final getCurTrimEntry()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public final getDraftId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDraftManager()Lcom/narvii/post/DraftManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftManager$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/post/DraftManager;

    .line 14
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->entryList:Ljava/util/List;

    return-object v0
.end method

.method public final getLoadingBar()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->loadingBar$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    return-object v0
.end method

.method public final getMaxSelectedEntryCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->maxSelectedEntryCount:I

    return v0
.end method

.method public final getMediaPicker()Lcom/narvii/media/MediaPickerFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "mediaPicker"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMinSelectedEntryCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->minSelectedEntryCount:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "video_template_media_picker"

    return-object v0
.end method

.method public final getPhotoManager()Lcom/narvii/photos/PhotoManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->photoManager$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 14
    return-object v0
.end method

.method public final getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->progressDialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/view/ProgressRingDialog;

    .line 9
    return-object v0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "recyclerView"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getSceneInfo()Lcom/narvii/scene/model/SceneInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-object v0
.end method

.method public final getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "sortLayout"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getStringParam(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    .line 15
    :goto_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    const-string p2, ""

    .line 24
    :cond_1
    return-object p2
.end method

.method public final getSubmitButton()Landroid/widget/Button;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string/jumbo v0, "submitButton"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final getTemplateConfig()Lcom/narvii/scene/model/TemplateConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    return-object v0
.end method

.method public final getTemporaryDraftId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->temporaryDraftId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebMediaExtractor()Lcom/narvii/util/WebMediaExtractor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    .locals 5
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-ne p2, v0, :cond_5

    .line 7
    .line 8
    if-eqz p3, :cond_5

    .line 9
    .line 10
    .line 11
    const p2, 0xfd32

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    if-eq p1, p2, :cond_3

    .line 15
    .line 16
    .line 17
    const p2, 0xfd41

    .line 18
    .line 19
    if-eq p1, p2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    .line 27
    const-string/jumbo p2, "themeImage"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    const-class v1, Lcom/narvii/theme/ThemeImage;

    .line 34
    .line 35
    .line 36
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    check-cast p2, Lcom/narvii/theme/ThemeImage;

    .line 40
    .line 41
    const-string v1, "imageId"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    const-string v2, "previewMedia"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p3

    .line 52
    .line 53
    const-class v2, Lcom/narvii/model/Media;

    .line 54
    .line 55
    .line 56
    invoke-static {p3, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    check-cast p3, Lcom/narvii/model/Media;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setCrop(Lcom/narvii/theme/ThemeImage;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setPreviewMedia(Lcom/narvii/model/Media;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 79
    move-result-object p2

    .line 80
    const/4 p3, 0x1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1, p3}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Z)V

    .line 84
    .line 85
    :cond_2
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_3
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    .line 93
    const-string/jumbo p2, "trimStartTime"

    .line 94
    .line 95
    const-wide/16 v1, 0x0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, p2, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 99
    move-result-wide v3

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v3, v4}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setVideoTrimStart(J)V

    .line 103
    .line 104
    .line 105
    const-string/jumbo p2, "trimEndTime"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p2, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 109
    move-result-wide p2

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2, p3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->setVideoTrimEnd(J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 120
    .line 121
    :cond_4
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 122
    :cond_5
    :goto_0
    return-void
.end method

.method public onBackgroundItemClick()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSelectImageDialog()Lcom/narvii/widget/ACMAlertDialog;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSelectImageDialog()Lcom/narvii/widget/ACMAlertDialog;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 18
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSceneTemplateHelper()Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->cancel()V

    .line 8
    return-void
.end method

.method public onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/SceneTemplateHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "helper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->dismiss()V

    .line 30
    .line 31
    :cond_1
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    sget p2, Lcom/narvii/mediaeditor/R$string;->got_it:I

    .line 44
    const/4 p3, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 51
    return-void
.end method

.method public onCompileFinished(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Ljava/lang/String;Lcom/narvii/video/model/StreamInfo;)V
    .locals 8
    .param p1    # Lcom/narvii/scene/template/SceneTemplateHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/videotemplate/Template;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/model/StreamInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "helper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo p1, "template"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string p1, "filePath"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo p1, "streamInfo"

    .line 20
    .line 21
    .line 22
    invoke-static {p4, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->dismiss()V

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    new-instance p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 56
    .line 57
    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 58
    .line 59
    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v0, Ljava/io/File;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 71
    const/4 p3, 0x0

    .line 72
    .line 73
    iput p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 74
    .line 75
    iget p4, p4, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    .line 79
    move-result v0

    .line 80
    .line 81
    .line 82
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    .line 83
    move-result p4

    .line 84
    .line 85
    iput p4, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 86
    .line 87
    const/16 p4, 0x10

    .line 88
    .line 89
    iput p4, p1, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    .line 90
    .line 91
    iget-object p4, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 92
    .line 93
    .line 94
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 95
    const/4 v0, 0x1

    .line 96
    .line 97
    new-array v0, v0, [Lcom/narvii/video/model/AVClipInfoPack;

    .line 98
    .line 99
    aput-object p1, v0, p3

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    iput-object p1, p4, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 111
    .line 112
    iput-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSceneListHelper()Lcom/narvii/scene/helper/SceneListHelper;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 119
    const/4 v2, 0x0

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDraftFile()Ljava/io/File;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    const/4 v4, 0x3

    .line 129
    .line 130
    const-string v5, ""

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;ILjava/lang/String;)V

    .line 134
    .line 135
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sendNotification(Lcom/narvii/scene/model/SceneInfo;)V

    .line 142
    goto :goto_0

    .line 143
    .line 144
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    const-string v1, "getContext(...)"

    .line 151
    .line 152
    .line 153
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p1, v0, p3, p2, p4}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragmentKt;->blogConvertToScene(Lcom/narvii/model/Blog;Landroid/content/Context;Ljava/lang/String;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)Lcom/narvii/scene/model/SceneInfo;

    .line 157
    move-result-object v3

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSceneListHelper()Lcom/narvii/scene/helper/SceneListHelper;

    .line 161
    move-result-object v2

    .line 162
    const/4 v4, 0x0

    .line 163
    .line 164
    .line 165
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDraftFile()Ljava/io/File;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 170
    move-result-object v5

    .line 171
    const/4 v6, 0x2

    .line 172
    .line 173
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    move-result-object v7

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 184
    return-void
.end method

.method public onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/SceneTemplateHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p3, "helper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/scene/view/ProgressRingDialog;->updateProgress(I)V

    .line 13
    return-void
.end method

.method public onCompileStart(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/SceneTemplateHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "helper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->show()V

    .line 13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sget v1, Lcom/narvii/mediaeditor/R$color;->white:I

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarTitleColor(I)V

    .line 17
    .line 18
    sget v0, Lcom/narvii/mediaeditor/R$string;->photos_or_videos:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 26
    .line 27
    const-string v0, "draftId"

    .line 28
    .line 29
    const-class v1, Lcom/narvii/scene/model/SceneInfo;

    .line 30
    .line 31
    const-string v2, "sceneInfo"

    .line 32
    .line 33
    const-class v3, Lcom/narvii/scene/model/TemplateConfig;

    .line 34
    .line 35
    .line 36
    const-string/jumbo v4, "templateConfig"

    .line 37
    .line 38
    const-class v5, Lcom/narvii/model/Blog;

    .line 39
    .line 40
    const-string v6, "blogPost"

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Lcom/narvii/model/Blog;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    check-cast p1, Lcom/narvii/scene/model/TemplateConfig;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :cond_0
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v6

    .line 90
    .line 91
    .line 92
    invoke-static {v6, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    check-cast v5, Lcom/narvii/model/Blog;

    .line 96
    .line 97
    iput-object v5, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    .line 104
    invoke-static {v4, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    check-cast v3, Lcom/narvii/scene/model/TemplateConfig;

    .line 108
    .line 109
    iput-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 120
    .line 121
    iput-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    .line 128
    .line 129
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 130
    .line 131
    if-nez p1, :cond_1

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 135
    return-void

    .line 136
    .line 137
    .line 138
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 139
    .line 140
    iget p1, p1, Lcom/narvii/scene/model/TemplateConfig;->minInputCount:I

    .line 141
    .line 142
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->minSelectedEntryCount:I

    .line 143
    .line 144
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 148
    .line 149
    iget p1, p1, Lcom/narvii/scene/model/TemplateConfig;->maxInputCount:I

    .line 150
    .line 151
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->maxSelectedEntryCount:I

    .line 152
    .line 153
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->entryList:Ljava/util/List;

    .line 154
    .line 155
    .line 156
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAddMoreEntry()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    .line 163
    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    iget-object p1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 167
    .line 168
    if-eqz p1, :cond_4

    .line 169
    .line 170
    check-cast p1, Ljava/lang/Iterable;

    .line 171
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    .line 182
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v1

    .line 184
    .line 185
    if-eqz v1, :cond_3

    .line 186
    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v1

    .line 190
    move-object v2, v1

    .line 191
    .line 192
    check-cast v2, Lcom/narvii/model/Media;

    .line 193
    .line 194
    iget v2, v2, Lcom/narvii/model/Media;->type:I

    .line 195
    .line 196
    const/16 v3, 0x67

    .line 197
    .line 198
    if-ne v2, v3, :cond_2

    .line 199
    goto :goto_1

    .line 200
    .line 201
    .line 202
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    goto :goto_1

    .line 204
    .line 205
    .line 206
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 207
    move-result-object p1

    .line 208
    .line 209
    .line 210
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    move-result v0

    .line 212
    .line 213
    if-eqz v0, :cond_4

    .line 214
    .line 215
    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    check-cast v0, Lcom/narvii/model/Media;

    .line 220
    .line 221
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Le8/q;

    .line 222
    .line 223
    .line 224
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 225
    .line 226
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 227
    .line 228
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 229
    .line 230
    .line 231
    invoke-interface {v1, v0, v2, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    goto :goto_2

    .line 233
    .line 234
    :cond_4
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    .line 235
    .line 236
    if-eqz p1, :cond_5

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    if-eqz p1, :cond_5

    .line 243
    .line 244
    iget-object p1, p1, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    .line 245
    .line 246
    if-eqz p1, :cond_5

    .line 247
    .line 248
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    .line 255
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 256
    .line 257
    new-instance v1, Lcom/narvii/scene/template/f;

    .line 258
    .line 259
    .line 260
    invoke-direct {v1, p0}, Lcom/narvii/scene/template/f;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 267
    .line 268
    new-instance v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;

    .line 269
    .line 270
    .line 271
    invoke-direct {v1, v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 275
    move-result-object v2

    .line 276
    .line 277
    new-instance v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;

    .line 278
    .line 279
    .line 280
    invoke-direct {v3, p0, v1, v0, v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1;Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, p1}, Lcom/narvii/util/WebMediaExtractor;->extract(Ljava/lang/String;)V

    .line 284
    .line 285
    iput-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;

    .line 286
    .line 287
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 288
    .line 289
    const-wide/16 v2, 0x4e20

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    .line 294
    .line 295
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 296
    move-result-object p1

    .line 297
    .line 298
    const-string v0, "playListMediaPicker"

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 302
    move-result-object p1

    .line 303
    .line 304
    instance-of v1, p1, Lcom/narvii/media/MediaPickerFragment;

    .line 305
    .line 306
    if-eqz v1, :cond_6

    .line 307
    .line 308
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 309
    goto :goto_3

    .line 310
    .line 311
    :cond_6
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 312
    .line 313
    .line 314
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 318
    move-result-object v1

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 322
    move-result-object v1

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 326
    move-result-object v0

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 330
    .line 331
    .line 332
    :goto_3
    invoke-virtual {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->setMediaPicker(Lcom/narvii/media/MediaPickerFragment;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getMediaPicker()Lcom/narvii/media/MediaPickerFragment;

    .line 336
    move-result-object p1

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 340
    .line 341
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    .line 342
    .line 343
    if-nez p1, :cond_7

    .line 344
    .line 345
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 346
    .line 347
    if-eqz p1, :cond_7

    .line 348
    .line 349
    new-instance p1, Lcom/narvii/scene/template/g;

    .line 350
    .line 351
    .line 352
    invoke-direct {p1, p0}, Lcom/narvii/scene/template/g;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 353
    .line 354
    .line 355
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 356
    :cond_7
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    sget v0, Lcom/narvii/mediaeditor/R$layout;->actionbar_btn:I

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    sget v0, Lcom/narvii/mediaeditor/R$id;->actionbar_right_btn_btn:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-string v1, "findViewById(...)"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    check-cast v0, Landroid/widget/Button;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->setSubmitButton(Landroid/widget/Button;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSubmitButton()Landroid/widget/Button;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    const/high16 v2, 0x41200000    # 10.0f

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 65
    move-result v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSubmitButton()Landroid/widget/Button;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    sget v2, Lcom/narvii/mediaeditor/R$string;->next:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSubmitButton()Landroid/widget/Button;

    .line 81
    move-result-object v1

    .line 82
    const/4 v2, -0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSubmitButton()Landroid/widget/Button;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    const v2, -0xff2d4c

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSubmitButton()Landroid/widget/Button;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSubmitButton()Landroid/widget/Button;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    new-instance v1, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 113
    .line 114
    new-instance v2, Lcom/narvii/scene/template/d;

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, p0}, Lcom/narvii/scene/template/d;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v2}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSubmitButton()Landroid/widget/Button;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    new-instance v1, Lcom/narvii/scene/template/e;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, p0}, Lcom/narvii/scene/template/e;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const/4 v0, 0x0

    .line 137
    .line 138
    sget v1, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    .line 139
    .line 140
    .line 141
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    if-eqz p1, :cond_0

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    if-eqz p1, :cond_0

    .line 151
    const/4 p2, 0x2

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_template_generator:I

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getMediaPicker()Lcom/narvii/media/MediaPickerFragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/WebMediaExtractor;->abort()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 18
    return-void
.end method

.method public onItemClick(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 11
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "entry"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->isVideo()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-wide v0, v0, Lcom/narvii/scene/model/TemplateConfig;->maxInputLengthMs:J

    .line 20
    :goto_0
    move-wide v8, v0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    const-wide/16 v0, 0x1388

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getVideoTrimStart()J

    .line 35
    move-result-wide v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getVideoTrimEnd()J

    .line 39
    move-result-wide v6

    .line 40
    const/4 v10, 0x1

    .line 41
    move-object v2, p0

    .line 42
    .line 43
    .line 44
    invoke-static/range {v2 .. v10}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;JJJI)V

    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->isImage()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getState()I

    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x4

    .line 58
    .line 59
    if-ne v0, v1, :cond_6

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x0

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    move-object v0, v1

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    new-instance v0, Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    const-class v2, Lcom/narvii/media/MediaGalleryActivity;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    const-string v1, "list"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    const-string p1, "position"

    .line 107
    const/4 v1, 0x0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    .line 112
    const-string p1, "preview"

    .line 113
    const/4 v1, 0x1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    invoke-static {p0, v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 120
    return-void

    .line 121
    .line 122
    :cond_3
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 123
    .line 124
    new-instance v0, Ljava/io/File;

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDraftFile()Ljava/io/File;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v2

    .line 150
    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    const-string v4, "image_"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 163
    move-result-object v4

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v4, ".jpg"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v3

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    new-instance v2, Landroid/content/Intent;

    .line 181
    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    const-string v4, "ndc://fragment/"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-class v4, Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 196
    move-result-object v4

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v3

    .line 204
    .line 205
    .line 206
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 207
    move-result-object v3

    .line 208
    .line 209
    const-string v4, "android.intent.action.VIEW"

    .line 210
    .line 211
    .line 212
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    if-eqz v3, :cond_4

    .line 219
    .line 220
    iget-object v1, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 221
    .line 222
    :cond_4
    const-string v3, "imageUrl"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    .line 227
    const-string v1, "imageId"

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    .line 231
    move-result-object v3

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getPhotoManager()Lcom/narvii/photos/PhotoManager;

    .line 238
    move-result-object v1

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v0}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    const-string v1, "outputUrl"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getCrop()Lcom/narvii/theme/ThemeImage;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    if-eqz v0, :cond_5

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getCrop()Lcom/narvii/theme/ThemeImage;

    .line 257
    move-result-object p1

    .line 258
    .line 259
    .line 260
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    move-result-object p1

    .line 262
    .line 263
    .line 264
    const-string/jumbo v0, "themeImage"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    .line 269
    .line 270
    :cond_5
    const p1, 0xfd41

    .line 271
    .line 272
    .line 273
    invoke-static {p0, v2, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 274
    :cond_6
    :goto_3
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    move-object p2, p1

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Iterable;

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/model/Media;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/model/Media;->isVideo()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getLoadingBar()Lcom/narvii/util/dialog/ProgressDialog;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 40
    .line 41
    new-instance p2, Lcom/narvii/scene/template/c;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p0, p1}, Lcom/narvii/scene/template/c;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_2
    if-eqz p1, :cond_3

    .line 51
    .line 52
    check-cast p1, Ljava/lang/Iterable;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result p2

    .line 61
    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    check-cast p2, Lcom/narvii/model/Media;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Le8/q;

    .line 71
    .line 72
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, p2, v1, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->updateItemView()V

    .line 80
    :goto_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->checkSubmit()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSubmitButton()Landroid/widget/Button;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSubmitButton()Landroid/widget/Button;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 34
    return-void
.end method

.method public onRemove(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "entry"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->unSelectEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 9
    return-void
.end method

.method public onRetryClick(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "entry"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getDownLoadImageHelper()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 13
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "blogPost"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "templateConfig"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "sceneInfo"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    const-string v0, "draftId"

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    sget p2, Lcom/narvii/mediaeditor/R$id;->recycler_view:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string v0, "findViewById(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 26
    .line 27
    sget p2, Lcom/narvii/mediaeditor/R$id;->sort_layout:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast p2, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->setSortLayout(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x3

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$GridItemDecoration;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$GridItemDecoration;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 69
    .line 70
    new-instance p2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    .line 71
    .line 72
    .line 73
    invoke-direct {p2, p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->setAdapter(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAdapter()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 94
    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    iget v0, v0, Lcom/narvii/scene/model/TemplateConfig;->maxInputCount:I

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-virtual {p2, v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->setTotalCount(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->setOnRemoveItemListener(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->setOnViewClickListener(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;)V

    .line 117
    .line 118
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;

    .line 119
    .line 120
    if-eqz p2, :cond_1

    .line 121
    .line 122
    sget v0, Lcom/narvii/mediaeditor/R$id;->wme_frame:I

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout"

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    check-cast p1, Landroid/widget/FrameLayout;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/narvii/util/WebMediaExtractor;->getAttachView()Landroid/view/View;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    const/4 v1, -0x1

    .line 141
    .line 142
    .line 143
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :cond_1
    return-void
.end method

.method public final setAdapter(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->adapter:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    return-void
.end method

.method public final setAddEntry(Le8/q;)V
    .locals 1
    .param p1    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Lcom/narvii/model/Media;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->addEntry:Le8/q;

    return-void
.end method

.method public final setBlog(Lcom/narvii/model/Blog;)V
    .locals 0
    .param p1    # Lcom/narvii/model/Blog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->blog:Lcom/narvii/model/Blog;

    return-void
.end method

.method public final setCurCropEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curCropEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    return-void
.end method

.method public final setCurTrimEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->curTrimEntry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    return-void
.end method

.method public final setDraftId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->draftId:Ljava/lang/String;

    return-void
.end method

.method public final setMaxSelectedEntryCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->maxSelectedEntryCount:I

    return-void
.end method

.method public final setMediaPicker(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 1
    .param p1    # Lcom/narvii/media/MediaPickerFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    return-void
.end method

.method public final setMinSelectedEntryCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->minSelectedEntryCount:I

    return-void
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setSceneInfo(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-void
.end method

.method public final setSortLayout(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    return-void
.end method

.method public final setSubmitButton(Landroid/widget/Button;)V
    .locals 1
    .param p1    # Landroid/widget/Button;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->submitButton:Landroid/widget/Button;

    return-void
.end method

.method public final setTemplateConfig(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/model/TemplateConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    return-void
.end method

.method public final setTemporaryDraftId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->temporaryDraftId:Ljava/lang/String;

    return-void
.end method

.method public final setWebMediaExtractor(Lcom/narvii/util/WebMediaExtractor;)V
    .locals 0
    .param p1    # Lcom/narvii/util/WebMediaExtractor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->webMediaExtractor:Lcom/narvii/util/WebMediaExtractor;

    return-void
.end method

.method public final submit()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getEntryMediaList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Lcom/narvii/model/Media;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/narvii/model/Media;->isVideo()Z

    .line 29
    move-result v4

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const-string v3, "Video"

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 43
    move-result v3

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    const-string v3, "Gif"

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    const-string v3, "Image"

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    const-string v3, "CreateNow"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 73
    move-result v0

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    const-string v3, "mediaCount"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    const-string v2, ","

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    const-string v2, "mediaType"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v1

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    check-cast v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getState()I

    .line 126
    move-result v1

    .line 127
    const/4 v2, 0x4

    .line 128
    .line 129
    if-eq v1, v2, :cond_3

    .line 130
    .line 131
    sget v0, Lcom/narvii/mediaeditor/R$string;->some_images_are_loading:I

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    .line 139
    return-void

    .line 140
    .line 141
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    check-cast v1, Ljava/lang/Iterable;

    .line 155
    .line 156
    .line 157
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    .line 161
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    move-result v2

    .line 163
    .line 164
    if-eqz v2, :cond_5

    .line 165
    .line 166
    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    check-cast v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    .line 174
    move-result-object v3

    .line 175
    .line 176
    .line 177
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 178
    .line 179
    new-instance v4, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 180
    .line 181
    .line 182
    invoke-direct {v4}, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getVideoTrimStart()J

    .line 186
    move-result-wide v5

    .line 187
    .line 188
    iput-wide v5, v4, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimStart:J

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getVideoTrimEnd()J

    .line 192
    move-result-wide v5

    .line 193
    .line 194
    iput-wide v5, v4, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimEnd:J

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getCrop()Lcom/narvii/theme/ThemeImage;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    iput-object v2, v4, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->crop:Lcom/narvii/theme/ThemeImage;

    .line 201
    .line 202
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 203
    .line 204
    new-instance v2, Lw7/u;

    .line 205
    .line 206
    .line 207
    invoke-direct {v2, v3, v4}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    goto :goto_1

    .line 212
    .line 213
    .line 214
    :cond_5
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSceneTemplateHelper()Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 215
    move-result-object v1

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->setOnCompileListener(Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;)V

    .line 219
    .line 220
    .line 221
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSceneTemplateHelper()Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 225
    .line 226
    .line 227
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    const-string/jumbo v3, "storyTemplate"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/scene/template/SceneTemplateHelper;->startCompile(Ljava/util/List;Lcom/narvii/scene/model/TemplateConfig;Ljava/lang/String;)V

    .line 234
    return-void
.end method
