.class public Lcom/google/android/material/badge/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BadgeUtils"

.field public static final USE_COMPAT_PARENT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/material/badge/c;->USE_COMPAT_PARENT:Z

    return-void
.end method

.method public static a(Lcom/google/android/material/badge/a;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p0    # Lcom/google/android/material/badge/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/material/badge/c;->e(Lcom/google/android/material/badge/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->g()Landroid/widget/FrameLayout;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->g()Landroid/widget/FrameLayout;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    sget-boolean p2, Lcom/google/android/material/badge/c;->USE_COMPAT_PARENT:Z

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :goto_0
    return-void

    .line 30
    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string p1, "Trying to reference null customBadgeParent"

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;
    .locals 4
    .param p1    # Lcom/google/android/material/internal/ParcelableSparseArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/internal/ParcelableSparseArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/a;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    check-cast v3, Lcom/google/android/material/badge/BadgeState$State;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v3}, Lcom/google/android/material/badge/a;->c(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)Lcom/google/android/material/badge/a;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p1, "BadgeDrawable\'s savedState cannot be null"

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0

    .line 47
    :cond_1
    return-object v0
.end method

.method public static c(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;
    .locals 4
    .param p0    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/a;",
            ">;)",
            "Lcom/google/android/material/internal/ParcelableSparseArray;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    check-cast v3, Lcom/google/android/material/badge/a;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/google/android/material/badge/a;->k()Lcom/google/android/material/badge/BadgeState$State;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "badgeDrawable cannot be null"

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0

    .line 43
    :cond_1
    return-object v0
.end method

.method public static d(Lcom/google/android/material/badge/a;Landroid/view/View;)V
    .locals 1
    .param p0    # Lcom/google/android/material/badge/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget-boolean v0, Lcom/google/android/material/badge/c;->USE_COMPAT_PARENT:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->g()Landroid/widget/FrameLayout;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->g()Landroid/widget/FrameLayout;

    .line 26
    move-result-object p0

    .line 27
    const/4 p1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    :goto_1
    return-void
.end method

.method public static e(Lcom/google/android/material/badge/a;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p0    # Lcom/google/android/material/badge/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/badge/a;->A(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 15
    return-void
.end method

.method public static f(Landroid/graphics/Rect;FFFF)V
    .locals 2
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sub-float v0, p1, p3

    .line 3
    float-to-int v0, v0

    .line 4
    .line 5
    sub-float v1, p2, p4

    .line 6
    float-to-int v1, v1

    .line 7
    add-float/2addr p1, p3

    .line 8
    float-to-int p1, p1

    .line 9
    add-float/2addr p2, p4

    .line 10
    float-to-int p2, p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    return-void
.end method
