.class Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final mWindow:Landroid/view/Window;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 8
    return-void
.end method

.method private e(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "input_method"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 40
    :goto_0
    return-void

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->f(I)V

    .line 44
    return-void

    .line 45
    :cond_2
    const/4 p1, 0x4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->f(I)V

    .line 49
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    :goto_0
    const/16 v1, 0x100

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    and-int v1, p1, v0

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->e(I)V

    .line 14
    .line 15
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return-void
.end method

.method d(I)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    const/16 v1, 0x1000

    .line 6
    .line 7
    const/16 v2, 0x800

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    const/4 v0, 0x2

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->h(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->f(I)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->h(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->f(I)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_2
    const/16 p1, 0x1800

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->h(I)V

    .line 33
    :goto_0
    return-void
.end method

.method protected f(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 10
    move-result v1

    .line 11
    or-int/2addr p1, v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 15
    return-void
.end method

.method protected g(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 6
    return-void
.end method

.method protected h(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 10
    move-result v1

    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16
    return-void
.end method

.method protected i(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    return-void
.end method
