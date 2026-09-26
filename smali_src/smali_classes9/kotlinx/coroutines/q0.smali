.class public final enum Lkotlinx/coroutines/q0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/q0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/q0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/q0;

.field public static final enum ATOMIC:Lkotlinx/coroutines/q0;

.field public static final enum DEFAULT:Lkotlinx/coroutines/q0;

.field public static final enum LAZY:Lkotlinx/coroutines/q0;

.field public static final enum UNDISPATCHED:Lkotlinx/coroutines/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/q0;

    .line 3
    .line 4
    const-string v1, "DEFAULT"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/q0;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lkotlinx/coroutines/q0;->DEFAULT:Lkotlinx/coroutines/q0;

    .line 11
    .line 12
    new-instance v0, Lkotlinx/coroutines/q0;

    .line 13
    .line 14
    const-string v1, "LAZY"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/q0;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lkotlinx/coroutines/q0;->LAZY:Lkotlinx/coroutines/q0;

    .line 21
    .line 22
    new-instance v0, Lkotlinx/coroutines/q0;

    .line 23
    .line 24
    const-string v1, "ATOMIC"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/q0;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lkotlinx/coroutines/q0;->ATOMIC:Lkotlinx/coroutines/q0;

    .line 31
    .line 32
    new-instance v0, Lkotlinx/coroutines/q0;

    .line 33
    .line 34
    const-string v1, "UNDISPATCHED"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/q0;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lkotlinx/coroutines/q0;->UNDISPATCHED:Lkotlinx/coroutines/q0;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lkotlinx/coroutines/q0;->a()[Lkotlinx/coroutines/q0;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lkotlinx/coroutines/q0;->$VALUES:[Lkotlinx/coroutines/q0;

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method private static final synthetic a()[Lkotlinx/coroutines/q0;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/q0;

    const/4 v1, 0x0

    sget-object v2, Lkotlinx/coroutines/q0;->DEFAULT:Lkotlinx/coroutines/q0;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkotlinx/coroutines/q0;->LAZY:Lkotlinx/coroutines/q0;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkotlinx/coroutines/q0;->ATOMIC:Lkotlinx/coroutines/q0;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lkotlinx/coroutines/q0;->UNDISPATCHED:Lkotlinx/coroutines/q0;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/q0;
    .locals 1

    const-class v0, Lkotlinx/coroutines/q0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/q0;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/q0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/q0;->$VALUES:[Lkotlinx/coroutines/q0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/q0;

    return-object v0
.end method


# virtual methods
.method public final b(Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .locals 6
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/p<",
            "-TR;-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/q0$a;->$EnumSwitchMapping$0:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    const/4 p1, 0x4

    .line 19
    .line 20
    if-ne v0, p1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance p1, Lw7/s;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 27
    throw p1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p1, p2, p3}, Ll8/b;->a(Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-static {p1, p2, p3}, Lkotlin/coroutines/f;->b(Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, 0x0

    .line 39
    move-object v0, p1

    .line 40
    move-object v1, p2

    .line 41
    move-object v2, p3

    .line 42
    .line 43
    .line 44
    invoke-static/range {v0 .. v5}, Ll8/a;->d(Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;Le8/l;ILjava/lang/Object;)V

    .line 45
    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/q0;->LAZY:Lkotlinx/coroutines/q0;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
