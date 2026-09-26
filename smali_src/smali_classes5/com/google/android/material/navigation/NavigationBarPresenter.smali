.class public Lcom/google/android/material/navigation/NavigationBarPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuView:Lcom/google/android/material/navigation/c;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 7
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public c()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/c;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/material/navigation/c;->getSelectedItemId()I

    .line 11
    move-result v1

    .line 12
    .line 13
    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/c;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/material/navigation/c;->getBadgeDrawables()Landroid/util/SparseArray;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/google/android/material/badge/c;->c(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 26
    return-object v0
.end method

.method public d(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/c;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/material/navigation/c;->d()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/c;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/material/navigation/c;->m()V

    .line 19
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/c;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/material/navigation/c;->a(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 8
    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->id:I

    return v0
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->id:I

    return-void
.end method

.method public j(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/c;

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    .line 9
    .line 10
    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/c;->l(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/c;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/google/android/material/badge/c;->b(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/c;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/c;->k(Landroid/util/SparseArray;)V

    .line 31
    :cond_0
    return-void
.end method

.method public k(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/SubMenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public l(Lcom/google/android/material/navigation/c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/navigation/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/c;

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    return-void
.end method
