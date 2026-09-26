.class Lcom/google/android/material/timepicker/ClockFaceView$b;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$b;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 4
    .line 5
    sget v0, Ld3/f;->material_value_index:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result v3

    .line 16
    .line 17
    if-lez v3, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$b;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->j(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    add-int/lit8 v1, v3, -0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->N0(Landroid/view/View;)V

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 42
    move-result v6

    .line 43
    .line 44
    .line 45
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->h0(Ljava/lang/Object;)V

    .line 50
    const/4 p1, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->f0(Z)V

    .line 54
    .line 55
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 59
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 10

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    .line 19
    const/high16 v2, 0x40000000    # 2.0f

    .line 20
    div-float/2addr v1, v2

    .line 21
    add-float/2addr v0, v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 29
    move-result p1

    .line 30
    int-to-float p1, p1

    .line 31
    div-float/2addr p1, v2

    .line 32
    add-float/2addr p1, v1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView$b;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/google/android/material/timepicker/ClockFaceView;->h(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    .line 38
    move-result-object v9

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    move-wide v1, p2

    .line 42
    move-wide v3, p2

    .line 43
    move v6, v0

    .line 44
    move v7, p1

    .line 45
    .line 46
    .line 47
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v1}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView$b;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/google/android/material/timepicker/ClockFaceView;->h(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    .line 57
    move-result-object v9

    .line 58
    const/4 v5, 0x1

    .line 59
    move-wide v1, p2

    .line 60
    .line 61
    .line 62
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, p1}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    const/4 p1, 0x1

    .line 68
    return p1

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 72
    move-result p1

    .line 73
    return p1
.end method
