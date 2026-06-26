.class public final Lcom/narvii/util/fileloader/FileLoader$Session;
.super Ljava/lang/Object;
.source "FileLoader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/fileloader/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileLoader.kt\ncom/narvii/util/fileloader/FileLoader$Session\n*L\n1#1,365:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private aborted:Z

.field private final callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

.field private final callbackWrapper$delegate:Lkotlin/Lazy;

.field private final callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/narvii/util/fileloader/IFileDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private contentLength:I

.field private volatile dispatched:Z

.field private downloadedByte:I

.field private file:Ljava/io/File;

.field private final request:Lcom/narvii/util/fileloader/FileLoaderRequest;

.field private status:I

.field final synthetic this$0:Lcom/narvii/util/fileloader/FileLoader;

.field private writingFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "callbackWrapper"

    const-string v4, "getCallbackWrapper()Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/util/fileloader/FileLoader$Session;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/util/fileloader/FileLoader;Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/fileloader/FileLoaderRequest;",
            "Lcom/narvii/util/fileloader/IFileDownloadCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    iput-object p3, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 26
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 36
    new-instance p2, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;

    invoke-direct {p2, p0}, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;-><init>(Lcom/narvii/util/fileloader/FileLoader$Session;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbackWrapper$delegate:Lkotlin/Lazy;

    .line 60
    iget-object p2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoader;->getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 61
    iget-object p2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    if-eqz p2, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->getWritingFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    invoke-virtual {p1, v1}, Lcom/narvii/util/fileloader/FileLoader;->getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".w"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->writingFile:Ljava/io/File;

    .line 62
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static final synthetic access$dispatchResult(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/narvii/util/fileloader/FileLoader$Session;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static final synthetic access$innerDispatchResult(Lcom/narvii/util/fileloader/FileLoader$Session;JLjava/lang/Exception;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/util/fileloader/FileLoader$Session;->innerDispatchResult(JLjava/lang/Exception;)V

    return-void
.end method

.method private final dispatchResult(Ljava/lang/Exception;)V
    .locals 6

    .line 194
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 196
    :goto_0
    iget v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_1

    cmp-long v2, v0, v4

    if-gtz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    cmp-long v2, v0, v4

    if-gtz v2, :cond_4

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {v2}, Lcom/narvii/util/fileloader/FileLoader;->dispatchToMainThread()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    new-instance v2, Lcom/narvii/util/fileloader/FileLoader$Session$dispatchResult$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/narvii/util/fileloader/FileLoader$Session$dispatchResult$1;-><init>(Lcom/narvii/util/fileloader/FileLoader$Session;JLjava/lang/Exception;)V

    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 202
    :cond_3
    invoke-direct {p0, v0, v1, p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->innerDispatchResult(JLjava/lang/Exception;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final extract(Ljava/io/File;)V
    .locals 8

    .line 163
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to extract "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 166
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 169
    invoke-static {v3, v4}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 171
    invoke-virtual {v4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iput v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 173
    invoke-direct {p0, v1}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 176
    iput v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 177
    invoke-direct {p0, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 181
    iput v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 182
    invoke-direct {p0, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :goto_0
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 185
    :goto_1
    :try_start_2
    iput v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 186
    invoke-direct {p0, p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    :goto_2
    return-void

    :goto_3
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    throw p1
.end method

.method private final getCallbackWrapper()Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;
    .locals 3

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbackWrapper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/util/fileloader/FileLoader$Session;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;

    return-object v0
.end method

.method private final getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 221
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {v1}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getWritingFile(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 225
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fn"

    .line 226
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ".w"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    .line 229
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private final innerDispatchResult(JLjava/lang/Exception;)V
    .locals 5

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatched:Z

    .line 211
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader;->access$getSessionMap$p(Lcom/narvii/util/fileloader/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader;->access$getSessionMap$p(Lcom/narvii/util/fileloader/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    .line 216
    iget-object v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onPostExecute(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    iget-object v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    invoke-virtual {v2}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic status$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final abort(Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->aborted:Z

    .line 102
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-static {p1}, Lcom/narvii/util/fileloader/FileLoader;->access$getSessionMap$p(Lcom/narvii/util/fileloader/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 6

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 84
    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatched:Z

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_3

    .line 86
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onPostExecute(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v4}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final containsRealCallback(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 71
    invoke-interface {v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->getRealCallback()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final getAborted()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->aborted:Z

    return v0
.end method

.method public final getContentLength()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->contentLength:I

    return v0
.end method

.method public final getDispatched()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatched:Z

    return v0
.end method

.method public final getDownloadedByte()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->downloadedByte:I

    return v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoader;->getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    return v0
.end method

.method public final getWritingFile()Ljava/io/File;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->writingFile:Ljava/io/File;

    return-object v0
.end method

.method public final removeCallbackByTag(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 110
    invoke-interface {v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 111
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 117
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public run()V
    .locals 8

    .line 122
    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->aborted:Z

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest;->applyCache()Z

    move-result v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getCache()Lcom/narvii/util/fileloader/INVFileCache;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 128
    iget-object v5, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    iget-object v6, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    invoke-virtual {v5, v6}, Lcom/narvii/util/fileloader/FileLoader;->getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/narvii/util/fileloader/INVFileCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 129
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    cmp-long v0, v5, v1

    if-lez v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    iget-object v5, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v0, v5}, Lcom/narvii/util/fileloader/FileLoader;->validateCacheFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 131
    iput v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 132
    invoke-direct {p0, v6}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V

    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_1

    .line 130
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    .line 143
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader;->access$getSessionMap$p(Lcom/narvii/util/fileloader/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader;->access$getDownloader$p(Lcom/narvii/util/fileloader/FileLoader;)Lcom/narvii/util/fileloader/FileDownloader;

    move-result-object v0

    iget-object v5, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {v5}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getCallbackWrapper()Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;

    move-result-object v6

    iget-object v7, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {v7}, Lcom/narvii/util/fileloader/FileLoader;->dispatchToMainThread()Z

    move-result v7

    invoke-virtual {v0, p0, v5, v6, v7}, Lcom/narvii/util/fileloader/FileDownloader;->execute(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;Lcom/narvii/util/fileloader/IFileDownloadCallback;Z)V

    .line 148
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest;->applyZipExtract()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 149
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    :cond_5
    cmp-long v0, v3, v1

    if-gtz v0, :cond_6

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 152
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V

    return-void

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->extract(Ljava/io/File;)V

    :cond_7
    return-void
.end method

.method public final setAborted(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->aborted:Z

    return-void
.end method

.method public final setContentLength(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->contentLength:I

    return-void
.end method

.method public final setDispatched(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatched:Z

    return-void
.end method

.method public final setDownloadedByte(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->downloadedByte:I

    return-void
.end method

.method public final setFile(Ljava/io/File;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    return-void
.end method

.method public final setWritingFile(Ljava/io/File;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->writingFile:Ljava/io/File;

    return-void
.end method
