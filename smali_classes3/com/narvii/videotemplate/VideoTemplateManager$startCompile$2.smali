.class final Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;
.super Ljava/lang/Object;
.source "VideoTemplateManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/videotemplate/VideoTemplateManager;->startCompile(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoTemplateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoTemplateManager.kt\ncom/narvii/videotemplate/VideoTemplateManager$startCompile$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,367:1\n1313#2:368\n1382#2,3:369\n1313#2:372\n1382#2,3:373\n37#3,2:376\n37#3,2:378\n*E\n*S KotlinDebug\n*F\n+ 1 VideoTemplateManager.kt\ncom/narvii/videotemplate/VideoTemplateManager$startCompile$2\n*L\n160#1:368\n160#1,3:369\n161#1:372\n161#1,3:373\n184#1,2:376\n184#1,2:378\n*E\n"
.end annotation


# instance fields
.field final synthetic $inputMediaList:Ljava/util/List;

.field final synthetic this$0:Lcom/narvii/videotemplate/VideoTemplateManager;


# direct methods
.method constructor <init>(Lcom/narvii/videotemplate/VideoTemplateManager;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    iput-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;->$inputMediaList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 160
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;->$inputMediaList:Ljava/util/List;

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "photo.getPath(it.first.url)"

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 370
    check-cast v3, Lkotlin/Pair;

    .line 160
    iget-object v5, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v5}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getPhoto$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/photos/PhotoManager;

    move-result-object v5

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;->$inputMediaList:Ljava/util/List;

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 373
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 374
    check-cast v2, Lkotlin/Pair;

    .line 162
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 165
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/Media;

    invoke-virtual {v7}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_1

    const/4 v5, 0x3

    goto :goto_3

    .line 166
    :cond_1
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/Media;

    invoke-virtual {v7}, Lcom/narvii/model/Media;->isImage()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v7}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getPhoto$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/photos/PhotoManager;

    move-result-object v7

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getImageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v9, 0x18fc4

    if-eq v7, v9, :cond_5

    const v9, 0x19be1

    if-eq v7, v9, :cond_4

    const v9, 0x1b229

    if-eq v7, v9, :cond_3

    goto :goto_2

    :cond_3
    const-string v7, "png"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_4
    const-string v5, "jpg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const-string v5, "gif"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v5, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, -0x1

    .line 163
    :goto_3
    iput v5, v6, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->inputType:I

    .line 174
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    new-array v0, v5, [Ljava/lang/String;

    .line 377
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz v0, :cond_9

    check-cast v0, [Ljava/lang/String;

    new-array v2, v5, [Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 379
    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, [Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 184
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v3}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/Template;

    move-result-object v3

    iget v3, v3, Lcom/narvii/videotemplate/Template;->outputFrameCount:I

    iget-object v4, p0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v4}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/Template;

    move-result-object v4

    iget v4, v4, Lcom/narvii/videotemplate/Template;->fps:I

    invoke-static {v0, v2, v1, v3, v4}, Lcom/narvii/videotemplate/VideoTemplateJni;->start([Ljava/lang/String;[Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;Ljava/lang/String;II)V

    return-void

    .line 379
    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
