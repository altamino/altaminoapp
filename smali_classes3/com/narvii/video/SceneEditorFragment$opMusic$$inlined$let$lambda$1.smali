.class final Lcom/narvii/video/SceneEditorFragment$opMusic$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment;->opMusic(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $audioClipList$inlined:Ljava/util/List;

.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$opMusic$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/SceneEditorFragment$opMusic$$inlined$let$lambda$1;->$audioClipList$inlined:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$opMusic$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setSubAudioEditing(Z)V

    return-void
.end method
