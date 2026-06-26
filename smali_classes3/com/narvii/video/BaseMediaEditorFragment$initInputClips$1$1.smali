.class final Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;
.super Ljava/lang/Object;
.source "BaseMediaEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $validAudioClipList:Ljava/util/ArrayList;

.field final synthetic $validPipClipList:Ljava/util/ArrayList;

.field final synthetic $validVideoClipList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iput-object p2, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->$validVideoClipList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->$validAudioClipList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->$validPipClipList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 270
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->$validVideoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->$validVideoClipList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 275
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->$validAudioClipList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetAudioClipList(Ljava/util/List;)V

    .line 276
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v1, v1, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->$captionList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    .line 277
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v1, v1, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->$stickerList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    .line 278
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->$validPipClipList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    .line 279
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->onAVClipsPrepared()V

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
