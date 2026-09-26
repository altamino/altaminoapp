.class public final Lj7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj7/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEvents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Events.kt\nio/ktor/events/Events\n+ 2 LockFreeLinkedList.kt\nio/ktor/util/internal/LockFreeLinkedListHead\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n785#2,6:92\n785#2,3:98\n788#2,3:102\n1#3:101\n*S KotlinDebug\n*F\n+ 1 Events.kt\nio/ktor/events/Events\n*L\n32#1:92,6\n45#1:98,3\n45#1:102,3\n*E\n"
.end annotation


# instance fields
.field private final handlers:Ll7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll7/a<",
            "Lj7/a<",
            "*>;",
            "Lio/ktor/util/internal/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ll7/a;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ll7/a;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lj7/b;->handlers:Ll7/a;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lj7/a;Ljava/lang/Object;)V
    .locals 5
    .param p1    # Lj7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj7/a<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "definition"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lj7/b;->handlers:Ll7/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ll7/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lio/ktor/util/internal/a;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lio/ktor/util/internal/c;->e()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    check-cast v1, Lio/ktor/util/internal/c;

    .line 28
    move-object v2, v0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    instance-of v3, v1, Lj7/b$a;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    move-object v3, v1

    .line 40
    .line 41
    check-cast v3, Lj7/b$a;

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v3}, Lj7/b$a;->k()Le8/l;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    const-string v4, "null cannot be cast to non-null type kotlin.Function1<T of io.ktor.events.Events.raise$lambda$2, kotlin.Unit>{ io.ktor.events.EventsKt.EventHandler<T of io.ktor.events.Events.raise$lambda$2> }"

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const/4 v4, 0x1

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v4}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    check-cast v3, Le8/l;

    .line 58
    .line 59
    .line 60
    invoke-interface {v3, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_2

    .line 62
    :catchall_0
    move-exception v3

    .line 63
    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    sget-object v4, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    move-object v4, v0

    .line 72
    .line 73
    :goto_1
    if-nez v4, :cond_1

    .line 74
    move-object v2, v3

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lio/ktor/util/internal/c;->f()Lio/ktor/util/internal/c;

    .line 78
    move-result-object v1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move-object v0, v2

    .line 81
    .line 82
    :cond_3
    if-nez v0, :cond_4

    .line 83
    return-void

    .line 84
    :cond_4
    throw v0
.end method
