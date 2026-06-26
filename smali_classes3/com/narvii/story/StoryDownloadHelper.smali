.class public final Lcom/narvii/story/StoryDownloadHelper;
.super Ljava/lang/Object;
.source "StoryDownloadHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;,
        Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;,
        Lcom/narvii/story/StoryDownloadHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryDownloadHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryDownloadHelper.kt\ncom/narvii/story/StoryDownloadHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,296:1\n1313#2:297\n1382#2,3:298\n10894#3,2:301\n*E\n*S KotlinDebug\n*F\n+ 1 StoryDownloadHelper.kt\ncom/narvii/story/StoryDownloadHelper\n*L\n80#1:297\n80#1,3:298\n192#1,2:301\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/story/StoryDownloadHelper$Companion;

.field public static final PROGRESS_FOR_ADD_WATERMARK:I = 0x50

.field public static final PROGRESS_FOR_DOWNLOAD_VIDEO:I = 0x14

.field public static final SAVED_STORY:Ljava/lang/String; = "SavedStory"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private downloadClickListener:Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;

.field private final filePath:Ljava/lang/String;

.field private isRunning:Z

.field private onActionFinished:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final progressDialog$delegate:Lkotlin/Lazy;

.field private final storyLoader:Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;

.field private templateManager:Lcom/narvii/videotemplate/VideoTemplateManager;

.field private final videoManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/story/StoryDownloadHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "progressDialog"

    const-string v5, "getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "videoManager"

    const-string v4, "getVideoManager()Lcom/narvii/video/services/VideoManager;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/story/StoryDownloadHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/story/StoryDownloadHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/story/StoryDownloadHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/story/StoryDownloadHelper;->Companion:Lcom/narvii/story/StoryDownloadHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 56
    new-instance p1, Lcom/narvii/story/StoryDownloadHelper$progressDialog$2;

    invoke-direct {p1, p0}, Lcom/narvii/story/StoryDownloadHelper$progressDialog$2;-><init>(Lcom/narvii/story/StoryDownloadHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper;->progressDialog$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 66
    invoke-static {p1}, Lcom/narvii/util/Utils;->getTmpDir(Z)Ljava/io/File;

    move-result-object p1

    const-string v0, "Utils.getTmpDir(true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils.getTmpDir(true).absolutePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper;->filePath:Ljava/lang/String;

    .line 68
    new-instance p1, Lcom/narvii/story/StoryDownloadHelper$videoManager$2;

    invoke-direct {p1, p0}, Lcom/narvii/story/StoryDownloadHelper$videoManager$2;-><init>(Lcom/narvii/story/StoryDownloadHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper;->videoManager$delegate:Lkotlin/Lazy;

    .line 76
    new-instance p1, Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;

    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper;->filePath:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;-><init>(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper;->storyLoader:Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;

    return-void
.end method

.method public static final synthetic access$createConcatFile(Lcom/narvii/story/StoryDownloadHelper;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryDownloadHelper;->createConcatFile([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadStoryInternal(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/model/User;ILjava/util/List;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/story/StoryDownloadHelper;->downloadStoryInternal(Lcom/narvii/model/User;ILjava/util/List;)V

    return-void
.end method

.method public static final synthetic access$generateVideoWithWaterMarkToGallery(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/model/User;ILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/story/StoryDownloadHelper;->generateVideoWithWaterMarkToGallery(Lcom/narvii/model/User;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCtx$p(Lcom/narvii/story/StoryDownloadHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/story/StoryDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$getFilePath$p(Lcom/narvii/story/StoryDownloadHelper;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/story/StoryDownloadHelper;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getStoryLoader$p(Lcom/narvii/story/StoryDownloadHelper;)Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/story/StoryDownloadHelper;->storyLoader:Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;

    return-object p0
.end method

.method public static final synthetic access$getVideoManager$p(Lcom/narvii/story/StoryDownloadHelper;)Lcom/narvii/video/services/VideoManager;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/story/StoryDownloadHelper;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showResult(Lcom/narvii/story/StoryDownloadHelper;ZLjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/narvii/story/StoryDownloadHelper;->showResult(ZLjava/lang/String;)V

    return-void
.end method

.method private final createConcatFile([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/concat.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 186
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 190
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    array-length v2, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    const-string v6, "file \'"

    .line 193
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'\n"

    .line 195
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "builder.toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0

    .line 197
    :cond_2
    :try_start_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 200
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_3

    .line 204
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    const-string p1, ""

    return-object p1

    :goto_4
    if-eqz v3, :cond_4

    .line 204
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    :cond_4
    :goto_5
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public static synthetic downloadStory$default(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/model/Blog;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 79
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/StoryDownloadHelper;->downloadStory(Lcom/narvii/model/Blog;I)V

    return-void
.end method

.method private final downloadStoryInternal(Lcom/narvii/model/User;ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/User;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Lcom/narvii/model/Media;",
            ">;>;)V"
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Lcom/narvii/story/StoryDownloadHelper;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/narvii/story/StoryDownloadHelper;->isRunning:Z

    .line 118
    new-instance v0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$1;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$1;-><init>(Lcom/narvii/story/StoryDownloadHelper;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 122
    new-instance v6, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;

    invoke-direct {v6, p0, p3, p1, p2}, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;-><init>(Lcom/narvii/story/StoryDownloadHelper;Ljava/util/List;Lcom/narvii/model/User;I)V

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method

.method private final generateVideoWithWaterMarkToGallery(Lcom/narvii/model/User;ILjava/lang/String;)V
    .locals 5

    .line 238
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    const-string v1, "ctx.context"

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Amino/SavedStory"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/story/StoryDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "SavedStory"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 246
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "_watermark.mp4"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v2, Lcom/narvii/videotemplate/VideoTemplateManager;

    iget-object v3, p0, Lcom/narvii/story/StoryDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v3}, Lcom/narvii/videotemplate/VideoTemplateManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/story/StoryDownloadHelper;->templateManager:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 249
    iget-object v2, p0, Lcom/narvii/story/StoryDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "watermark/template.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "ctx.context.assets.open(\"watermark/template.json\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/videotemplate/Template;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/videotemplate/Template;

    .line 251
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 252
    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper;->templateManager:Lcom/narvii/videotemplate/VideoTemplateManager;

    if-eqz v1, :cond_2

    const-string v3, "template"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-instance v4, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;

    invoke-direct {v4, p0, v0, p3}, Lcom/narvii/story/StoryDownloadHelper$generateVideoWithWaterMarkToGallery$1;-><init>(Lcom/narvii/story/StoryDownloadHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/videotemplate/VideoTemplateManager;->create(Lcom/narvii/videotemplate/Template;ZLcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper;->templateManager:Lcom/narvii/videotemplate/VideoTemplateManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->printWatermark(Lcom/narvii/model/User;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final getVideoManager()Lcom/narvii/video/services/VideoManager;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper;->videoManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/StoryDownloadHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/VideoManager;

    return-object v0
.end method

.method private final showResult(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/narvii/story/StoryDownloadHelper;->isRunning:Z

    .line 216
    new-instance v0, Lcom/narvii/story/StoryDownloadHelper$showResult$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/story/StoryDownloadHelper$showResult$1;-><init>(Lcom/narvii/story/StoryDownloadHelper;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic showResult$default(Lcom/narvii/story/StoryDownloadHelper;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 214
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/story/StoryDownloadHelper;->showResult(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper;->storyLoader:Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->abortAll()V

    .line 106
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper;->templateManager:Lcom/narvii/videotemplate/VideoTemplateManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->cancel()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper;->onActionFinished:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_1
    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/narvii/story/StoryDownloadHelper;->isRunning:Z

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper;->templateManager:Lcom/narvii/videotemplate/VideoTemplateManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->destroy()V

    :cond_0
    return-void
.end method

.method public final downloadStory(Lcom/narvii/model/Blog;I)V
    .locals 4

    const-string v0, "blog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 299
    check-cast v2, Lcom/narvii/model/Scene;

    .line 80
    iget-object v3, v2, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    iget-object v2, v2, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    if-le v0, p2, :cond_2

    .line 82
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v2, p0, Lcom/narvii/story/StoryDownloadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0f2d

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v2, 0x7f0f0f2e

    .line 84
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 85
    new-instance v2, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;-><init>(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/model/Blog;Ljava/util/List;I)V

    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    new-instance p1, Lcom/narvii/story/StoryDownloadHelper$downloadStory$2;

    invoke-direct {p1, p0}, Lcom/narvii/story/StoryDownloadHelper$downloadStory$2;-><init>(Lcom/narvii/story/StoryDownloadHelper;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 98
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_2

    .line 100
    :cond_2
    :goto_1
    iget-object p2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const-string v0, "blog.author"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-direct {p0, p2, p1, v1}, Lcom/narvii/story/StoryDownloadHelper;->downloadStoryInternal(Lcom/narvii/model/User;ILjava/util/List;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final getDownloadClickListener()Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper;->downloadClickListener:Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;

    return-object v0
.end method

.method public final getOnActionFinished()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper;->onActionFinished:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper;->progressDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/StoryDownloadHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/ProgressRingDialog;

    return-object v0
.end method

.method public final setDownloadClickListener(Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper;->downloadClickListener:Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;

    return-void
.end method

.method public final setOnActionFinished(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper;->onActionFinished:Lkotlin/jvm/functions/Function1;

    return-void
.end method
