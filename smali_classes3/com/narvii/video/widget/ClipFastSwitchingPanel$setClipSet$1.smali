.class final Lcom/narvii/video/widget/ClipFastSwitchingPanel$setClipSet$1;
.super Ljava/lang/Object;
.source "ClipFastSwitchingPanel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/ClipFastSwitchingPanel;->setClipSet(Ljava/util/ArrayList;ILcom/narvii/video/services/FrameRetrieverManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $clipSet:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$setClipSet$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    iput-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$setClipSet$1;->$clipSet:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$setClipSet$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    iget-object v1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$setClipSet$1;->$clipSet:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "clipSet[this.selectedClipIndex]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$updateOptionPanel(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 109
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$setClipSet$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    sget v1, Lcom/narvii/mediaeditor/R$id;->clip_list:I

    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$setClipSet$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
