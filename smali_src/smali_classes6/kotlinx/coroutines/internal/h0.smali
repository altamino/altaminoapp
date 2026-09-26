.class public final Lkotlinx/coroutines/internal/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStackTraceRecovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1735#2,6:217\n12744#2,2:225\n1627#2,6:229\n12744#2,2:235\n1627#2,6:238\n37#3,2:223\n26#4:227\n26#4:228\n1#5:237\n*S KotlinDebug\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n43#1:217,6\n131#1:225,2\n141#1:229,6\n173#1:235,2\n194#1:238,6\n106#1:223,2\n133#1:227\n135#1:228\n*E\n"
.end annotation


# static fields
.field private static final ARTIFICIAL_FRAME:Ljava/lang/StackTraceElement;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final baseContinuationImplClass:Ljava/lang/String; = "kotlin.coroutines.jvm.internal.BaseContinuationImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final baseContinuationImplClassName:Ljava/lang/String;

.field private static final stackTraceRecoveryClass:Ljava/lang/String; = "kotlinx.coroutines.internal.StackTraceRecoveryKt"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final stackTraceRecoveryClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, La/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, La/a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, La/a;->a()Ljava/lang/StackTraceElement;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lkotlinx/coroutines/internal/h0;->ARTIFICIAL_FRAME:Ljava/lang/StackTraceElement;

    .line 12
    .line 13
    :try_start_0
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 14
    .line 15
    const-class v0, Lkotlin/coroutines/jvm/internal/a;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    .line 27
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {v0}, Lw7/v;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_0
    const-string v0, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    .line 45
    .line 46
    :goto_1
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    sput-object v0, Lkotlinx/coroutines/internal/h0;->baseContinuationImplClassName:Ljava/lang/String;

    .line 49
    .line 50
    :try_start_1
    const-class v0, Lkotlinx/coroutines/internal/h0;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    goto :goto_2

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    .line 62
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-static {v0}, Lw7/v;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    if-nez v1, :cond_1

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_1
    const-string v0, "kotlinx.coroutines.internal.StackTraceRecoveryKt"

    .line 80
    .line 81
    :goto_3
    check-cast v0, Ljava/lang/String;

    .line 82
    .line 83
    sput-object v0, Lkotlinx/coroutines/internal/h0;->stackTraceRecoveryClassName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method
