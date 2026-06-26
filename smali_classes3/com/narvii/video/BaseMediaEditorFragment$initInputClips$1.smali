.class final Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;
.super Ljava/lang/Object;
.source "BaseMediaEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment;->initInputClips()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $audioClipList:Ljava/util/ArrayList;

.field final synthetic $captionList:Ljava/util/ArrayList;

.field final synthetic $stickerList:Ljava/util/ArrayList;

.field final synthetic $videoClipList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->$videoClipList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->$audioClipList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->$captionList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->$stickerList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->$videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "clip"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 253
    iget-object v4, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipSync(Lcom/narvii/video/model/AVClipInfoPack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    iget-object v2, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->$audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 259
    iget-object v5, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipSync(Lcom/narvii/video/model/AVClipInfoPack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iget-object v4, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v4}, Lcom/narvii/video/BaseMediaEditorFragment;->getPipClipList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/pip/PipInfoPack;

    .line 265
    iget-object v6, p0, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/narvii/video/BaseMediaEditorFragment;->preparePipClipSync(Lcom/narvii/pip/PipInfoPack;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 266
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 269
    :cond_5
    new-instance v3, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1$1;-><init>(Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
