.class public final Lkotlinx/coroutines/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Default:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lkotlinx/coroutines/e1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IO:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Unconfined:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/e1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/e1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lkotlinx/coroutines/e1;->INSTANCE:Lkotlinx/coroutines/e1;

    .line 8
    .line 9
    sget-object v0, Lkotlinx/coroutines/scheduling/c;->INSTANCE:Lkotlinx/coroutines/scheduling/c;

    .line 10
    .line 11
    sput-object v0, Lkotlinx/coroutines/e1;->Default:Lkotlinx/coroutines/k0;

    .line 12
    .line 13
    sget-object v0, Lkotlinx/coroutines/g3;->INSTANCE:Lkotlinx/coroutines/g3;

    .line 14
    .line 15
    sput-object v0, Lkotlinx/coroutines/e1;->Unconfined:Lkotlinx/coroutines/k0;

    .line 16
    .line 17
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->INSTANCE:Lkotlinx/coroutines/scheduling/b;

    .line 18
    .line 19
    sput-object v0, Lkotlinx/coroutines/e1;->IO:Lkotlinx/coroutines/k0;

    .line 20
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

.method public static final a()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/e1;->Default:Lkotlinx/coroutines/k0;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/e1;->IO:Lkotlinx/coroutines/k0;

    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/n2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/x;->dispatcher:Lkotlinx/coroutines/n2;

    .line 3
    return-object v0
.end method

.method public static final d()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/e1;->Unconfined:Lkotlinx/coroutines/k0;

    return-object v0
.end method
