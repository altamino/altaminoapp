.class public final Landroidx/compose/runtime/collection/IdentityArrayIntMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private keys:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:I

.field private values:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    .line 6
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 13
    return-void
.end method

.method private final b(Ljava/lang/Object;)I
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->a(Ljava/lang/Object;)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-gt v2, v0, :cond_3

    .line 12
    .line 13
    add-int v3, v2, v0

    .line 14
    .line 15
    ushr-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    iget-object v4, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 18
    .line 19
    aget-object v4, v4, v3

    .line 20
    .line 21
    .line 22
    invoke-static {v4}, Landroidx/compose/runtime/ActualJvm_jvmKt;->a(Ljava/lang/Object;)I

    .line 23
    move-result v5

    .line 24
    .line 25
    if-ge v5, v1, :cond_0

    .line 26
    .line 27
    add-int/lit8 v2, v3, 0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    if-le v5, v1, :cond_1

    .line 31
    .line 32
    add-int/lit8 v0, v3, -0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    if-ne v4, p1, :cond_2

    .line 36
    return v3

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-direct {p0, v3, p1, v1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->c(ILjava/lang/Object;I)I

    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    .line 43
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 44
    neg-int p1, v2

    .line 45
    return p1
.end method

.method private final c(ILjava/lang/Object;I)I
    .locals 2

    .line 1
    .line 2
    add-int/lit8 v0, p1, -0x1

    .line 3
    :goto_0
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ge v1, v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    if-ne v1, p2, :cond_0

    .line 12
    return v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->a(Ljava/lang/Object;)I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eq v1, p3, :cond_1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 27
    .line 28
    :goto_2
    if-ge p1, v0, :cond_5

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 31
    .line 32
    aget-object v1, v1, p1

    .line 33
    .line 34
    if-ne v1, p2, :cond_3

    .line 35
    return p1

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-static {v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->a(Ljava/lang/Object;)I

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eq v1, p3, :cond_4

    .line 42
    .line 43
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 44
    neg-int p1, p1

    .line 45
    return p1

    .line 46
    .line 47
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_5
    iget p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 51
    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)V
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->b(Ljava/lang/Object;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 18
    .line 19
    aput p2, p1, v0

    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v0, -0x1

    .line 22
    .line 23
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 24
    neg-int v0, v0

    .line 25
    .line 26
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 29
    array-length v3, v2

    .line 30
    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    array-length v3, v2

    .line 33
    .line 34
    mul-int/lit8 v3, v3, 0x2

    .line 35
    .line 36
    new-array v8, v3, [Ljava/lang/Object;

    .line 37
    array-length v3, v2

    .line 38
    .line 39
    mul-int/lit8 v3, v3, 0x2

    .line 40
    .line 41
    new-array v9, v3, [I

    .line 42
    .line 43
    add-int/lit8 v3, v0, 0x1

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v8, v3, v0, v1}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 49
    .line 50
    iget v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v9, v3, v0, v2}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v6, 0x6

    .line 59
    const/4 v7, 0x0

    .line 60
    move-object v2, v8

    .line 61
    move v5, v0

    .line 62
    .line 63
    .line 64
    invoke-static/range {v1 .. v7}, Lkotlin/collections/l;->m([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 67
    move-object v2, v9

    .line 68
    .line 69
    .line 70
    invoke-static/range {v1 .. v7}, Lkotlin/collections/l;->l([I[IIIIILjava/lang/Object;)[I

    .line 71
    .line 72
    iput-object v8, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 73
    .line 74
    iput-object v9, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v2, v3, v0, v1}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 83
    .line 84
    iget v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v1, v3, v0, v2}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 88
    .line 89
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 90
    .line 91
    aput-object p1, v1, v0

    .line 92
    .line 93
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 94
    .line 95
    aput p2, p1, v0

    .line 96
    .line 97
    iget p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 98
    .line 99
    add-int/lit8 p1, p1, 0x1

    .line 100
    .line 101
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 102
    return-void
.end method

.method public final d()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    return v0
.end method

.method public final f()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    return-object v0
.end method

.method public final g(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    return-void
.end method
