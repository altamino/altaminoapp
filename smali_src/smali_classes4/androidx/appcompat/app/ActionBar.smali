.class public abstract Landroidx/appcompat/app/ActionBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBar$LayoutParams;,
        Landroidx/appcompat/app/ActionBar$TabListener;,
        Landroidx/appcompat/app/ActionBar$Tab;,
        Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;,
        Landroidx/appcompat/app/ActionBar$OnNavigationListener;,
        Landroidx/appcompat/app/ActionBar$DisplayOptions;,
        Landroidx/appcompat/app/ActionBar$NavigationMode;
    }
.end annotation


# static fields
.field public static final DISPLAY_HOME_AS_UP:I = 0x4

.field public static final DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final DISPLAY_SHOW_HOME:I = 0x2

.field public static final DISPLAY_SHOW_TITLE:I = 0x8

.field public static final DISPLAY_USE_LOGO:I = 0x1

.field public static final NAVIGATION_MODE_LIST:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAVIGATION_MODE_STANDARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAVIGATION_MODE_TABS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public h(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    return-void
.end method

.method public abstract i()I
.end method

.method public j()Landroid/content/Context;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract k()V
.end method

.method public l()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract m()Z
.end method

.method public n(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    return-void
.end method

.method o()V
    .locals 0

    .line 1
    return-void
.end method

.method public p(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public q(Landroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public r()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public s(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    return-void
.end method

.method public abstract t(Z)V
.end method

.method public u(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public v(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public w(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    return-void
.end method

.method public abstract x(Ljava/lang/CharSequence;)V
.end method

.method public y(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    return-void
.end method

.method public z(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method
