.class public final Lcom/narvii/scene/template/SceneTemplateHelper;
.super Ljava/lang/Object;
.source "SceneTemplateHelper.kt"

# interfaces
.implements Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;
.implements Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;,
        Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;,
        Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;,
        Lcom/narvii/scene/template/SceneTemplateHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateHelper.kt\ncom/narvii/scene/template/SceneTemplateHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,389:1\n1587#2,2:390\n1587#2,2:392\n673#2:394\n746#2,2:395\n673#2:397\n746#2,2:398\n673#2:400\n746#2,2:401\n1587#2,2:403\n*E\n*S KotlinDebug\n*F\n+ 1 SceneTemplateHelper.kt\ncom/narvii/scene/template/SceneTemplateHelper\n*L\n101#1,2:390\n159#1,2:392\n181#1:394\n181#1,2:395\n186#1:397\n186#1,2:398\n225#1:400\n225#1,2:401\n226#1,2:403\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/scene/template/SceneTemplateHelper$Companion;

.field public static final TAG:Ljava/lang/String; = "SceneTemplateHelper"


# instance fields
.field private final api:Lcom/narvii/util/http/ApiService;

.field private compilePercent:I

.field private cropMediaCount:I

.field private final ctx:Lcom/narvii/app/NVContext;

.field private downloadMediaCount:I

.field private downloadPercent:I

.field private final draftFile:Ljava/io/File;

.field private final fileLoader$delegate:Lkotlin/Lazy;

.field private final imageLoader:Lcom/narvii/util/image/NVImageLoader;

.field private isExecuting:Z

.field private isHttpMedia:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/narvii/model/Media;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public medias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

.field private outputFile:Ljava/io/File;

.field private path:Ljava/lang/String;

.field private final photo:Lcom/narvii/photos/PhotoManager;

.field private progress:I

.field private final singleThreadExecutor$delegate:Lkotlin/Lazy;

.field public templateConfig:Lcom/narvii/scene/model/TemplateConfig;

.field private total:I

.field private final trimVideoGenerator$delegate:Lkotlin/Lazy;

.field private final video:Lcom/narvii/video/services/VideoManager;

.field private final videoTemplateManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/scene/template/SceneTemplateHelper;

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "videoTemplateManager"

    const-string v5, "getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "fileLoader"

    const-string v5, "getFileLoader()Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "singleThreadExecutor"

    const-string v5, "getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "trimVideoGenerator"

    const-string v4, "getTrimVideoGenerator()Lcom/narvii/pre_editing/TrimVideoGenerator;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/scene/template/SceneTemplateHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/scene/template/SceneTemplateHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/template/SceneTemplateHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/template/SceneTemplateHelper;->Companion:Lcom/narvii/scene/template/SceneTemplateHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->draftFile:Ljava/io/File;

    .line 39
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string p2, "photo"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"photo\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 40
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"api\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->api:Lcom/narvii/util/http/ApiService;

    .line 41
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string p2, "videoManager"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"videoManager\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->video:Lcom/narvii/video/services/VideoManager;

    .line 42
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string p2, "imageLoader"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"imageLoader\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 44
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateHelper$videoTemplateManager$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/template/SceneTemplateHelper$videoTemplateManager$2;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->videoTemplateManager$delegate:Lkotlin/Lazy;

    const-string p1, "storyTemplate"

    .line 51
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->path:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateHelper$fileLoader$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/template/SceneTemplateHelper$fileLoader$2;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->fileLoader$delegate:Lkotlin/Lazy;

    const/16 p1, 0x64

    .line 57
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    const/16 p1, 0xa

    .line 59
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    const/16 p1, 0x5a

    .line 60
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->compilePercent:I

    .line 65
    sget-object p1, Lcom/narvii/scene/template/SceneTemplateHelper$isHttpMedia$1;->INSTANCE:Lcom/narvii/scene/template/SceneTemplateHelper$isHttpMedia$1;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isHttpMedia:Lkotlin/jvm/functions/Function1;

    .line 70
    sget-object p1, Lcom/narvii/scene/template/SceneTemplateHelper$singleThreadExecutor$2;->INSTANCE:Lcom/narvii/scene/template/SceneTemplateHelper$singleThreadExecutor$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->singleThreadExecutor$delegate:Lkotlin/Lazy;

    .line 71
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateHelper$trimVideoGenerator$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/template/SceneTemplateHelper$trimVideoGenerator$2;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->trimVideoGenerator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$downloadMediaList(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaList(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$downloadMediaSuccess(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaSuccess(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$getOutputPath(Lcom/narvii/scene/template/SceneTemplateHelper;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOutputPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVideoTemplateManager$p(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/videotemplate/VideoTemplateManager;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    move-result-object p0

    return-object p0
.end method

.method private final downloadImage(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 2

    .line 243
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v1, "entry.media!!.url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 244
    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object p1

    .line 247
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getFileLoader()Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;

    move-result-object v0

    new-instance v1, Lcom/narvii/scene/template/SceneTemplateHelper$downloadImage$1;

    invoke-direct {v1}, Lcom/narvii/scene/template/SceneTemplateHelper$downloadImage$1;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    return-void

    .line 243
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final downloadMedia(Ljava/lang/String;JJ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/narvii/scene/template/SceneTemplateHelper;->draftFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    const/4 v3, 0x0

    const-string v4, "?"

    invoke-static {v2, v4, v3, v1, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-static {v4, v5, v3, v1, v3}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localFile.absolutePath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sub-long v3, v14, v12

    invoke-direct {v7, v2, v0, v3, v4}, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaSuccess(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 196
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getTrimVideoGenerator()Lcom/narvii/pre_editing/TrimVideoGenerator;

    move-result-object v8

    invoke-static {v2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    new-instance v16, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p4

    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/lang/String;JJ)V

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-virtual/range {v8 .. v16}, Lcom/narvii/pre_editing/TrimVideoGenerator;->startTrimVideo(Lkotlin/Pair;Ljava/lang/String;Ljava/lang/String;JJLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V

    :goto_1
    return-void
.end method

.method private final downloadMediaList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/narvii/model/Media;",
            "+",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 392
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 160
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    iget-object v3, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v1, "it.first.url"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    iget-wide v4, v1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimStart:J

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    iget-wide v6, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimEnd:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMedia(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final declared-synchronized downloadMediaSuccess(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 225
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->medias:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlin/Pair;

    .line 225
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 227
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    iput-object p2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 228
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimStart:J

    .line 229
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    iput-wide p3, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimEnd:J

    goto :goto_1

    .line 232
    :cond_2
    iget p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    iget p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    iget p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    div-int/2addr p2, p3

    add-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    .line 233
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    if-eqz p1, :cond_3

    iget p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    iget p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    invoke-interface {p1, p0, p2, p3}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V

    .line 234
    :cond_3
    iget p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    .line 235
    iget p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    if-nez p1, :cond_5

    .line 238
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->medias:Ljava/util/List;

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOutputPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/narvii/videotemplate/VideoTemplateManager;->startCompile(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p1, "medias"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 240
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    const-string p1, "medias"

    .line 225
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private final getAllCropImageMedias()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->medias:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 397
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
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

    check-cast v3, Lkotlin/Pair;

    .line 187
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    .line 188
    invoke-virtual {v4}, Lcom/narvii/model/Media;->isImage()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    iget-object v3, v3, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->crop:Lcom/narvii/theme/ThemeImage;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const-string v0, "medias"

    .line 186
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private final getAllDownloadVideoMedias()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->medias:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/Pair;

    .line 182
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    .line 183
    iget v4, v3, Lcom/narvii/model/Media;->type:I

    const/16 v5, 0x66

    if-eq v4, v5, :cond_1

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isHttpMedia:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    const-string v0, "medias"

    .line 181
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private final getOutputPath()Ljava/lang/String;
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->draftFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputFile!!.absolutePath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->singleThreadExecutor$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private final getTrimVideoGenerator()Lcom/narvii/pre_editing/TrimVideoGenerator;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->trimVideoGenerator$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pre_editing/TrimVideoGenerator;

    return-object v0
.end method

.method private final getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->videoTemplateManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/videotemplate/VideoTemplateManager;

    return-object v0
.end method

.method private final initTemplateManager(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 1

    .line 174
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/narvii/videotemplate/VideoTemplateManager;->create(Lcom/narvii/scene/model/TemplateConfig;Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V

    return-void
.end method

.method private final releaseTemplateManager()V
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->destroy()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    .line 265
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->cancel()V

    .line 266
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getTrimVideoGenerator()Lcom/narvii/pre_editing/TrimVideoGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator;->cancel()V

    return-void
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->api:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getCompilePercent()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->compilePercent:I

    return v0
.end method

.method public final getCropMediaCount()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->cropMediaCount:I

    return v0
.end method

.method public final getDownloadMediaCount()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    return v0
.end method

.method public final getDownloadPercent()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    return v0
.end method

.method public final getFileLoader()Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->fileLoader$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/SceneTemplateHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;

    return-object v0
.end method

.method public final getImageLoader()Lcom/narvii/util/image/NVImageLoader;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    return-object v0
.end method

.method public final getMedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->medias:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "medias"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getOnCompileListener()Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    return-object v0
.end method

.method public final getOutputFile()Ljava/io/File;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoto()Lcom/narvii/photos/PhotoManager;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method public final getProgress()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    return v0
.end method

.method public final getTemplate(Lcom/narvii/scene/model/TemplateConfig;)Lcom/narvii/videotemplate/Template;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/narvii/scene/model/TemplateConfig;->folder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/template.json"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 288
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Lcom/narvii/videotemplate/Template;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/videotemplate/Template;

    .line 289
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const-string p1, "t"

    .line 290
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTemplateConfig()Lcom/narvii/scene/model/TemplateConfig;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "templateConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTotal()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    return v0
.end method

.method public final getVideo()Lcom/narvii/video/services/VideoManager;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->video:Lcom/narvii/video/services/VideoManager;

    return-object v0
.end method

.method public final isExecuting()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    return v0
.end method

.method public final isHttpMedia()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/narvii/model/Media;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isHttpMedia:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public onError(I)V
    .locals 3

    .line 294
    sget v0, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_ABORT:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    .line 296
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->releaseTemplateManager()V

    .line 297
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$string;->failed_to_generate_the_video:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1, v1, v0}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    .line 299
    iput-boolean p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    :cond_1
    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 274
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->releaseTemplateManager()V

    .line 275
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/narvii/scene/template/SceneTemplateHelper$onFinish$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/template/SceneTemplateHelper$onFinish$1;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->compilePercent:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    invoke-interface {v0, p0, p1, v1}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V

    :cond_0
    return-void
.end method

.method public onStreamInfoFetched(Lcom/narvii/video/model/StreamInfo;)V
    .locals 2

    const-string v0, "streamInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getTemplate(Lcom/narvii/scene/model/TemplateConfig;)Lcom/narvii/videotemplate/Template;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p1, "templateConfig"

    .line 279
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setCompilePercent(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->compilePercent:I

    return-void
.end method

.method public final setCropMediaCount(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->cropMediaCount:I

    return-void
.end method

.method public final setDownloadMediaCount(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    return-void
.end method

.method public final setDownloadPercent(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    return-void
.end method

.method public final setExecuting(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    return-void
.end method

.method public final setHttpMedia(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/narvii/model/Media;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isHttpMedia:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setMedias(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->medias:Ljava/util/List;

    return-void
.end method

.method public final setOnCompileListener(Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    return-void
.end method

.method public final setOutputFile(Ljava/io/File;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->path:Ljava/lang/String;

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    return-void
.end method

.method public final setTemplateConfig(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    return-void
.end method

.method public final setTotal(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    return-void
.end method

.method public final startCompile(Ljava/util/List;Lcom/narvii/scene/model/TemplateConfig;Ljava/lang/String;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;",
            "Lcom/narvii/scene/model/TemplateConfig;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    const-string v1, "medias"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "config"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "path"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-boolean v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x1

    .line 75
    iput-boolean v11, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    .line 76
    invoke-direct {v8, v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->initTemplateManager(Lcom/narvii/scene/model/TemplateConfig;)V

    .line 77
    iput-object v9, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->medias:Ljava/util/List;

    .line 78
    iput-object v0, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 79
    iput-object v10, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->path:Ljava/lang/String;

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getAllDownloadVideoMedias()Ljava/util/List;

    move-result-object v12

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getAllCropImageMedias()Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->cropMediaCount:I

    .line 86
    iget v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    .line 87
    iget v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    iget v2, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    sub-int/2addr v1, v2

    iput v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->compilePercent:I

    const/4 v13, 0x0

    .line 89
    iput v13, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    .line 90
    iget-object v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v8}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileStart(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    .line 91
    :cond_1
    iget-object v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    if-eqz v1, :cond_2

    iget v2, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    iget v3, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    invoke-interface {v1, v8, v2, v3}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V

    .line 93
    :cond_2
    iget v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    if-nez v1, :cond_4

    iget v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->cropMediaCount:I

    if-nez v1, :cond_4

    .line 94
    iget v0, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    iput v0, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    .line 95
    iget-object v0, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    if-eqz v0, :cond_3

    iget v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    iget v2, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    invoke-interface {v0, v8, v1, v2}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V

    .line 97
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOutputPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->startCompile(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_4
    iget v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->cropMediaCount:I

    if-lez v1, :cond_9

    .line 390
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/Pair;

    .line 102
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    .line 103
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v11, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 104
    iget-object v3, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v3, "photo.getPath(media.url)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->draftFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    .line 110
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    iget-object v0, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->crop:Lcom/narvii/theme/ThemeImage;

    if-eqz v0, :cond_7

    .line 111
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    iget-object v0, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->crop:Lcom/narvii/theme/ThemeImage;

    .line 112
    new-instance v15, Landroid/graphics/RectF;

    iget v3, v0, Lcom/narvii/theme/ThemeImage;->x:F

    iget v4, v0, Lcom/narvii/theme/ThemeImage;->y:F

    iget v5, v0, Lcom/narvii/theme/ThemeImage;->width:F

    add-float/2addr v5, v3

    iget v0, v0, Lcom/narvii/theme/ThemeImage;->height:F

    add-float/2addr v0, v4

    invoke-direct {v15, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 113
    new-instance v7, Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v7, v4, v4, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 115
    iget-object v0, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {v0, v10}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    iget-object v0, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v0, v10}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v3, "photo.getPath(path)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v0, ""

    :goto_1
    move-object/from16 v24, v0

    .line 120
    new-instance v6, Lcom/narvii/crop/BitmapCropTask;

    iget-object v0, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    iget-object v0, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v3, "photo.getPath(it.first.url)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x2d0

    const/16 v23, 0x500

    .line 123
    new-instance v26, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;

    move-object/from16 v0, v26

    move-object/from16 v3, v25

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 p2, v6

    move-object v6, v12

    move-object/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;-><init>(Landroid/graphics/BitmapFactory$Options;Lkotlin/Pair;Ljava/lang/String;Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    move-object v0, v15

    move-object/from16 v15, p2

    move-object/from16 v19, v0

    .line 120
    invoke-direct/range {v15 .. v26}, Lcom/narvii/crop/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;FIILjava/lang/String;Ljava/lang/String;Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;)V

    new-array v0, v13, [Ljava/lang/Void;

    move-object/from16 v1, p2

    .line 144
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 147
    :cond_7
    iget-object v0, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$string;->media_could_not_processed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    invoke-interface {v1, v8, v13, v0, v2}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    return-void

    .line 153
    :cond_9
    iget v0, v8, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    if-lez v0, :cond_a

    .line 154
    invoke-direct {v8, v12}, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaList(Ljava/util/List;)V

    :cond_a
    return-void
.end method
