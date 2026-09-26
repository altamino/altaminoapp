.class Lcom/narvii/widget/NVListView$3;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->a(Lcom/narvii/widget/NVListView;)Landroid/widget/ListAdapter;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->a(Lcom/narvii/widget/NVListView;)Landroid/widget/ListAdapter;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 21
    move-result v0

    .line 22
    .line 23
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lcom/narvii/widget/NVListView;->c(Lcom/narvii/widget/NVListView;)I

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    if-lez v2, :cond_2

    .line 32
    .line 33
    iget v2, p0, Lcom/narvii/widget/NVListView$3;->lastPos:I

    .line 34
    .line 35
    if-ge v2, v0, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/narvii/widget/NVListView;->a(Lcom/narvii/widget/NVListView;)Landroid/widget/ListAdapter;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    iget v5, p0, Lcom/narvii/widget/NVListView$3;->lastPos:I

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v5}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v2, v4

    .line 50
    .line 51
    :goto_1
    iget-object v5, p0, Lcom/narvii/widget/NVListView$3;->lastItem:Ljava/lang/Object;

    .line 52
    .line 53
    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 54
    .line 55
    if-ne v5, v6, :cond_2

    .line 56
    .line 57
    if-eq v5, v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v3}, Lcom/narvii/widget/NVListView;->i(Lcom/narvii/widget/NVListView;Z)V

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v1}, Lcom/narvii/widget/NVListView;->j(Lcom/narvii/widget/NVListView;Z)V

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Landroid/view/View;->setScrollY(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/narvii/widget/NVListView;->m()Landroid/os/Handler;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    iget-object v5, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    .line 79
    .line 80
    .line 81
    invoke-static {v5}, Lcom/narvii/widget/NVListView;->e(Lcom/narvii/widget/NVListView;)Ljava/lang/Runnable;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    const-wide/16 v6, 0xc8

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    .line 89
    :cond_2
    if-lez v0, :cond_3

    .line 90
    .line 91
    iget-object v1, p0, Lcom/narvii/widget/NVListView$3;->this$0:Lcom/narvii/widget/NVListView;

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Lcom/narvii/widget/NVListView;->a(Lcom/narvii/widget/NVListView;)Landroid/widget/ListAdapter;

    .line 95
    move-result-object v1

    .line 96
    sub-int/2addr v0, v3

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    iput-object v1, p0, Lcom/narvii/widget/NVListView$3;->lastItem:Ljava/lang/Object;

    .line 103
    .line 104
    iput v0, p0, Lcom/narvii/widget/NVListView$3;->lastPos:I

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_3
    iput-object v4, p0, Lcom/narvii/widget/NVListView$3;->lastItem:Ljava/lang/Object;

    .line 108
    .line 109
    iput v1, p0, Lcom/narvii/widget/NVListView$3;->lastPos:I

    .line 110
    :goto_2
    return-void
.end method
