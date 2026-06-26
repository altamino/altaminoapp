.class final Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ClipFastSwitchingPanel.kt"

# interfaces
.implements Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/ClipFastSwitchingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchingPanelAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;",
        ">;",
        "Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;"
    }
.end annotation


# instance fields
.field private final clipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;


# direct methods
.method public constructor <init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clipList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 151
    check-cast p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->onBindViewHolder(Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "clipList[position]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->setData(Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$layout;->item_clip_fast_switching_panel:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 167
    new-instance p2, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const-string v1, "itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemMoved(II)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$setHasClipListReordered$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Z)V

    .line 154
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {v0, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$setSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 157
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {v0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$setSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;I)V

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    iput p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 160
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    iput p1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 161
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 162
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method
