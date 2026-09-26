.class Lcom/mobeta/android/dslv/DragSortListView$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o"
.end annotation


# instance fields
.field private mA:F

.field private mAlpha:F

.field private mB:F

.field private mC:F

.field private mCanceled:Z

.field private mD:F

.field private mDurationF:F

.field protected mStartTime:J

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mAlpha:F

    .line 8
    int-to-float p1, p3

    .line 9
    .line 10
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mDurationF:F

    .line 11
    .line 12
    const/high16 p1, 0x40000000    # 2.0f

    .line 13
    .line 14
    mul-float p3, p2, p1

    .line 15
    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    sub-float v1, v0, p2

    .line 19
    mul-float/2addr p3, v1

    .line 20
    .line 21
    div-float p3, v0, p3

    .line 22
    .line 23
    iput p3, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mD:F

    .line 24
    .line 25
    iput p3, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mA:F

    .line 26
    .line 27
    sub-float p3, p2, v0

    .line 28
    mul-float/2addr p3, p1

    .line 29
    .line 30
    div-float p1, p2, p3

    .line 31
    .line 32
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mB:F

    .line 33
    .line 34
    sub-float p1, v0, p2

    .line 35
    div-float/2addr v0, p1

    .line 36
    .line 37
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mC:F

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mCanceled:Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d(FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mStartTime:J

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mCanceled:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$o;->b()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void
.end method

.method public f(F)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mAlpha:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mA:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mB:F

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mC:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mD:F

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v1, v0

    return v1
.end method

.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mCanceled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    iget-wide v2, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mStartTime:J

    .line 12
    sub-long/2addr v0, v2

    .line 13
    long-to-float v0, v0

    .line 14
    .line 15
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->mDurationF:F

    .line 16
    div-float/2addr v0, v1

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    cmpl-float v2, v0, v1

    .line 21
    .line 22
    if-ltz v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1, v1}, Lcom/mobeta/android/dslv/DragSortListView$o;->d(FF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$o;->c()V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView$o;->f(F)F

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$o;->d(FF)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$o;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 42
    :goto_0
    return-void
.end method
