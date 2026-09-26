.class public final Lcoil/compose/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/transition/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/compose/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcoil/transition/d$a;->c(Lcoil/transition/d;Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcoil/transition/d$a;->b(Lcoil/transition/d;Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcoil/transition/d$a;->a(Lcoil/transition/d;Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
