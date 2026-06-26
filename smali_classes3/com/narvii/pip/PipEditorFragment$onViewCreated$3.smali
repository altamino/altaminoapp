.class final Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "PipEditorFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pip/PipEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PipEditorFragment.kt\ncom/narvii/pip/PipEditorFragment$onViewCreated$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,594:1\n1587#2,2:595\n*E\n*S KotlinDebug\n*F\n+ 1 PipEditorFragment.kt\ncom/narvii/pip/PipEditorFragment$onViewCreated$3\n*L\n92#1,2:595\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pip/PipEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/pip/PipEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 90
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0}, Lcom/narvii/pip/PipEditorFragment;->access$getVideoInputClipList(Lcom/narvii/pip/PipEditorFragment;)Ljava/util/ArrayList;

    move-result-object v0

    .line 595
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 93
    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0}, Lcom/narvii/pip/PipEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/pip/PipEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0}, Lcom/narvii/pip/PipEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/pip/PipEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v2}, Lcom/narvii/pip/PipEditorFragment;->access$getCurrPipVideoIndex$p(Lcom/narvii/pip/PipEditorFragment;)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    if-le v0, v2, :cond_2

    .line 96
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0}, Lcom/narvii/pip/PipEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/pip/PipEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v2}, Lcom/narvii/pip/PipEditorFragment;->access$getCurrPipVideoIndex$p(Lcom/narvii/pip/PipEditorFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "previewPlayer.getPipVideoList()[currPipVideoIndex]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 97
    iget v2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    if-ge v2, v1, :cond_2

    iget v3, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v3, v2

    if-le v3, v1, :cond_2

    sub-int/2addr v1, v2

    .line 98
    iget v2, v0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 101
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0}, Lcom/narvii/pip/PipEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/pip/PipEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pipList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/pip/PipEditorFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 103
    iget-object p1, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
