.class final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;
.super Ljava/lang/Object;
.source "SceneTemplateGeneratorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateGeneratorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,914:1\n1587#2,2:915\n*E\n*S KotlinDebug\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2\n*L\n574#1,2:915\n*E\n"
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;->$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    const-string v2, "videoManager"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/services/VideoManager;

    .line 573
    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/photos/PhotoManager;

    .line 574
    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;->$list:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 915
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    .line 575
    invoke-virtual {v4}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 576
    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "photoManager.getPath(it.url)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "photoManager.getPath(it.url).absolutePath"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object v4

    .line 577
    invoke-virtual {v4}, Lcom/narvii/video/model/StreamInfo;->isVCodecInWhiteList()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/narvii/video/model/StreamInfo;->isResolutionValid()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 582
    :cond_2
    new-instance v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2$2;

    invoke-direct {v1, p0, v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2$2;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$onPickMediaResult$2;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
