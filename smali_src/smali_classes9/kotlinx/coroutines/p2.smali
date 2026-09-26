.class public final Lkotlinx/coroutines/p2;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/b2;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/p2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final message:Ljava/lang/String; = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/p2;

    invoke-direct {v0}, Lkotlinx/coroutines/p2;-><init>()V

    sput-object v0, Lkotlinx/coroutines/p2;->INSTANCE:Lkotlinx/coroutines/p2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/g$c;)V

    .line 6
    return-void
.end method


# virtual methods
.method public O(ZZLe8/l;)Lkotlinx/coroutines/g1;
    .locals 0
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/coroutines/g1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object p1, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 3
    return-object p1
.end method

.method public Q(Lkotlinx/coroutines/w;)Lkotlinx/coroutines/u;
    .locals 0
    .param p1    # Lkotlinx/coroutines/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object p1, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 3
    return-object p1
.end method

.method public U(Le8/l;)Lkotlinx/coroutines/g1;
    .locals 0
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/coroutines/g1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object p1, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 3
    return-object p1
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public b0()Ljava/util/concurrent/CancellationException;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    const-string v1, "This job is always active"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public getParent()Lkotlinx/coroutines/b2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public start()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t0(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string v0, "This job is always active"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "NonCancellable"

    return-object v0
.end method
