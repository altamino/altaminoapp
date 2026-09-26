.class Lcom/mobeta/android/dslv/DragSortListView$c$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobeta/android/dslv/DragSortListView$c;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobeta/android/dslv/DragSortListView$c;

.field final synthetic val$this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/DragSortListView$c;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$c$a;->this$1:Lcom/mobeta/android/dslv/DragSortListView$c;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView$c$a;->val$this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c$a;->this$1:Lcom/mobeta/android/dslv/DragSortListView$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c$a;->this$1:Lcom/mobeta/android/dslv/DragSortListView$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 6
    return-void
.end method
