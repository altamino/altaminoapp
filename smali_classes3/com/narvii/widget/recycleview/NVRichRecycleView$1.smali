.class Lcom/narvii/widget/recycleview/NVRichRecycleView$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "NVRichRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/recycleview/NVRichRecycleView;->setRecyclerViewAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/recycleview/NVRichRecycleView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/recycleview/NVRichRecycleView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView$1;->this$0:Lcom/narvii/widget/recycleview/NVRichRecycleView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 131
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    const-string v0, "RichRecycleView"

    const-string v1, "on change"

    .line 132
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView$1;->this$0:Lcom/narvii/widget/recycleview/NVRichRecycleView;

    invoke-static {v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->access$000(Lcom/narvii/widget/recycleview/NVRichRecycleView;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 103
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item range change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RichRecycleView"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView$1;->this$0:Lcom/narvii/widget/recycleview/NVRichRecycleView;

    invoke-static {p1}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->access$000(Lcom/narvii/widget/recycleview/NVRichRecycleView;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 110
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemRangeInserted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RichRecycleView"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView$1;->this$0:Lcom/narvii/widget/recycleview/NVRichRecycleView;

    invoke-static {p1}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->access$000(Lcom/narvii/widget/recycleview/NVRichRecycleView;)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemRangeMoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RichRecycleView"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView$1;->this$0:Lcom/narvii/widget/recycleview/NVRichRecycleView;

    invoke-static {p1}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->access$000(Lcom/narvii/widget/recycleview/NVRichRecycleView;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 117
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemRangeRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RichRecycleView"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView$1;->this$0:Lcom/narvii/widget/recycleview/NVRichRecycleView;

    invoke-static {p1}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->access$000(Lcom/narvii/widget/recycleview/NVRichRecycleView;)V

    return-void
.end method
