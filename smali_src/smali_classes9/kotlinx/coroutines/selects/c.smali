.class public final Lkotlinx/coroutines/selects/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DUMMY_PROCESS_RESULT_FUNCTION:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NO_RESULT:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAM_CLAUSE_0:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STATE_CANCELLED:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STATE_COMPLETED:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STATE_REG:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TRY_SELECT_ALREADY_SELECTED:I = 0x3

.field private static final TRY_SELECT_CANCELLED:I = 0x2

.field private static final TRY_SELECT_REREGISTER:I = 0x1

.field private static final TRY_SELECT_SUCCESSFUL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/selects/c$a;->INSTANCE:Lkotlinx/coroutines/selects/c$a;

    .line 3
    .line 4
    sput-object v0, Lkotlinx/coroutines/selects/c;->DUMMY_PROCESS_RESULT_FUNCTION:Le8/q;

    .line 5
    .line 6
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 7
    .line 8
    const-string v1, "STATE_REG"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    sput-object v0, Lkotlinx/coroutines/selects/c;->STATE_REG:Lkotlinx/coroutines/internal/i0;

    .line 14
    .line 15
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 16
    .line 17
    const-string v1, "STATE_COMPLETED"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    sput-object v0, Lkotlinx/coroutines/selects/c;->STATE_COMPLETED:Lkotlinx/coroutines/internal/i0;

    .line 23
    .line 24
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 25
    .line 26
    const-string v1, "STATE_CANCELLED"

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    sput-object v0, Lkotlinx/coroutines/selects/c;->STATE_CANCELLED:Lkotlinx/coroutines/internal/i0;

    .line 32
    .line 33
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 34
    .line 35
    const-string v1, "NO_RESULT"

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    sput-object v0, Lkotlinx/coroutines/selects/c;->NO_RESULT:Lkotlinx/coroutines/internal/i0;

    .line 41
    .line 42
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 43
    .line 44
    const-string v1, "PARAM_CLAUSE_0"

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    sput-object v0, Lkotlinx/coroutines/selects/c;->PARAM_CLAUSE_0:Lkotlinx/coroutines/internal/i0;

    .line 50
    return-void
.end method

.method private static final a(I)Lkotlinx/coroutines/selects/d;
    .locals 3

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lkotlinx/coroutines/selects/d;->ALREADY_SELECTED:Lkotlinx/coroutines/selects/d;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v2, "Unexpected internal result: "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0

    .line 42
    .line 43
    :cond_1
    sget-object p0, Lkotlinx/coroutines/selects/d;->CANCELLED:Lkotlinx/coroutines/selects/d;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    sget-object p0, Lkotlinx/coroutines/selects/d;->REREGISTER:Lkotlinx/coroutines/selects/d;

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_3
    sget-object p0, Lkotlinx/coroutines/selects/d;->SUCCESSFUL:Lkotlinx/coroutines/selects/d;

    .line 50
    :goto_0
    return-object p0
.end method

.method public static final synthetic b(I)Lkotlinx/coroutines/selects/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/selects/c;->a(I)Lkotlinx/coroutines/selects/d;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/selects/c;->NO_RESULT:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/selects/c;->STATE_CANCELLED:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/selects/c;->STATE_COMPLETED:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/selects/c;->STATE_REG:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic g(Lkotlinx/coroutines/o;Le8/l;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlinx/coroutines/selects/c;->h(Lkotlinx/coroutines/o;Le8/l;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final h(Lkotlinx/coroutines/o;Le8/l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o<",
            "-",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, v1, p1}, Lkotlinx/coroutines/o;->r(Ljava/lang/Object;Ljava/lang/Object;Le8/l;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p0, p1}, Lkotlinx/coroutines/o;->K(Ljava/lang/Object;)V

    .line 15
    const/4 p0, 0x1

    .line 16
    return p0
.end method
