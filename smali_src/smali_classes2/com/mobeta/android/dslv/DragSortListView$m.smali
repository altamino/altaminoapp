.class Lcom/mobeta/android/dslv/DragSortListView$m;
.super Lcom/mobeta/android/dslv/DragSortListView$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView$o;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    .line 6
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->c(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    .line 9
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->mInitDragDeltaY:F

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->k(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    .line 18
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->mFinalDragDeltaY:F

    .line 19
    return-void
.end method

.method public d(FF)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/mobeta/android/dslv/DragSortListView;->e(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x4

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$o;->a()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 16
    .line 17
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->mFinalDragDeltaY:F

    .line 18
    mul-float/2addr v0, p2

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    sub-float/2addr v1, p2

    .line 22
    .line 23
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->mInitDragDeltaY:F

    .line 24
    mul-float/2addr v1, p2

    .line 25
    add-float/2addr v0, v1

    .line 26
    float-to-int p2, v0

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->v(Lcom/mobeta/android/dslv/DragSortListView;I)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/mobeta/android/dslv/DragSortListView;->h(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/mobeta/android/dslv/DragSortListView;->t(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 41
    move-result p2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->c(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 47
    move-result v0

    .line 48
    sub-int/2addr p2, v0

    .line 49
    .line 50
    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 51
    .line 52
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$m;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 53
    const/4 p2, 0x1

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->z(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    .line 57
    :goto_0
    return-void
.end method
