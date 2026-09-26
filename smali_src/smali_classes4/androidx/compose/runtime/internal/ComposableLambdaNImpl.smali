.class public final Landroidx/compose/runtime/internal/ComposableLambdaNImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/internal/ComposableLambdaN;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposableLambdaN.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaNImpl\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,178:1\n37#2:179\n36#2,3:180\n*S KotlinDebug\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaNImpl\n*L\n112#1:179\n112#1:180,3\n*E\n"
.end annotation


# instance fields
.field private _block:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final arity:I

.field private final key:I

.field private scope:Landroidx/compose/runtime/RecomposeScope;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScope;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tracked:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->key:I

    .line 6
    .line 7
    iput-boolean p2, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->tracked:Z

    .line 8
    .line 9
    iput p3, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->arity:I

    .line 10
    return-void
.end method

.method private final a(I)I
    .locals 2

    .line 1
    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x1

    :goto_0
    mul-int/lit8 v1, v0, 0xa

    if-ge v1, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private final b(Landroidx/compose/runtime/Composer;)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->tracked:Z

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->E()Landroidx/compose/runtime/RecomposeScope;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->i(Landroidx/compose/runtime/RecomposeScope;)V

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scope:Landroidx/compose/runtime/RecomposeScope;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->e(Landroidx/compose/runtime/RecomposeScope;Landroidx/compose/runtime/RecomposeScope;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scope:Landroidx/compose/runtime/RecomposeScope;

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scopes:Ljava/util/List;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    iput-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scopes:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    .line 46
    :goto_0
    if-ge v2, v1, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    check-cast v3, Landroidx/compose/runtime/RecomposeScope;

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->e(Landroidx/compose/runtime/RecomposeScope;Landroidx/compose/runtime/RecomposeScope;)Z

    .line 56
    move-result v3

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void

    .line 63
    .line 64
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->arity:I

    return v0
.end method

.method public varargs y0([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "args"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->a(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    aget-object v1, p1, v0

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 17
    array-length v2, p1

    .line 18
    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v2}, Lj8/m;->v(II)Lj8/i;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v2}, Lkotlin/collections/l;->n0([Ljava/lang/Object;Lj8/i;)Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Ljava/util/Collection;

    .line 31
    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    array-length v3, p1

    .line 40
    .line 41
    add-int/lit8 v3, v3, -0x1

    .line 42
    .line 43
    aget-object v3, p1, v3

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    check-cast v3, Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v3

    .line 52
    .line 53
    iget v4, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->key:I

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->b(Landroidx/compose/runtime/Composer;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->d(I)I

    .line 70
    move-result v4

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-static {v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->f(I)I

    .line 75
    move-result v4

    .line 76
    :goto_0
    or-int/2addr v3, v4

    .line 77
    .line 78
    iget-object v4, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->_block:Ljava/lang/Object;

    .line 79
    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    check-cast v4, Le8/x;

    .line 83
    .line 84
    new-instance v5, Lkotlin/jvm/internal/t0;

    .line 85
    const/4 v6, 0x2

    .line 86
    .line 87
    .line 88
    invoke-direct {v5, v6}, Lkotlin/jvm/internal/t0;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/t0;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/t0;->a(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Lkotlin/jvm/internal/t0;->c()I

    .line 102
    move-result v2

    .line 103
    .line 104
    new-array v2, v2, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/t0;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-interface {v4, v2}, Le8/x;->y0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    if-eqz v1, :cond_1

    .line 119
    .line 120
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;

    .line 121
    .line 122
    .line 123
    invoke-direct {v3, p1, v0, p0}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl$invoke$1;-><init>([Ljava/lang/Object;ILandroidx/compose/runtime/internal/ComposableLambdaNImpl;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v1, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 127
    :cond_1
    return-object v2

    .line 128
    .line 129
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 130
    .line 131
    const-string v0, "null cannot be cast to non-null type kotlin.jvm.functions.FunctionN<*>"

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p1

    .line 136
    .line 137
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 138
    .line 139
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 143
    throw p1

    .line 144
    .line 145
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 146
    .line 147
    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 148
    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p1

    .line 152
    .line 153
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 154
    .line 155
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.Composer"

    .line 156
    .line 157
    .line 158
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 159
    throw p1
.end method
