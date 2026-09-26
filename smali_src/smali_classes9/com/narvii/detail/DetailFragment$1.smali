.class Lcom/narvii/detail/DetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstPos:I

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstId:J

    .line 7
    .line 8
    iput p5, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstY:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/detail/DetailFragment$1;->c:I

    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    iget v0, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstPos:I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 44
    move-result v1

    .line 45
    .line 46
    if-ge v0, v1, :cond_0

    .line 47
    .line 48
    iget-wide v0, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstId:J

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    iget v3, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstPos:I

    .line 61
    .line 62
    .line 63
    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    .line 64
    move-result-wide v2

    .line 65
    .line 66
    cmp-long v0, v0, v2

    .line 67
    .line 68
    if-nez v0, :cond_0

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment$1;->this$0:Lcom/narvii/detail/DetailFragment;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iget v1, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstPos:I

    .line 77
    .line 78
    iget v2, p0, Lcom/narvii/detail/DetailFragment$1;->val$firstY:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_0
    iget v0, p0, Lcom/narvii/detail/DetailFragment$1;->c:I

    .line 85
    .line 86
    add-int/lit8 v1, v0, 0x1

    .line 87
    .line 88
    iput v1, p0, Lcom/narvii/detail/DetailFragment$1;->c:I

    .line 89
    .line 90
    const/16 v1, 0x14

    .line 91
    .line 92
    if-ge v0, v1, :cond_1

    .line 93
    .line 94
    const-wide/16 v0, 0x1e

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 98
    :cond_1
    :goto_0
    return-void
.end method
