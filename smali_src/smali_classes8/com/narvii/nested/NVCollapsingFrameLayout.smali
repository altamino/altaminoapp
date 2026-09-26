.class public Lcom/narvii/nested/NVCollapsingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;
    }
.end annotation


# instance fields
.field private mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/narvii/nested/utils/ViewOffsetHelper;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->view_offset_helper:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/nested/utils/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    move-object v1, v0

    .line 13
    .line 14
    check-cast v1, Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$h;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;-><init>(Lcom/narvii/nested/NVCollapsingFrameLayout;)V

    .line 31
    .line 32
    iput-object v1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$h;

    .line 33
    .line 34
    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$h;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->d(Lcom/google/android/material/appbar/AppBarLayout$h;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->q0(Landroid/view/View;)V

    .line 43
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$h;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->r(Lcom/google/android/material/appbar/AppBarLayout$h;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 21
    return-void
.end method
