.class public final Lcom/narvii/scene/template/SceneTemplateHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;
.implements Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/template/SceneTemplateHelper$Companion;,
        Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;,
        Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;,
        Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateHelper.kt\ncom/narvii/scene/template/SceneTemplateHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,389:1\n1855#2:390\n1856#2:392\n1855#2,2:393\n766#2:395\n857#2,2:396\n766#2:398\n857#2,2:399\n766#2:401\n857#2,2:402\n1855#2,2:404\n1#3:391\n*S KotlinDebug\n*F\n+ 1 SceneTemplateHelper.kt\ncom/narvii/scene/template/SceneTemplateHelper\n*L\n101#1:390\n101#1:392\n159#1:393,2\n181#1:395\n181#1:396,2\n186#1:398\n186#1:399,2\n225#1:401\n225#1:402,2\n226#1:404,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/template/SceneTemplateHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SceneTemplateHelper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final api:Lcom/narvii/util/http/ApiService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private compilePercent:I

.field private cropMediaCount:I

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private downloadMediaCount:I

.field private downloadPercent:I

.field private final draftFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileLoader$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final imageLoader:Lcom/narvii/util/image/NVImageLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isExecuting:Z

.field private isHttpMedia:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Lcom/narvii/model/Media;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public medias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private outputFile:Ljava/io/File;
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

.field private progress:I

.field private final singleThreadExecutor$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public templateConfig:Lcom/narvii/scene/model/TemplateConfig;

.field private total:I

.field private final trimVideoGenerator$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final video:Lcom/narvii/video/services/VideoManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoTemplateManager$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/template/SceneTemplateHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/template/SceneTemplateHelper$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/template/SceneTemplateHelper;->Companion:Lcom/narvii/scene/template/SceneTemplateHelper$Companion;

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
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->draftFile:Ljava/io/File;

    .line 18
    .line 19
    const-string p2, "photo"

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    const-string v0, "getService(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    check-cast p2, Lcom/narvii/photos/PhotoManager;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 33
    .line 34
    const-string p2, "api"

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->api:Lcom/narvii/util/http/ApiService;

    .line 46
    .line 47
    .line 48
    const-string/jumbo p2, "videoManager"

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    check-cast p2, Lcom/narvii/video/services/VideoManager;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->video:Lcom/narvii/video/services/VideoManager;

    .line 60
    .line 61
    const-string p2, "imageLoader"

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 73
    .line 74
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateHelper$videoTemplateManager$2;

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, p0}, Lcom/narvii/scene/template/SceneTemplateHelper$videoTemplateManager$2;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->videoTemplateManager$delegate:Lw7/m;

    .line 84
    .line 85
    .line 86
    const-string/jumbo p1, "storyTemplate"

    .line 87
    .line 88
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->path:Ljava/lang/String;

    .line 89
    .line 90
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateHelper$fileLoader$2;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p0}, Lcom/narvii/scene/template/SceneTemplateHelper$fileLoader$2;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->fileLoader$delegate:Lw7/m;

    .line 100
    .line 101
    const/16 p1, 0x64

    .line 102
    .line 103
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    .line 104
    .line 105
    const/16 p1, 0xa

    .line 106
    .line 107
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    .line 108
    .line 109
    const/16 p1, 0x5a

    .line 110
    .line 111
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->compilePercent:I

    .line 112
    .line 113
    sget-object p1, Lcom/narvii/scene/template/SceneTemplateHelper$isHttpMedia$1;->INSTANCE:Lcom/narvii/scene/template/SceneTemplateHelper$isHttpMedia$1;

    .line 114
    .line 115
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isHttpMedia:Le8/l;

    .line 116
    .line 117
    sget-object p1, Lcom/narvii/scene/template/SceneTemplateHelper$singleThreadExecutor$2;->INSTANCE:Lcom/narvii/scene/template/SceneTemplateHelper$singleThreadExecutor$2;

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->singleThreadExecutor$delegate:Lw7/m;

    .line 124
    .line 125
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateHelper$trimVideoGenerator$2;

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, p0}, Lcom/narvii/scene/template/SceneTemplateHelper$trimVideoGenerator$2;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->trimVideoGenerator$delegate:Lw7/m;

    .line 135
    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->onFinish$lambda$8(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    return-void
.end method

.method public static final synthetic access$downloadMediaList(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaList(Ljava/util/List;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$downloadMediaSuccess(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaSuccess(Ljava/lang/String;Ljava/lang/String;J)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOutputPath(Lcom/narvii/scene/template/SceneTemplateHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOutputPath()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getVideoTemplateManager(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/videotemplate/VideoTemplateManager;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/template/SceneTemplateHelper;->onStreamInfoFetched$lambda$9(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)V

    return-void
.end method

.method private final downloadImage(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "url"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    .line 21
    const/4 p1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getFileLoader()Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/scene/template/SceneTemplateHelper$downloadImage$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Lcom/narvii/scene/template/SceneTemplateHelper$downloadImage$1;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    .line 47
    return-void
.end method

.method private final downloadMedia(Ljava/lang/String;JJ)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    move-wide/from16 v12, p2

    .line 7
    .line 8
    move-wide/from16 v14, p4

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    iget-object v1, v7, Lcom/narvii/scene/template/SceneTemplateHelper;->draftFile:Ljava/io/File;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v10

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v1, "video_"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "?"

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x2

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v1, v3, v4, v3}, Lkotlin/text/k;->V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    const-string v5, "/"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v5, v3, v4, v3}, Lkotlin/text/k;->R0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const/16 v1, 0x5f

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, ".mp4"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v11

    .line 83
    .line 84
    new-instance v0, Ljava/io/File;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 97
    move-result-wide v3

    .line 98
    .line 99
    const-wide/16 v5, 0x0

    .line 100
    .line 101
    cmp-long v1, v3, v5

    .line 102
    .line 103
    if-gtz v1, :cond_0

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    const-string v1, "getAbsolutePath(...)"

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    sub-long v3, v14, v12

    .line 116
    .line 117
    .line 118
    invoke-direct {v7, v2, v0, v3, v4}, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaSuccess(Ljava/lang/String;Ljava/lang/String;J)V

    .line 119
    goto :goto_1

    .line 120
    .line 121
    .line 122
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getTrimVideoGenerator()Lcom/narvii/pre_editing/TrimVideoGenerator;

    .line 123
    move-result-object v8

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 127
    move-result-object v9

    .line 128
    .line 129
    new-instance v16, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;

    .line 130
    .line 131
    move-object/from16 v0, v16

    .line 132
    .line 133
    move-object/from16 v1, p0

    .line 134
    .line 135
    move-object/from16 v2, p1

    .line 136
    .line 137
    move-wide/from16 v3, p4

    .line 138
    .line 139
    move-wide/from16 v5, p2

    .line 140
    .line 141
    .line 142
    invoke-direct/range {v0 .. v6}, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/lang/String;JJ)V

    .line 143
    .line 144
    move-wide/from16 v12, p2

    .line 145
    .line 146
    move-wide/from16 v14, p4

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {v8 .. v16}, Lcom/narvii/pre_editing/TrimVideoGenerator;->startTrimVideo(Lw7/u;Ljava/lang/String;Ljava/lang/String;JJLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V

    .line 150
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
            "Lw7/u<",
            "+",
            "Lcom/narvii/model/Media;",
            "+",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Iterable;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lw7/u;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/model/Media;

    .line 25
    .line 26
    iget-object v3, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "url"

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lw7/u;->d()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 39
    .line 40
    iget-wide v4, v1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimStart:J

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lw7/u;->d()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 47
    .line 48
    iget-wide v6, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimEnd:J

    .line 49
    move-object v2, p0

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMedia(Ljava/lang/String;JJ)V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method private final declared-synchronized downloadMediaSuccess(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 4
    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getMedias()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    move-object v3, v2

    .line 39
    .line 40
    check-cast v3, Lw7/u;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lw7/u;->c()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    check-cast v3, Lcom/narvii/model/Media;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-static {v3, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Lw7/u;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    check-cast v1, Lcom/narvii/model/Media;

    .line 83
    .line 84
    iput-object p2, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lw7/u;->d()Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    check-cast v1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 91
    .line 92
    const-wide/16 v2, 0x0

    .line 93
    .line 94
    iput-wide v2, v1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimStart:J

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lw7/u;->d()Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    check-cast v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 101
    .line 102
    iput-wide p3, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimEnd:J

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_2
    iget p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    .line 106
    .line 107
    iget p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    .line 108
    sub-int/2addr p2, p1

    .line 109
    .line 110
    iget p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    .line 111
    div-int/2addr p2, p3

    .line 112
    add-int/2addr p1, p2

    .line 113
    .line 114
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    .line 115
    .line 116
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    .line 117
    .line 118
    if-eqz p2, :cond_3

    .line 119
    .line 120
    iget p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    .line 121
    .line 122
    .line 123
    invoke-interface {p2, p0, p1, p3}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V

    .line 124
    .line 125
    :cond_3
    iget p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    .line 126
    .line 127
    add-int/lit8 p1, p1, -0x1

    .line 128
    .line 129
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    .line 130
    .line 131
    if-nez p1, :cond_4

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getMedias()Ljava/util/List;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOutputPath()Ljava/lang/String;

    .line 143
    move-result-object p3

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2, p3}, Lcom/narvii/videotemplate/VideoTemplateManager;->startCompile(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_4
    monitor-exit p0

    .line 148
    return-void

    .line 149
    :goto_2
    monitor-exit p0

    .line 150
    throw p1
.end method

.method private final getAllCropImageMedias()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getMedias()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

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
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    .line 28
    check-cast v3, Lw7/u;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lw7/u;->c()Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    check-cast v4, Lcom/narvii/model/Media;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/narvii/model/Media;->isImage()Z

    .line 38
    move-result v4

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lw7/u;->d()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    check-cast v3, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->crop:Lcom/narvii/theme/ThemeImage;

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-object v1
.end method

.method private final getAllDownloadVideoMedias()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getMedias()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

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
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    .line 28
    check-cast v3, Lw7/u;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lw7/u;->c()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    check-cast v3, Lcom/narvii/model/Media;

    .line 35
    .line 36
    iget v4, v3, Lcom/narvii/model/Media;->type:I

    .line 37
    .line 38
    const/16 v5, 0x66

    .line 39
    .line 40
    if-eq v4, v5, :cond_1

    .line 41
    .line 42
    const/16 v5, 0x7b

    .line 43
    .line 44
    if-ne v4, v5, :cond_0

    .line 45
    .line 46
    :cond_1
    iget-object v4, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isHttpMedia:Le8/l;

    .line 47
    .line 48
    .line 49
    invoke-interface {v4, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    check-cast v3, Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    move-result v3

    .line 57
    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-object v1
.end method

.method private final getOutputPath()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ".mp4"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    new-instance v1, Ljava/io/File;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->draftFile:Ljava/io/File;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    iput-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v1, "getAbsolutePath(...)"

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-object v0
.end method

.method private final getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->singleThreadExecutor$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 9
    return-object v0
.end method

.method private final getTrimVideoGenerator()Lcom/narvii/pre_editing/TrimVideoGenerator;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->trimVideoGenerator$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/pre_editing/TrimVideoGenerator;

    .line 9
    return-object v0
.end method

.method private final getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->videoTemplateManager$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 9
    return-object v0
.end method

.method private final initTemplateManager(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p0}, Lcom/narvii/videotemplate/VideoTemplateManager;->create(Lcom/narvii/scene/model/TemplateConfig;Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V

    .line 8
    return-void
.end method

.method private static final onFinish$lambda$8(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 2

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
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->video:Lcom/narvii/video/services/VideoManager;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOutputPath()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfo(Ljava/lang/String;Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;)V

    .line 16
    return-void
.end method

.method private static final onStreamInfoFetched$lambda$9(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)V
    .locals 2

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
    const-string v0, "$t"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$streamInfo"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOutputPath()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p0, p1, v1, p2}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileFinished(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Ljava/lang/String;Lcom/narvii/video/model/StreamInfo;)V

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    .line 31
    return-void
.end method

.method private final releaseTemplateManager()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->destroy()V

    .line 8
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->cancel()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getTrimVideoGenerator()Lcom/narvii/pre_editing/TrimVideoGenerator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator;->cancel()V

    .line 18
    return-void
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->api:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getCompilePercent()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->compilePercent:I

    return v0
.end method

.method public final getCropMediaCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->cropMediaCount:I

    return v0
.end method

.method public final getDownloadMediaCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    return v0
.end method

.method public final getDownloadPercent()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    return v0
.end method

.method public final getFileLoader()Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->fileLoader$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;

    .line 9
    return-object v0
.end method

.method public final getImageLoader()Lcom/narvii/util/image/NVImageLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    return-object v0
.end method

.method public final getMedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->medias:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "medias"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getOnCompileListener()Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    return-object v0
.end method

.method public final getOutputFile()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoto()Lcom/narvii/photos/PhotoManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method public final getProgress()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    return v0
.end method

.method public final getTemplate(Lcom/narvii/scene/model/TemplateConfig;)Lcom/narvii/videotemplate/Template;
    .locals 2
    .param p1    # Lcom/narvii/scene/model/TemplateConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/scene/model/TemplateConfig;->folder:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p1, "/template.json"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    const-string v0, "open(...)"

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 46
    .line 47
    const-class v1, Lcom/narvii/videotemplate/Template;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/videotemplate/Template;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 60
    return-object v0
.end method

.method public final getTemplateConfig()Lcom/narvii/scene/model/TemplateConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string/jumbo v0, "templateConfig"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final getTotal()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    return v0
.end method

.method public final getVideo()Lcom/narvii/video/services/VideoManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->video:Lcom/narvii/video/services/VideoManager;

    return-object v0
.end method

.method public final isExecuting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    return v0
.end method

.method public final isHttpMedia()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Lcom/narvii/model/Media;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isHttpMedia:Le8/l;

    return-object v0
.end method

.method public onError(I)V
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_ABORT:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->releaseTemplateManager()V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sget v2, Lcom/narvii/mediaeditor/R$string;->failed_to_generate_the_video:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "getString(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, p0, p1, v1, v0}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    .line 38
    :cond_1
    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->releaseTemplateManager()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/scene/template/j;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/narvii/scene/template/j;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->compilePercent:I

    .line 7
    int-to-float v1, v1

    .line 8
    mul-float/2addr p1, v1

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    .line 11
    int-to-float v1, v1

    .line 12
    add-float/2addr p1, v1

    .line 13
    float-to-int p1, p1

    .line 14
    .line 15
    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p0, p1, v1}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V

    .line 19
    :cond_0
    return-void
.end method

.method public onStreamInfoFetched(Lcom/narvii/video/model/StreamInfo;)V
    .locals 2
    .param p1    # Lcom/narvii/video/model/StreamInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "streamInfo"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getTemplateConfig()Lcom/narvii/scene/model/TemplateConfig;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getTemplate(Lcom/narvii/scene/model/TemplateConfig;)Lcom/narvii/videotemplate/Template;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/scene/template/k;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/scene/template/k;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 23
    return-void
.end method

.method public final setCompilePercent(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->compilePercent:I

    return-void
.end method

.method public final setCropMediaCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->cropMediaCount:I

    return-void
.end method

.method public final setDownloadMediaCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    return-void
.end method

.method public final setDownloadPercent(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    return-void
.end method

.method public final setExecuting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    return-void
.end method

.method public final setHttpMedia(Le8/l;)V
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lcom/narvii/model/Media;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->isHttpMedia:Le8/l;

    return-void
.end method

.method public final setMedias(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->medias:Ljava/util/List;

    return-void
.end method

.method public final setOnCompileListener(Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    return-void
.end method

.method public final setOutputFile(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->outputFile:Ljava/io/File;

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

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->path:Ljava/lang/String;

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    return-void
.end method

.method public final setTemplateConfig(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/model/TemplateConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->templateConfig:Lcom/narvii/scene/model/TemplateConfig;

    return-void
.end method

.method public final setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    return-void
.end method

.method public final startCompile(Ljava/util/List;Lcom/narvii/scene/model/TemplateConfig;Ljava/lang/String;)V
    .locals 25
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/scene/model/TemplateConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;",
            "Lcom/narvii/scene/model/TemplateConfig;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    move-object/from16 v0, p2

    .line 7
    .line 8
    move-object/from16 v8, p3

    .line 9
    .line 10
    const-string v1, "medias"

    .line 11
    .line 12
    .line 13
    invoke-static {v7, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v1, "config"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v1, "path"

    .line 21
    .line 22
    .line 23
    invoke-static {v8, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    iget-boolean v1, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    return-void

    .line 29
    :cond_0
    const/4 v9, 0x1

    .line 30
    .line 31
    iput-boolean v9, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting:Z

    .line 32
    .line 33
    .line 34
    invoke-direct {v6, v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->initTemplateManager(Lcom/narvii/scene/model/TemplateConfig;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->setMedias(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->setTemplateConfig(Lcom/narvii/scene/model/TemplateConfig;)V

    .line 41
    .line 42
    iput-object v8, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->path:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getAllDownloadVideoMedias()Ljava/util/List;

    .line 46
    move-result-object v10

    .line 47
    .line 48
    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getAllCropImageMedias()Ljava/util/List;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 54
    move-result v1

    .line 55
    .line 56
    iput v1, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    move-result v1

    .line 61
    .line 62
    iput v1, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->cropMediaCount:I

    .line 63
    .line 64
    iget v1, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    .line 65
    .line 66
    mul-int/lit8 v1, v1, 0x2

    .line 67
    .line 68
    const/16 v2, 0xa

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 72
    move-result v1

    .line 73
    .line 74
    iput v1, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    .line 75
    .line 76
    iget v2, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    .line 77
    sub-int/2addr v2, v1

    .line 78
    .line 79
    iput v2, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->compilePercent:I

    .line 80
    const/4 v11, 0x0

    .line 81
    .line 82
    iput v11, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    .line 83
    .line 84
    iget-object v1, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v6}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileStart(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    .line 90
    .line 91
    :cond_1
    iget-object v1, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    .line 92
    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    iget v2, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    .line 96
    .line 97
    iget v3, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v6, v2, v3}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V

    .line 101
    .line 102
    :cond_2
    iget v1, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaCount:I

    .line 103
    .line 104
    if-nez v1, :cond_4

    .line 105
    .line 106
    iget v2, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->cropMediaCount:I

    .line 107
    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    iget v0, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadPercent:I

    .line 111
    .line 112
    iput v0, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->progress:I

    .line 113
    .line 114
    iget-object v1, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    .line 115
    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    iget v2, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->total:I

    .line 119
    .line 120
    .line 121
    invoke-interface {v1, v6, v0, v2}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideoTemplateManager()Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOutputPath()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v7, v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->startCompile(Ljava/util/List;Ljava/lang/String;)V

    .line 133
    return-void

    .line 134
    .line 135
    :cond_4
    iget v2, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->cropMediaCount:I

    .line 136
    .line 137
    if-lez v2, :cond_9

    .line 138
    .line 139
    check-cast v0, Ljava/lang/Iterable;

    .line 140
    .line 141
    .line 142
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object v12

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v0

    .line 148
    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    .line 152
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 154
    move-object v2, v0

    .line 155
    .line 156
    check-cast v2, Lw7/u;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lw7/u;->c()Ljava/lang/Object;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    check-cast v0, Lcom/narvii/model/Media;

    .line 163
    .line 164
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 165
    .line 166
    .line 167
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 168
    .line 169
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    .line 171
    iget-object v3, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 172
    .line 173
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v0}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    iget-object v3, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->draftFile:Ljava/io/File;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 195
    move-result-object v3

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    const-string v4, "image_"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 221
    move-result-object v4

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v4, ".jpg"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v3

    .line 234
    .line 235
    new-instance v4, Ljava/io/File;

    .line 236
    .line 237
    .line 238
    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 242
    move-result-object v23

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Lw7/u;->d()Ljava/lang/Object;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    check-cast v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 249
    .line 250
    iget-object v0, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->crop:Lcom/narvii/theme/ThemeImage;

    .line 251
    .line 252
    if-eqz v0, :cond_7

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Lw7/u;->d()Ljava/lang/Object;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    check-cast v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 259
    .line 260
    iget-object v0, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->crop:Lcom/narvii/theme/ThemeImage;

    .line 261
    .line 262
    new-instance v15, Landroid/graphics/RectF;

    .line 263
    .line 264
    iget v3, v0, Lcom/narvii/theme/ThemeImage;->x:F

    .line 265
    .line 266
    iget v4, v0, Lcom/narvii/theme/ThemeImage;->y:F

    .line 267
    .line 268
    iget v5, v0, Lcom/narvii/theme/ThemeImage;->width:F

    .line 269
    add-float/2addr v5, v3

    .line 270
    .line 271
    iget v0, v0, Lcom/narvii/theme/ThemeImage;->height:F

    .line 272
    add-float/2addr v0, v4

    .line 273
    .line 274
    .line 275
    invoke-direct {v15, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 276
    .line 277
    new-instance v14, Landroid/graphics/RectF;

    .line 278
    .line 279
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 280
    int-to-float v0, v0

    .line 281
    .line 282
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 283
    int-to-float v1, v1

    .line 284
    const/4 v3, 0x0

    .line 285
    .line 286
    .line 287
    invoke-direct {v14, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 288
    .line 289
    iget-object v0, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v8}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    .line 293
    move-result v0

    .line 294
    .line 295
    if-eqz v0, :cond_6

    .line 296
    .line 297
    iget-object v0, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v8}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 301
    move-result-object v0

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    :goto_1
    move-object/from16 v22, v0

    .line 308
    goto :goto_2

    .line 309
    .line 310
    :cond_6
    const-string v0, ""

    .line 311
    goto :goto_1

    .line 312
    .line 313
    :goto_2
    new-instance v13, Lcom/narvii/crop/BitmapCropTask;

    .line 314
    .line 315
    iget-object v0, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 316
    .line 317
    .line 318
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 319
    move-result-object v16

    .line 320
    .line 321
    const/16 v17, 0x0

    .line 322
    .line 323
    iget-object v0, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Lw7/u;->c()Ljava/lang/Object;

    .line 327
    move-result-object v1

    .line 328
    .line 329
    check-cast v1, Lcom/narvii/model/Media;

    .line 330
    .line 331
    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 335
    move-result-object v0

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 339
    move-result-object v18

    .line 340
    .line 341
    const/high16 v19, 0x3f800000    # 1.0f

    .line 342
    .line 343
    const/16 v20, 0x2d0

    .line 344
    .line 345
    const/16 v21, 0x500

    .line 346
    .line 347
    new-instance v24, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;

    .line 348
    .line 349
    move-object/from16 v0, v24

    .line 350
    .line 351
    move-object/from16 v1, p0

    .line 352
    .line 353
    move-object/from16 v3, v23

    .line 354
    move-object v4, v10

    .line 355
    .line 356
    move-object/from16 v5, p1

    .line 357
    .line 358
    .line 359
    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;Lw7/u;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 360
    move-object v0, v13

    .line 361
    move-object v1, v14

    .line 362
    .line 363
    move-object/from16 v14, v16

    .line 364
    move-object v2, v15

    .line 365
    .line 366
    move-object/from16 v15, v17

    .line 367
    .line 368
    move-object/from16 v16, v18

    .line 369
    .line 370
    move-object/from16 v17, v2

    .line 371
    .line 372
    move-object/from16 v18, v1

    .line 373
    .line 374
    .line 375
    invoke-direct/range {v13 .. v24}, Lcom/narvii/crop/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;FIILjava/lang/String;Ljava/lang/String;Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;)V

    .line 376
    .line 377
    new-array v1, v11, [Ljava/lang/Void;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 381
    .line 382
    goto/16 :goto_0

    .line 383
    .line 384
    :cond_7
    iget-object v0, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 385
    .line 386
    .line 387
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 388
    move-result-object v0

    .line 389
    .line 390
    sget v1, Lcom/narvii/mediaeditor/R$string;->media_could_not_processed:I

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 394
    move-result-object v0

    .line 395
    .line 396
    const-string v1, "getString(...)"

    .line 397
    .line 398
    .line 399
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    iget-object v1, v6, Lcom/narvii/scene/template/SceneTemplateHelper;->onCompileListener:Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    .line 402
    .line 403
    if-eqz v1, :cond_5

    .line 404
    const/4 v2, 0x0

    .line 405
    .line 406
    .line 407
    invoke-interface {v1, v6, v11, v0, v2}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    :cond_8
    return-void

    .line 411
    .line 412
    :cond_9
    if-lez v1, :cond_a

    .line 413
    .line 414
    .line 415
    invoke-direct {v6, v10}, Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMediaList(Ljava/util/List;)V

    .line 416
    :cond_a
    return-void
.end method
