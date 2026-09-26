.class final La1/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final factory:La1/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La1/a$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final resetter:La1/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La1/a$g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/core/util/Pools$Pool;La1/a$d;La1/a$g;)V
    .locals 0
    .param p1    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # La1/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # La1/a$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "La1/a$d<",
            "TT;>;",
            "La1/a$g<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, La1/a$e;->pool:Landroidx/core/util/Pools$Pool;

    .line 6
    .line 7
    iput-object p2, p0, La1/a$e;->factory:La1/a$d;

    .line 8
    .line 9
    iput-object p3, p0, La1/a$e;->resetter:La1/a$g;

    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, La1/a$e;->pool:Landroidx/core/util/Pools$Pool;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->a()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, La1/a$e;->factory:La1/a$d;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, La1/a$d;->a()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    const-string v2, "FactoryPools"

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v3, "Created new "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    :cond_0
    instance-of v1, v0, La1/a$f;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    move-object v1, v0

    .line 53
    .line 54
    check-cast v1, La1/a$f;

    .line 55
    .line 56
    .line 57
    invoke-interface {v1}, La1/a$f;->e()La1/c;

    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, La1/c;->b(Z)V

    .line 63
    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, La1/a$f;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, La1/a$f;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, La1/a$f;->e()La1/c;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, La1/c;->b(Z)V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, La1/a$e;->resetter:La1/a$g;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1}, La1/a$g;->a(Ljava/lang/Object;)V

    .line 21
    .line 22
    iget-object v0, p0, La1/a$e;->pool:Landroidx/core/util/Pools$Pool;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->b(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method
