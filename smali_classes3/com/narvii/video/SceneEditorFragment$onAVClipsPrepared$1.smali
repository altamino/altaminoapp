.class final Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment;->onAVClipsPrepared()V
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


# instance fields
.field final synthetic $audioClipList:Ljava/util/ArrayList;

.field final synthetic $captionList:Ljava/util/ArrayList;

.field final synthetic $pipList:Ljava/util/ArrayList;

.field final synthetic $stickerList:Ljava/util/ArrayList;

.field final synthetic $videoClipList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$videoClipList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$audioClipList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$captionList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$stickerList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$pipList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 3

    .line 990
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 991
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1, v2, v1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    return-void

    .line 994
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 995
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1, v2, v1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    return-void

    .line 998
    :cond_1
    new-instance p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;-><init>(Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
