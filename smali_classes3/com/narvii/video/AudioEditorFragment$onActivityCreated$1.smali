.class final Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;
.super Ljava/lang/Object;
.source "AudioEditorFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/AudioEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioEditorFragment.kt\ncom/narvii/video/AudioEditorFragment$onActivityCreated$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,326:1\n1313#2:327\n1382#2,3:328\n*E\n*S KotlinDebug\n*F\n+ 1 AudioEditorFragment.kt\ncom/narvii/video/AudioEditorFragment$onActivityCreated$1\n*L\n141#1:327\n141#1,3:328\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/AudioEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 130
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 131
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v2}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 133
    iget-object v4, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v4}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "previewPlayer.getAudioClipInfoList()[index]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 134
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v5

    iget v6, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    add-int/2addr v5, v6

    if-le v5, v0, :cond_1

    .line 135
    iget v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v6

    iget v7, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v2, "clipInfoList"

    .line 139
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isVideoTrimming"

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 329
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 141
    iget v2, v2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoVolumeList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 143
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
