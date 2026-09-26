.class public final Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$Companion;,
        Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;,
        Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;,
        Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SceneTemplateHelper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final callbackMap$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final draftFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileLoader$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onDownloadListener:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final photo:Lcom/narvii/photos/PhotoManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->Companion:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
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
    const-string v0, "draftFile"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->draftFile:Ljava/io/File;

    .line 18
    .line 19
    const-string p2, "photo"

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string p2, "getService(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 33
    .line 34
    .line 35
    const-string/jumbo p1, "storyTemplate"

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->path:Ljava/lang/String;

    .line 38
    .line 39
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$fileLoader$2;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$fileLoader$2;-><init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->fileLoader$delegate:Lw7/m;

    .line 49
    .line 50
    sget-object p1, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$callbackMap$2;->INSTANCE:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$callbackMap$2;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->callbackMap$delegate:Lw7/m;

    .line 57
    return-void
.end method

.method public static final synthetic access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getFileLoader()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->abortAll()V

    .line 8
    return-void
.end method

.method public final cancelRequest(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 3
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "selectedEntry"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getFileLoader()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    .line 21
    :goto_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getCallbackMap()Ljava/util/Map;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/fileloader/FileLoader;->abort(Ljava/lang/String;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    .line 41
    return-void
.end method

.method public final downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 4
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    .line 6
    iget-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v2, ""

    const/16 v3, 0x438

    invoke-static {v1, v2, v3, v3}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 7
    new-instance v2, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    const-string/jumbo v3, "url"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v2, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;-><init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;Lcom/narvii/model/Media;)V

    .line 12
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getCallbackMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getFileLoader()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    return-void
.end method

.method public final downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 9
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "selectedEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZILkotlin/jvm/internal/k;)V

    .line 2
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setMedia(Lcom/narvii/model/Media;)V

    .line 3
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    return-void
.end method

.method public final getCallbackMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/fileloader/IFileDownloadCallback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->callbackMap$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/Map;

    .line 9
    return-object v0
.end method

.method public final getFileLoader()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->fileLoader$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;

    .line 9
    return-object v0
.end method

.method public final getOnDownloadListener()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->onDownloadListener:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoto()Lcom/narvii/photos/PhotoManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->photo:Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method public final setOnDownloadListener(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->onDownloadListener:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->path:Ljava/lang/String;

    return-void
.end method
