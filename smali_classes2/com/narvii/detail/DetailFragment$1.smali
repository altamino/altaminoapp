.class Lcom/narvii/detail/DetailFragment$1;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/DetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:I

.field final synthetic this$0:Lcom/narvii/detail/DetailFragment;

.field final synthetic val$firstId:J

.field final synthetic val$firstPos:I

.field final synthetic val$firstY:I


# direct methods
.method constructor <init>(Lcom/narvii/detail/DetailFragment;IJI)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    iput p2, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstPos:I

    iput-wide p3, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstId:J

    iput p5, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 122
    iput p1, p0, Lcom/narvii/detail/DetailFragment$1;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    .line 127
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstPos:I

    iget-object v1, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    .line 128
    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstId:J

    iget-object v2, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    .line 129
    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget v3, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstPos:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 130
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstPos:I

    iget v2, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstY:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 131
    :cond_0
    iget v0, p0, Lcom/narvii/detail/DetailFragment$1;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/detail/DetailFragment$1;->c:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    const-wide/16 v0, 0x1e

    .line 132
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
