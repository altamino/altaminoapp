.class public final Lkotlinx/coroutines/b3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/ThreadLocalEventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n1#2:544\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/b3;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ref:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lkotlinx/coroutines/k1;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/b3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/b3;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lkotlinx/coroutines/b3;->INSTANCE:Lkotlinx/coroutines/b3;

    .line 8
    .line 9
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 10
    .line 11
    const-string v1, "ThreadLocalEventLoop"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/internal/p0;->a(Lkotlinx/coroutines/internal/i0;)Ljava/lang/ThreadLocal;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Lkotlinx/coroutines/b3;->ref:Ljava/lang/ThreadLocal;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/k1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b3;->ref:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/k1;

    .line 9
    return-object v0
.end method

.method public final b()Lkotlinx/coroutines/k1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b3;->ref:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/k1;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlinx/coroutines/n1;->a()Lkotlinx/coroutines/k1;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-object v1
.end method

.method public final c()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b3;->ref:Ljava/lang/ThreadLocal;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    return-void
.end method

.method public final d(Lkotlinx/coroutines/k1;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/k1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b3;->ref:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6
    return-void
.end method
