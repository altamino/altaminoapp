.class Lcom/narvii/widget/NVListView$3;
.super Landroid/database/DataSetObserver;
.source "NVListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastItem:Ljava/lang/Object;

.field lastPos:I

.field final synthetic this$0:Lcom/narvii/widget/NVListView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 8

    .line 785
    iget-object v0, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$500(Lcom/narvii/widget/NVListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$500(Lcom/narvii/widget/NVListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 786
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v2}, Lcom/narvii/widget/NVListView;->access$600(Lcom/narvii/widget/NVListView;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_2

    .line 788
    iget v2, p0, Lcom/narvii/widget/NVListView$3;->lastPos:I

    if-ge v2, v0, :cond_1

    .line 789
    iget-object v2, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v2}, Lcom/narvii/widget/NVListView;->access$500(Lcom/narvii/widget/NVListView;)Landroid/widget/ListAdapter;

    move-result-object v2

    iget v5, p0, Lcom/narvii/widget/NVListView$3;->lastPos:I

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 791
    :goto_1
    iget-object v5, p0, Lcom/narvii/widget/NVListView$3;->lastItem:Ljava/lang/Object;

    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v5, v6, :cond_2

    if-eq v5, v2, :cond_2

    .line 792
    iget-object v2, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v2, v3}, Lcom/narvii/widget/NVListView;->access$702(Lcom/narvii/widget/NVListView;Z)Z

    .line 793
    iget-object v2, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v2, v1}, Lcom/narvii/widget/NVListView;->access$802(Lcom/narvii/widget/NVListView;Z)Z

    .line 794
    iget-object v2, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setScrollY(I)V

    .line 795
    invoke-static {}, Lcom/narvii/widget/NVListView;->access$1000()Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v5}, Lcom/narvii/widget/NVListView;->access$900(Lcom/narvii/widget/NVListView;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    if-lez v0, :cond_3

    .line 799
    iget-object v1, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v1}, Lcom/narvii/widget/NVListView;->access$500(Lcom/narvii/widget/NVListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/NVListView$3;->lastItem:Ljava/lang/Object;

    .line 800
    iput v0, p0, Lcom/narvii/widget/NVListView$3;->lastPos:I

    goto :goto_2

    .line 802
    :cond_3
    iput-object v4, p0, Lcom/narvii/widget/NVListView$3;->lastItem:Ljava/lang/Object;

    .line 803
    iput v1, p0, Lcom/narvii/widget/NVListView$3;->lastPos:I

    :goto_2
    return-void
.end method
