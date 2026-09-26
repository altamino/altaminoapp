.class public final La1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La1/a$e;,
        La1/a$f;,
        La1/a$g;,
        La1/a$d;
    }
.end annotation


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x14

.field private static final EMPTY_RESETTER:La1/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La1/a$g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FactoryPools"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, La1/a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, La1/a$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, La1/a;->EMPTY_RESETTER:La1/a$g;

    .line 8
    return-void
.end method

.method private static a(Landroidx/core/util/Pools$Pool;La1/a$d;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p0    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # La1/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "La1/a$f;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "La1/a$d<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, La1/a;->c()La1/a$g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, v0}, La1/a;->b(Landroidx/core/util/Pools$Pool;La1/a$d;La1/a$g;)Landroidx/core/util/Pools$Pool;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static b(Landroidx/core/util/Pools$Pool;La1/a$d;La1/a$g;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p0    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # La1/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # La1/a$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "La1/a$d<",
            "TT;>;",
            "La1/a$g<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, La1/a$e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, La1/a$e;-><init>(Landroidx/core/util/Pools$Pool;La1/a$d;La1/a$g;)V

    .line 6
    return-object v0
.end method

.method private static c()La1/a$g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "La1/a$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, La1/a;->EMPTY_RESETTER:La1/a$g;

    return-object v0
.end method

.method public static d(ILa1/a$d;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p1    # La1/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "La1/a$f;",
            ">(I",
            "La1/a$d<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, La1/a;->a(Landroidx/core/util/Pools$Pool;La1/a$d;)Landroidx/core/util/Pools$Pool;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static e()Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x14

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, La1/a;->f(I)Landroidx/core/util/Pools$Pool;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static f(I)Landroidx/core/util/Pools$Pool;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 6
    .line 7
    new-instance p0, La1/a$b;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, La1/a$b;-><init>()V

    .line 11
    .line 12
    new-instance v1, La1/a$c;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, La1/a$c;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p0, v1}, La1/a;->b(Landroidx/core/util/Pools$Pool;La1/a$d;La1/a$g;)Landroidx/core/util/Pools$Pool;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
