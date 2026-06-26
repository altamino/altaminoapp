.class public final Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;
.super Ljava/lang/Object;
.source "StoryDownloadHelper.kt"

# interfaces
.implements Lcom/narvii/util/fileloader/IFileDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryDownloadHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryDownloadHelper.kt\ncom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$1$1\n*L\n1#1,296:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $hasError$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $index:I

.field final synthetic $latch$inlined:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $progress$inlined:[Ljava/lang/Integer;

.field final synthetic $results$inlined:[Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;


# direct methods
.method constructor <init>(ILcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;[Ljava/lang/Integer;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$index:I

    iput-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;

    iput-object p3, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$progress$inlined:[Ljava/lang/Integer;

    iput-object p4, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$results$inlined:[Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$latch$inlined:Ljava/util/concurrent/CountDownLatch;

    iput-object p6, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$hasError$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1

    .line 129
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getRealCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 129
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getTag(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string p2, "url"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$hasError$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 145
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;

    iget-object p1, p1, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {p1}, Lcom/narvii/story/StoryDownloadHelper;->cancel()V

    .line 146
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$latch$inlined:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    long-to-int p2, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 148
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$latch$inlined:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$results$inlined:[Ljava/lang/String;

    iget v1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$index:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "file.absolutePath"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v0, v1

    .line 137
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$progress$inlined:[Ljava/lang/Integer;

    iget v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$index:I

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 138
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$latch$inlined:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 139
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$progress$inlined:[Ljava/lang/Integer;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->sumOfInt([Ljava/lang/Integer;)I

    move-result p1

    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;

    iget-object v0, v0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$medias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr p1, v0

    .line 140
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;

    iget-object v0, v0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {v0}, Lcom/narvii/story/StoryDownloadHelper;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/scene/view/ProgressRingDialog;->updateProgress(I)V

    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$progress$inlined:[Ljava/lang/Integer;

    iget v1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$index:I

    mul-int/lit8 p1, p1, 0x14

    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 132
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;

    iget-object p1, p1, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {p1}, Lcom/narvii/story/StoryDownloadHelper;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->$progress$inlined:[Ljava/lang/Integer;

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->sumOfInt([Ljava/lang/Integer;)I

    move-result p2

    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2$$special$$inlined$forEachIndexed$lambda$1;->this$0:Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;

    iget-object v0, v0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$2;->$medias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/narvii/scene/view/ProgressRingDialog;->updateProgress(I)V

    return-void
.end method
