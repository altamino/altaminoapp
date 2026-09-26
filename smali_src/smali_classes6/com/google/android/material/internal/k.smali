.class public Lcom/google/android/material/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/k$h;,
        Lcom/google/android/material/internal/k$d;,
        Lcom/google/android/material/internal/k$f;,
        Lcom/google/android/material/internal/k$g;,
        Lcom/google/android/material/internal/k$e;,
        Lcom/google/android/material/internal/k$c;,
        Lcom/google/android/material/internal/k$b;,
        Lcom/google/android/material/internal/k$j;,
        Lcom/google/android/material/internal/k$k;,
        Lcom/google/android/material/internal/k$i;,
        Lcom/google/android/material/internal/k$l;
    }
.end annotation


# static fields
.field public static final NO_TEXT_APPEARANCE_SET:I = 0x0

.field private static final STATE_ADAPTER:Ljava/lang/String; = "android:menu:adapter"

.field private static final STATE_HEADER:Ljava/lang/String; = "android:menu:header"

.field private static final STATE_HIERARCHY:Ljava/lang/String; = "android:menu:list"


# instance fields
.field adapter:Lcom/google/android/material/internal/k$c;

.field private callback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field dividerInsetEnd:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field dividerInsetStart:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field hasCustomItemIconSize:Z

.field headerLayout:Landroid/widget/LinearLayout;

.field iconTintList:Landroid/content/res/ColorStateList;

.field private id:I

.field isBehindStatusBar:Z

.field itemBackground:Landroid/graphics/drawable/Drawable;

.field itemForeground:Landroid/graphics/drawable/RippleDrawable;

.field itemHorizontalPadding:I

.field itemIconPadding:I

.field itemIconSize:I

.field private itemMaxLines:I

.field itemVerticalPadding:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field layoutInflater:Landroid/view/LayoutInflater;

.field menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuView:Lcom/google/android/material/internal/NavigationMenuView;

.field final onClickListener:Landroid/view/View$OnClickListener;

.field private overScrollMode:I

.field paddingSeparator:I

.field private paddingTopDefault:I

.field subheaderColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field subheaderInsetEnd:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field subheaderInsetStart:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field subheaderTextAppearance:I

.field textAppearance:I

.field textColor:Landroid/content/res/ColorStateList;


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
    iput v0, p0, Lcom/google/android/material/internal/k;->subheaderTextAppearance:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/material/internal/k;->textAppearance:I

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/google/android/material/internal/k;->isBehindStatusBar:Z

    .line 12
    const/4 v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/material/internal/k;->overScrollMode:I

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/material/internal/k$a;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/k$a;-><init>(Lcom/google/android/material/internal/k;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/material/internal/k;->onClickListener:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method private W()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/k;->headerLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/material/internal/k;->isBehindStatusBar:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/material/internal/k;->paddingTopDefault:I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    .line 19
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    move-result v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    return-void
.end method

.method static synthetic i(Lcom/google/android/material/internal/k;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/internal/k;->itemMaxLines:I

    .line 3
    return p0
.end method


# virtual methods
.method public A()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/k;->subheaderInsetStart:I

    return v0
.end method

.method public B(I)Landroid/view/View;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/k;->layoutInflater:Landroid/view/LayoutInflater;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/internal/k;->headerLayout:Landroid/widget/LinearLayout;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->l(Landroid/view/View;)V

    .line 13
    return-object p1
.end method

.method public C(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/internal/k;->isBehindStatusBar:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/google/android/material/internal/k;->isBehindStatusBar:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/internal/k;->W()V

    .line 10
    :cond_0
    return-void
.end method

.method public D(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/k;->adapter:Lcom/google/android/material/internal/k$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/k$c;->p(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 6
    return-void
.end method

.method public E(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/k;->dividerInsetEnd:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public F(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/k;->dividerInsetStart:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public G(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/k;->id:I

    return-void
.end method

.method public H(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/k;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public I(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/RippleDrawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/k;->itemForeground:Landroid/graphics/drawable/RippleDrawable;

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public J(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/k;->itemHorizontalPadding:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public K(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/k;->itemIconPadding:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public L(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/k;->itemIconSize:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/material/internal/k;->itemIconSize:I

    .line 7
    const/4 p1, 0x1

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/google/android/material/internal/k;->hasCustomItemIconSize:Z

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 14
    :cond_0
    return-void
.end method

.method public M(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/k;->iconTintList:Landroid/content/res/ColorStateList;

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public N(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/k;->itemMaxLines:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public O(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/k;->textAppearance:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public P(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/k;->textColor:Landroid/content/res/ColorStateList;

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public Q(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/k;->itemVerticalPadding:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public R(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/k;->overScrollMode:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 10
    :cond_0
    return-void
.end method

.method public S(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/k;->subheaderColor:Landroid/content/res/ColorStateList;

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public T(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/k;->subheaderInsetStart:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public U(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/internal/k;->subheaderTextAppearance:I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/k;->d(Z)V

    .line 7
    return-void
.end method

.method public V(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/k;->adapter:Lcom/google/android/material/internal/k$c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/k$c;->q(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/k;->callback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->a(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public c()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 20
    .line 21
    const-string v2, "android:menu:list"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/k;->adapter:Lcom/google/android/material/internal/k$c;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-string v2, "android:menu:adapter"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/material/internal/k$c;->h()Landroid/os/Bundle;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/k;->headerLayout:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    new-instance v1, Landroid/util/SparseArray;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 47
    .line 48
    iget-object v2, p0, Lcom/google/android/material/internal/k;->headerLayout:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 52
    .line 53
    const-string v2, "android:menu:header"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 57
    :cond_2
    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/k;->adapter:Lcom/google/android/material/internal/k$c;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/internal/k$c;->r()V

    .line 8
    :cond_0
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

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1
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
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/material/internal/k;->layoutInflater:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/material/internal/k;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    sget p2, Ld3/d;->design_navigation_separator_vertical_padding:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    iput p1, p0, Lcom/google/android/material/internal/k;->paddingSeparator:I

    .line 21
    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/k;->id:I

    return v0
.end method

.method public j(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Landroid/os/Bundle;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Landroid/os/Bundle;

    .line 7
    .line 8
    const-string v0, "android:menu:list"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 20
    .line 21
    :cond_0
    const-string v0, "android:menu:adapter"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/material/internal/k;->adapter:Lcom/google/android/material/internal/k$c;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/k$c;->o(Landroid/os/Bundle;)V

    .line 33
    .line 34
    :cond_1
    const-string v0, "android:menu:header"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/material/internal/k;->headerLayout:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 46
    :cond_2
    return-void
.end method

.method public k(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public l(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/k;->headerLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    return-void
.end method

.method public m(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->m()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/material/internal/k;->paddingTopDefault:I

    .line 7
    .line 8
    if-eq v1, v0, :cond_0

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/material/internal/k;->paddingTopDefault:I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/material/internal/k;->W()V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->j()I

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/material/internal/k;->headerLayout:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->i(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 33
    return-void
.end method

.method public n()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/k;->adapter:Lcom/google/android/material/internal/k$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/k$c;->i()Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/k;->dividerInsetEnd:I

    return v0
.end method

.method public p()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/k;->dividerInsetStart:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/k;->headerLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public r()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/k;->itemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/k;->itemHorizontalPadding:I

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/k;->itemIconPadding:I

    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/k;->itemMaxLines:I

    return v0
.end method

.method public v()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/k;->textColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public w()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/k;->iconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public x()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/k;->itemVerticalPadding:I

    return v0
.end method

.method public y(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/k;->layoutInflater:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    sget v1, Ld3/h;->design_navigation_menu:I

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/material/internal/k$h;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/internal/k$h;-><init>(Lcom/google/android/material/internal/k;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/material/internal/k;->adapter:Lcom/google/android/material/internal/k$c;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    new-instance p1, Lcom/google/android/material/internal/k$c;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/google/android/material/internal/k$c;-><init>(Lcom/google/android/material/internal/k;)V

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/material/internal/k;->adapter:Lcom/google/android/material/internal/k$c;

    .line 39
    .line 40
    :cond_0
    iget p1, p0, Lcom/google/android/material/internal/k;->overScrollMode:I

    .line 41
    const/4 v0, -0x1

    .line 42
    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/k;->layoutInflater:Landroid/view/LayoutInflater;

    .line 51
    .line 52
    sget v0, Ld3/h;->design_navigation_item_header:I

    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/google/android/material/internal/k;->headerLayout:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/material/internal/k;->adapter:Lcom/google/android/material/internal/k$c;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    .line 71
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/k;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 72
    return-object p1
.end method

.method public z()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/k;->subheaderInsetEnd:I

    return v0
.end method
