.class public final Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;
.super Ljava/lang/Object;
.source "SceneTemplateImageDownloadHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;,
        Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;,
        Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;,
        Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateImageDownloadHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateImageDownloadHelper.kt\ncom/narvii/scene/template/SceneTemplateImageDownloadHelper\n*L\n1#1,151:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$Companion;

.field public static final TAG:Ljava/lang/String; = "SceneTemplateHelper"


# instance fields
.field private final callbackMap$delegate:Lkotlin/Lazy;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private final draftFile:Ljava/io/File;

.field private final fileLoader$delegate:Lkotlin/Lazy;

.field private onDownloadListener:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

.field private path:Ljava/lang/String;

.field private final photo:Lcom/narvii/photos/PhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "fileLoader"

    const-string v5, "getFileLoader()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "callbackMap"

    const-string v4, "getCallbackMap()Ljava/util/Map;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->Companion:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->draftFile:Ljava/io/File;

    .line 20
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string p2, "photo"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"photo\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->photo:Lcom/narvii/photos/PhotoManager;

    const-string p1, "storyTemplate"

    .line 22
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->path:Ljava/lang/String;

    .line 23
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$fileLoader$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$fileLoader$2;-><init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->fileLoader$delegate:Lkotlin/Lazy;

    .line 24
    sget-object p1, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$callbackMap$2;->INSTANCE:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$callbackMap$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->callbackMap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getFileLoader()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->abortAll()V

    return-void
.end method

.method public final cancelRequest(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 3

    const-string v0, "selectedEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getFileLoader()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getCallbackMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/fileloader/FileLoader;->abort(Ljava/lang/String;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    return-void
.end method

.method public final downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 4

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    .line 39
    iget-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const/16 v2, 0x438

    const-string v3, ""

    invoke-static {v1, v3, v2, v2}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 40
    new-instance v1, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    iget-object v2, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v3, "media.url"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 41
    invoke-virtual {v1, v2}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$downloadMedia$callback$1;-><init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;Lcom/narvii/model/Media;)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getCallbackMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getFileLoader()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    return-void
.end method

.method public final downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 9

    const-string v0, "selectedEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setMedia(Lcom/narvii/model/Media;)V

    .line 33
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->setId(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->downloadMedia(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    return-void
.end method

.method public final getCallbackMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/fileloader/IFileDownloadCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->callbackMap$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final getFileLoader()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->fileLoader$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;

    return-object v0
.end method

.method public final getOnDownloadListener()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->onDownloadListener:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoto()Lcom/narvii/photos/PhotoManager;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->photo:Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method public final setOnDownloadListener(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->onDownloadListener:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->path:Ljava/lang/String;

    return-void
.end method
