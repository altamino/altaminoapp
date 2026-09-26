.class public final Lkotlinx/coroutines/flow/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlinx/coroutines/flow/h0$a;

.field private static final Eagerly:Lkotlinx/coroutines/flow/h0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Lazily:Lkotlinx/coroutines/flow/h0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/h0$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/flow/h0$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lkotlinx/coroutines/flow/h0$a;->$$INSTANCE:Lkotlinx/coroutines/flow/h0$a;

    .line 8
    .line 9
    new-instance v0, Lkotlinx/coroutines/flow/i0;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lkotlinx/coroutines/flow/i0;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lkotlinx/coroutines/flow/h0$a;->Eagerly:Lkotlinx/coroutines/flow/h0;

    .line 15
    .line 16
    new-instance v0, Lkotlinx/coroutines/flow/j0;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lkotlinx/coroutines/flow/j0;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lkotlinx/coroutines/flow/h0$a;->Lazily:Lkotlinx/coroutines/flow/h0;

    .line 22
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

.method public static synthetic b(Lkotlinx/coroutines/flow/h0$a;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/h0;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x1

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p5, p5, 0x2

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide p3, 0x7fffffffffffffffL

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/h0$a;->a(JJ)Lkotlinx/coroutines/flow/h0;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method


# virtual methods
.method public final a(JJ)Lkotlinx/coroutines/flow/h0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/k0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/k0;-><init>(JJ)V

    .line 6
    return-object v0
.end method

.method public final c()Lkotlinx/coroutines/flow/h0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/h0$a;->Eagerly:Lkotlinx/coroutines/flow/h0;

    return-object v0
.end method

.method public final d()Lkotlinx/coroutines/flow/h0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/h0$a;->Lazily:Lkotlinx/coroutines/flow/h0;

    return-object v0
.end method
