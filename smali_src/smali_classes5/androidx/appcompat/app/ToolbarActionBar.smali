.class Landroidx/appcompat/app/ToolbarActionBar;
.super Landroidx/appcompat/app/ActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;,
        Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;
    }
.end annotation


# instance fields
.field final mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field final mMenuCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field mToolbarMenuPrepared:Z

.field final mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3
    .param p1    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/Window$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Landroidx/appcompat/app/ToolbarActionBar$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/appcompat/app/ToolbarActionBar$1;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 18
    .line 19
    new-instance v0, Landroidx/appcompat/app/ToolbarActionBar$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroidx/appcompat/app/ToolbarActionBar$2;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuClicker:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroidx/core/util/Preconditions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p1, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    .line 34
    .line 35
    iput-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 36
    .line 37
    .line 38
    invoke-static {p3}, Landroidx/core/util/Preconditions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    check-cast v2, Landroid/view/Window$Callback;

    .line 42
    .line 43
    iput-object v2, p0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, p3}, Landroidx/appcompat/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, p2}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    new-instance p1, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p0}, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    .line 58
    .line 59
    iput-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;

    .line 60
    return-void
.end method

.method private A()Landroid/view/Menu;
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 7
    .line 8
    new-instance v1, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0}, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    .line 12
    .line 13
    new-instance v2, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, p0}, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/DecorToolbar;->x(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->r()Landroid/view/Menu;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method


# virtual methods
.method B()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/ToolbarActionBar;->A()Landroid/view/Menu;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    move-object v1, v0

    .line 11
    .line 12
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v2

    .line 15
    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->h0()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    .line 28
    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 34
    .line 35
    .line 36
    invoke-interface {v3, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    :cond_3
    if-eqz v1, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->g0()V

    .line 51
    :cond_4
    return-void

    .line 52
    .line 53
    :goto_2
    if-eqz v1, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->g0()V

    .line 57
    :cond_5
    throw v0
.end method

.method public C(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->o()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 9
    and-int/2addr p1, p2

    .line 10
    not-int p2, p2

    .line 11
    and-int/2addr p2, v0

    .line 12
    or-int/2addr p1, p2

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, p1}, Landroidx/appcompat/widget/DecorToolbar;->i(I)V

    .line 16
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->d()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->h()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public h(Z)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;

    .line 25
    .line 26
    .line 27
    invoke-interface {v2, p1}, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;->a(Z)V

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->o()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()Landroid/content/Context;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public k()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 8
    return-void
.end method

.method public l()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->t()Landroid/view/ViewGroup;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->t()Landroid/view/ViewGroup;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->l0(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 23
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public n(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBar;->n(Landroid/content/res/Configuration;)V

    .line 4
    return-void
.end method

.method o()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->t()Landroid/view/ViewGroup;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    return-void
.end method

.method public p(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/ToolbarActionBar;->A()Landroid/view/Menu;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 13
    move-result v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, -0x1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    if-eq v2, v3, :cond_1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v3, v1

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_2
    return v1
.end method

.method public q(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/ToolbarActionBar;->r()Z

    .line 11
    :cond_0
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->b()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public s(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public t(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->C(II)V

    .line 10
    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->k(I)V

    .line 6
    return-void
.end method

.method public v(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->q(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public w(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public x(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public y(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method
