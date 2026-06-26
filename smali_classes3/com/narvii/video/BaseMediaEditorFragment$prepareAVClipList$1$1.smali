.class final Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1$1;
.super Ljava/lang/Object;
.source "BaseMediaEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $hasInvalidClip:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;

    iput-object p2, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1$1;->$hasInvalidClip:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1$1;->$hasInvalidClip:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;

    iget-object v1, v0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    iget-boolean v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->$forceExitWhenError:Z

    invoke-virtual {v1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->$callback:Lcom/narvii/util/Callback;

    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1$1;->$hasInvalidClip:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method
