.class Lcom/narvii/list/NVListFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/narvii/list/NVListFragment;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListFragment;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$10;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/list/NVListFragment$10;->val$pos:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/list/NVListFragment$10;->val$id:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/list/NVListFragment$10;->count:I

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$10;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$10;->this$0:Lcom/narvii/list/NVListFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$10;->this$0:Lcom/narvii/list/NVListFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/list/NVListFragment$10;->this$0:Lcom/narvii/list/NVListFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 33
    move-result v2

    .line 34
    .line 35
    iget v3, p0, Lcom/narvii/list/NVListFragment$10;->val$pos:I

    .line 36
    .line 37
    if-gt v2, v3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 41
    move-result v2

    .line 42
    .line 43
    iget v3, p0, Lcom/narvii/list/NVListFragment$10;->val$pos:I

    .line 44
    .line 45
    if-lt v2, v3, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 49
    move-result v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 53
    move-result v3

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x0

    .line 59
    .line 60
    :goto_0
    if-ge v5, v3, :cond_3

    .line 61
    .line 62
    add-int v6, v5, v2

    .line 63
    .line 64
    if-ge v6, v4, :cond_3

    .line 65
    .line 66
    if-ltz v2, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, v6}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    instance-of v8, v7, Lcom/narvii/model/NVObject;

    .line 73
    .line 74
    if-eqz v8, :cond_1

    .line 75
    .line 76
    check-cast v7, Lcom/narvii/model/NVObject;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 80
    move-result-object v7

    .line 81
    .line 82
    iget-object v8, p0, Lcom/narvii/list/NVListFragment$10;->val$id:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-static {v7, v8}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    move-result v7

    .line 87
    .line 88
    if-eqz v7, :cond_1

    .line 89
    .line 90
    instance-of v7, v0, Lcom/narvii/widget/NVListView;

    .line 91
    .line 92
    if-eqz v7, :cond_1

    .line 93
    move-object v7, v0

    .line 94
    .line 95
    check-cast v7, Lcom/narvii/widget/NVListView;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v6}, Lcom/narvii/widget/NVListView;->startBlinkLong(I)V

    .line 99
    .line 100
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_2
    iget v0, p0, Lcom/narvii/list/NVListFragment$10;->count:I

    .line 104
    .line 105
    add-int/lit8 v1, v0, 0x1

    .line 106
    .line 107
    iput v1, p0, Lcom/narvii/list/NVListFragment$10;->count:I

    .line 108
    .line 109
    const/16 v1, 0xf

    .line 110
    .line 111
    if-ge v0, v1, :cond_3

    .line 112
    .line 113
    const-wide/16 v0, 0x64

    .line 114
    .line 115
    .line 116
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 117
    :cond_3
    :goto_1
    return-void
.end method
