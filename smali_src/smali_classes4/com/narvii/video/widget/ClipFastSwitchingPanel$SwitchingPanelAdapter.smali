.class final Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

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
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;


# direct methods
.method public constructor <init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Lcom/narvii/video/widget/ClipFastSwitchingPanel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "clipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    .line 13
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->onBindViewHolder(Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;I)V
    .locals 1
    .param p1    # Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "get(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->setData(Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, p1, v0}, Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-direct {p2, v0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;)V

    return-object p2
.end method

.method public onItemMoved(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$setHasClipListReordered$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-ne v0, p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$setSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;I)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-ne v0, p2, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$setSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;I)V

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 42
    .line 43
    iput p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 52
    .line 53
    iput p1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->clipList:Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 62
    return-void
.end method
