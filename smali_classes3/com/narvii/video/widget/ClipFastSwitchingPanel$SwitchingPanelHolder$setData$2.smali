.class final Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;
.super Ljava/lang/Object;
.source "ClipFastSwitchingPanel.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->setData(Lcom/narvii/video/model/AVClipInfoPack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $clip:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iput-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iget-object v0, v0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iget-object p1, p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getEventCallback$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-interface {p1, v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onClipSwitched(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iget-object p1, p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_list:I

    invoke-virtual {p1, v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    const-string v0, "clip_list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iget-object v0, v0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 144
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 145
    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iget-object p1, p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-static {p1, v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$setSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;I)V

    .line 146
    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iget-object p1, p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {p1, v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$updateOptionPanel(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void
.end method
