.class final Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;
.super Ljava/lang/Object;
.source "BaseMediaEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList(Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;

.field final synthetic $clipList:Ljava/util/ArrayList;

.field final synthetic $forceExitWhenError:Z

.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->$clipList:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->$forceExitWhenError:Z

    iput-object p4, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 288
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v2, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->$clipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 291
    iget-object v4, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const-string v5, "clip"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipSync(Lcom/narvii/video/model/AVClipInfoPack;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 292
    iput-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 293
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_1
    iget-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_2

    .line 297
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 298
    iget-object v3, p0, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;->$clipList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    :cond_2
    new-instance v1, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1$1;-><init>(Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
