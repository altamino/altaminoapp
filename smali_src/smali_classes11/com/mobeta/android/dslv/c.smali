.class public Lcom/mobeta/android/dslv/c;
.super Lcom/mobeta/android/dslv/b;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/b;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "com.mobeta.android.dslv"

    invoke-static {v0, p0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->viewOnTouch(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    instance-of v2, v1, Landroid/widget/Checkable;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    check-cast v1, Landroid/widget/Checkable;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    .line 15
    move-result v0

    .line 16
    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    const-string v0, "com.mobeta.android.dslv"

    const/4 v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/mobeta/android/dslv/c;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mobeta/android/dslv/b;->onMeasure(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    instance-of v1, v0, Landroid/widget/Checkable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/Checkable;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 15
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    instance-of v1, v0, Landroid/widget/Checkable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/Checkable;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 15
    :cond_0
    return-void
.end method
