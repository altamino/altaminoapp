.class Lcom/mobeta/android/dslv/DragSortListView$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobeta/android/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$b;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$b;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->e(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$b;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->K()V

    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$b;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->a(Lcom/mobeta/android/dslv/DragSortListView;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView$b;->a()V

    .line 12
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView$b;->a()V

    .line 4
    return-void
.end method
