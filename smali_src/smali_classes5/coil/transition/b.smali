.class public final Lcoil/transition/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/transition/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/transition/b$a;
    }
.end annotation


# instance fields
.field private final result:Lcoil/request/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final target:Lcoil/transition/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcoil/transition/d;Lcoil/request/i;)V
    .locals 0
    .param p1    # Lcoil/transition/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/transition/b;->target:Lcoil/transition/d;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/transition/b;->result:Lcoil/request/i;

    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/transition/b;->result:Lcoil/request/i;

    .line 3
    .line 4
    instance-of v1, v0, Lcoil/request/p;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcoil/transition/b;->target:Lcoil/transition/d;

    .line 9
    .line 10
    check-cast v0, Lcoil/request/p;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcoil/request/p;->a()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Lf0/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    instance-of v1, v0, Lcoil/request/e;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcoil/transition/b;->target:Lcoil/transition/d;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcoil/request/i;->a()Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0}, Lf0/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method
