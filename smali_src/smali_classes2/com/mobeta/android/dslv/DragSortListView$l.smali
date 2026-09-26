.class Lcom/mobeta/android/dslv/DragSortListView$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation


# instance fields
.field private mMap:Landroid/util/SparseIntArray;

.field private mMaxSize:I

.field private mOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Landroid/util/SparseIntArray;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mMap:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mOrder:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mMaxSize:I

    .line 22
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mMap:Landroid/util/SparseIntArray;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eq v0, p2, :cond_2

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mMap:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 17
    move-result v0

    .line 18
    .line 19
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mMaxSize:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mMap:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mOrder:Ljava/util/ArrayList;

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mOrder:Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mMap:Landroid/util/SparseIntArray;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    .line 56
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mOrder:Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mMap:Landroid/util/SparseIntArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mOrder:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    return-void
.end method

.method public c(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$l;->mMap:Landroid/util/SparseIntArray;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 7
    move-result p1

    .line 8
    return p1
.end method
