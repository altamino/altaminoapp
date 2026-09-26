.class public final Lcom/google/android/gms/internal/base/zal;
.super Landroid/widget/ImageView;
.source "SourceFile"


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "com.google.ads"

    invoke-static {v0, p0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->viewOnTouch(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected final onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
