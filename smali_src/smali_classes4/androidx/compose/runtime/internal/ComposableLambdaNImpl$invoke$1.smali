.class final Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->y0([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposableLambdaN.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,178:1\n37#2:179\n36#2,3:180\n37#2:183\n36#2,3:184\n*S KotlinDebug\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1\n*L\n123#1:179\n123#1:180,3\n126#1:183\n126#1:184,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $args:[Ljava/lang/Object;

.field final synthetic $realParams:I

.field final synthetic this$0:Landroidx/compose/runtime/internal/ComposableLambdaNImpl;


# direct methods
.method constructor <init>([Ljava/lang/Object;ILandroidx/compose/runtime/internal/ComposableLambdaNImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->$args:[Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->$realParams:I

    iput-object p3, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->this$0:Landroidx/compose/runtime/internal/ComposableLambdaNImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 6
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "nc"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->$args:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->$realParams:I

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lj8/m;->v(II)Lj8/i;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {p2, v0}, Lkotlin/collections/l;->n0([Ljava/lang/Object;Lj8/i;)Ljava/util/List;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Ljava/util/Collection;

    .line 21
    .line 22
    new-array v0, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->$args:[Ljava/lang/Object;

    .line 33
    .line 34
    iget v3, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->$realParams:I

    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    aget-object v2, v2, v3

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    check-cast v2, Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v2

    .line 47
    .line 48
    iget-object v3, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->$args:[Ljava/lang/Object;

    .line 49
    .line 50
    iget v4, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->$realParams:I

    .line 51
    .line 52
    add-int/lit8 v4, v4, 0x2

    .line 53
    array-length v5, v3

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v5}, Lj8/m;->v(II)Lj8/i;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4}, Lkotlin/collections/l;->n0([Ljava/lang/Object;Lj8/i;)Ljava/util/List;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    check-cast v3, Ljava/util/Collection;

    .line 64
    .line 65
    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-interface {v3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->this$0:Landroidx/compose/runtime/internal/ComposableLambdaNImpl;

    .line 74
    .line 75
    new-instance v3, Lkotlin/jvm/internal/t0;

    .line 76
    const/4 v4, 0x4

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, v4}, Lkotlin/jvm/internal/t0;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p2}, Lkotlin/jvm/internal/t0;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/t0;->a(Ljava/lang/Object;)V

    .line 86
    .line 87
    or-int/lit8 p1, v2, 0x1

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/t0;->a(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1}, Lkotlin/jvm/internal/t0;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lkotlin/jvm/internal/t0;->c()I

    .line 101
    move-result p1

    .line 102
    .line 103
    new-array p1, p1, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/t0;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->y0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void

    .line 112
    .line 113
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p1

    .line 118
    .line 119
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 120
    .line 121
    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    .line 122
    .line 123
    .line 124
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p1

    .line 126
    .line 127
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
