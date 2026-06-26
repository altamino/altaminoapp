.class final Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;
.super Ljava/lang/Object;
.source "PipEditorFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pip/PipEditorFragment;->onPickerResult(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PipEditorFragment.kt\ncom/narvii/pip/PipEditorFragment$onPickerResult$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,594:1\n1587#2,2:595\n*E\n*S KotlinDebug\n*F\n+ 1 PipEditorFragment.kt\ncom/narvii/pip/PipEditorFragment$onPickerResult$1\n*L\n512#1,2:595\n*E\n"
.end annotation


# instance fields
.field final synthetic $avClipInfoPack:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic this$0:Lcom/narvii/pip/PipEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    iput-object p2, p0, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;->$avClipInfoPack:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x1

    .line 503
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 504
    new-instance p1, Lcom/narvii/pip/PipInfoPack;

    invoke-direct {p1}, Lcom/narvii/pip/PipInfoPack;-><init>()V

    .line 505
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;->$avClipInfoPack:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    iput-object v1, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 506
    iget-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    iput-object v1, p1, Lcom/narvii/pip/PipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 507
    iget v1, p1, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 508
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0}, Lcom/narvii/pip/PipEditorFragment;->access$getMainTrackPlaybackTime(Lcom/narvii/pip/PipEditorFragment;)I

    move-result v0

    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 509
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;->$avClipInfoPack:Lcom/narvii/video/model/AVClipInfoPack;

    iget v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    iput v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 510
    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    const/4 v0, 0x0

    .line 512
    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v1}, Lcom/narvii/pip/PipEditorFragment;->access$getVideoInputClipList(Lcom/narvii/pip/PipEditorFragment;)Ljava/util/ArrayList;

    move-result-object v1

    .line 595
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 513
    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 515
    :cond_0
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    if-ge v1, v0, :cond_1

    iget v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_1

    sub-int/2addr v0, v1

    .line 516
    iget v1, p1, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0, p1}, Lcom/narvii/pip/PipEditorFragment;->access$addPipVideos(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V

    .line 519
    iget-object p1, p0, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {p1}, Lcom/narvii/pip/PipEditorFragment;->access$updatePipVideoTimeLine(Lcom/narvii/pip/PipEditorFragment;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
