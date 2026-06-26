.class final Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StoryDownloadHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryDownloadHelper;->downloadStoryInternal(Lcom/narvii/model/User;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryDownloadHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryDownloadHelper.kt\ncom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,296:1\n1596#2,3:297\n*E\n*S KotlinDebug\n*F\n+ 1 StoryDownloadHelper.kt\ncom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2\n*L\n128#1,3:297\n*E\n"
.end annotation


# instance fields
.field final synthetic $author:Lcom/narvii/model/User;

.field final synthetic $medias:Ljava/util/List;

.field final synthetic $ndcId:I

.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryDownloadHelper;Ljava/util/List;Lcom/narvii/model/User;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    iput-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$medias:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$author:Lcom/narvii/model/User;

    iput p4, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$ndcId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 18

    move-object/from16 v7, p0

    .line 123
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    iget-object v0, v7, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$medias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 124
    iget-object v0, v7, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$medias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const-string v3, ""

    aput-object v3, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, v7, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$medias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v10, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :cond_1
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v1, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 128
    iget-object v0, v7, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$medias:Ljava/util/List;

    .line 298
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v13, v1, 0x1

    if-ltz v1, :cond_2

    check-cast v0, Lkotlin/Pair;

    .line 129
    iget-object v2, v7, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-static {v2}, Lcom/narvii/story/StoryDownloadHelper;->access$getStoryLoader$p(Lcom/narvii/story/StoryDownloadHelper;)Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;

    move-result-object v14

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getHighResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "Utils.getHighResVideoUrl(pair.second.url)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;

    move-object v0, v5

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v4, v9

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v5, v8

    move-object/from16 v17, v12

    move-object v12, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;-><init>(ILcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;[Ljava/lang/Integer;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v14, v15, v12, v10}, Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;->loadSceneFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    move v1, v13

    move-object/from16 v10, v16

    move-object/from16 v12, v17

    goto :goto_2

    .line 298
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    throw v2

    .line 153
    :cond_3
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 154
    iget-boolean v0, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-static {v0, v3, v2, v1, v2}, Lcom/narvii/story/StoryDownloadHelper;->showResult$default(Lcom/narvii/story/StoryDownloadHelper;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 156
    :cond_4
    iget-object v0, v7, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-static {v0, v9}, Lcom/narvii/story/StoryDownloadHelper;->access$createConcatFile(Lcom/narvii/story/StoryDownloadHelper;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 158
    iget-boolean v4, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v4, :cond_5

    iget-object v0, v7, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-static {v0, v3, v2, v1, v2}, Lcom/narvii/story/StoryDownloadHelper;->showResult$default(Lcom/narvii/story/StoryDownloadHelper;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 160
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-static {v2}, Lcom/narvii/story/StoryDownloadHelper;->access$getFilePath$p(Lcom/narvii/story/StoryDownloadHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, v7, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-static {v2}, Lcom/narvii/story/StoryDownloadHelper;->access$getVideoManager$p(Lcom/narvii/story/StoryDownloadHelper;)Lcom/narvii/video/services/VideoManager;

    move-result-object v2

    new-instance v3, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v3}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    iput-object v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;

    invoke-direct {v1, v7, v9, v0}, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$3;-><init>(Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v1}, Lcom/narvii/video/services/VideoManager;->concatVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;

    return-void
.end method
