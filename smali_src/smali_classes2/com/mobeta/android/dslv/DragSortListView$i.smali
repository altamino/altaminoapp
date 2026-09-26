.class Lcom/mobeta/android/dslv/DragSortListView$i;
.super Lcom/mobeta/android/dslv/DragSortListView$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView$o;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    .line 6
    return-void
.end method

.method private g()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->m(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    .line 21
    div-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 24
    .line 25
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->mDropPos:I

    .line 26
    sub-int/2addr v3, v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->mDropPos:I

    .line 35
    .line 36
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->srcPos:I

    .line 37
    .line 38
    if-ne v2, v3, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 42
    move-result v0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_0
    if-ge v2, v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 49
    move-result v0

    .line 50
    :goto_0
    sub-int/2addr v0, v1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 55
    move-result v0

    .line 56
    add-int/2addr v0, v1

    .line 57
    .line 58
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->j(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 62
    move-result v1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$o;->a()V

    .line 67
    const/4 v0, -0x1

    .line 68
    :goto_1
    return v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->i(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->mDropPos:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->r(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->srcPos:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->w(Lcom/mobeta/android/dslv/DragSortListView;I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->h(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView$i;->g()I

    .line 34
    move-result v1

    .line 35
    sub-int/2addr v0, v1

    .line 36
    int-to-float v0, v0

    .line 37
    .line 38
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->mInitDeltaY:F

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->h(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 47
    .line 48
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 52
    move-result v1

    .line 53
    sub-int/2addr v0, v1

    .line 54
    int-to-float v0, v0

    .line 55
    .line 56
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->mInitDeltaX:F

    .line 57
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->A(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 6
    return-void
.end method

.method public d(FF)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView$i;->g()I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->h(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 19
    sub-int/2addr v1, p1

    .line 20
    int-to-float v1, v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortListView;->h(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 29
    sub-int/2addr v2, v0

    .line 30
    int-to-float v0, v2

    .line 31
    .line 32
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    sub-float/2addr v2, p2

    .line 34
    .line 35
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->mInitDeltaY:F

    .line 36
    div-float/2addr v1, p2

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 40
    move-result p2

    .line 41
    .line 42
    cmpg-float p2, v2, p2

    .line 43
    .line 44
    if-ltz p2, :cond_0

    .line 45
    .line 46
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->mInitDeltaX:F

    .line 47
    div-float/2addr v0, p2

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 51
    move-result p2

    .line 52
    .line 53
    cmpg-float p2, v2, p2

    .line 54
    .line 55
    if-gez p2, :cond_1

    .line 56
    .line 57
    :cond_0
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Lcom/mobeta/android/dslv/DragSortListView;->h(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->mInitDeltaY:F

    .line 64
    mul-float/2addr v0, v2

    .line 65
    float-to-int v0, v0

    .line 66
    add-int/2addr p1, v0

    .line 67
    .line 68
    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 69
    .line 70
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/mobeta/android/dslv/DragSortListView;->h(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 80
    move-result p2

    .line 81
    .line 82
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->mInitDeltaX:F

    .line 83
    mul-float/2addr v0, v2

    .line 84
    float-to-int v0, v0

    .line 85
    add-int/2addr p2, v0

    .line 86
    .line 87
    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 88
    .line 89
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$i;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 90
    const/4 p2, 0x1

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->z(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    .line 94
    :cond_1
    return-void
.end method
