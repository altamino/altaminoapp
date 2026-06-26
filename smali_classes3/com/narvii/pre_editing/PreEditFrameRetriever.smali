.class public final Lcom/narvii/pre_editing/PreEditFrameRetriever;
.super Ljava/lang/Object;
.source "PreEditFrameRetriever.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/PreEditFrameRetriever$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreEditFrameRetriever.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreEditFrameRetriever.kt\ncom/narvii/pre_editing/PreEditFrameRetriever\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n1313#2:60\n1382#2,3:61\n*E\n*S KotlinDebug\n*F\n+ 1 PreEditFrameRetriever.kt\ncom/narvii/pre_editing/PreEditFrameRetriever\n*L\n36#1:60\n36#1,3:61\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/pre_editing/PreEditFrameRetriever$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_READER_COUNT:I = 0x1


# instance fields
.field private active:Z

.field private final frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

.field private readerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/pre_editing/frame/VideoFrameReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/PreEditFrameRetriever$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/PreEditFrameRetriever$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->Companion:Lcom/narvii/pre_editing/PreEditFrameRetriever$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const-string v1, "frame_retrieve"

    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->readerList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getReaderList$p(Lcom/narvii/pre_editing/PreEditFrameRetriever;)Ljava/util/List;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->readerList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setReaderList$p(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/util/List;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->readerList:Ljava/util/List;

    return-void
.end method

.method private final retrieveFrameInternal(Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;",
            ")V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1;-><init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final initRetriever(Ljava/lang/String;)V
    .locals 4

    const-string v0, "outputFolderPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v3, "frameRetrieveEx"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->active:Z

    .line 23
    iget-boolean v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->active:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_2

    .line 27
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/narvii/pre_editing/PreEditFrameRetriever$initRetriever$1;

    invoke-direct {v3, p0, p1}, Lcom/narvii/pre_editing/PreEditFrameRetriever$initRetriever$1;-><init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final releaseExecutor()V
    .locals 2

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->active:Z

    .line 42
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/narvii/pre_editing/PreEditFrameRetriever$releaseExecutor$1;

    invoke-direct {v1, p0}, Lcom/narvii/pre_editing/PreEditFrameRetriever$releaseExecutor$1;-><init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 47
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method public final retrieveFrame(JILcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-boolean v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->active:Z

    if-eqz v0, :cond_1

    int-to-long v0, p3

    .line 35
    div-long/2addr p1, v0

    const/4 v0, 0x0

    .line 36
    invoke-static {v0, p3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p3

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    int-to-long v1, v1

    mul-long v1, v1, p1

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p4}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->retrieveFrameInternal(Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V

    :cond_1
    return-void
.end method
