.class final Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 999
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v1, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    iget-object v2, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$videoClipList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$audioClipList:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;

    invoke-direct {v4, p0}, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;-><init>(Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList$default(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;ZLcom/narvii/util/Callback;ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.video.model.AVClipInfoPack> /* = java.util.ArrayList<com.narvii.video.model.AVClipInfoPack> */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
