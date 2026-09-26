.class public final Landroidx/compose/runtime/collection/IdentityScopeMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentityScopeMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentityScopeMap.kt\nandroidx/compose/runtime/collection/IdentityScopeMap\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n*L\n1#1,315:1\n236#1,5:318\n241#1,17:339\n236#1,22:356\n61#1:378\n61#1:379\n61#1:380\n1849#2,2:316\n146#3,16:323\n*S KotlinDebug\n*F\n+ 1 IdentityScopeMap.kt\nandroidx/compose/runtime/collection/IdentityScopeMap\n*L\n220#1:318,5\n220#1:339,17\n230#1:356,22\n270#1:378\n292#1:379\n302#1:380\n91#1:316,2\n221#1:323,16\n*E\n"
.end annotation


# instance fields
.field private scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:I

.field private valueOrder:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private values:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x32

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    aput v2, v1, v2

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 18
    .line 19
    new-array v1, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 22
    .line 23
    new-array v0, v0, [Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 26
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->f(Ljava/lang/Object;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->o(I)Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f(Ljava/lang/Object;)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->a(Ljava/lang/Object;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-gt v2, v1, :cond_3

    .line 12
    .line 13
    add-int v3, v2, v1

    .line 14
    .line 15
    ushr-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    iget-object v4, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v5, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 20
    .line 21
    aget v5, v5, v3

    .line 22
    .line 23
    aget-object v4, v4, v5

    .line 24
    .line 25
    .line 26
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v4}, Landroidx/compose/runtime/ActualJvm_jvmKt;->a(Ljava/lang/Object;)I

    .line 30
    move-result v5

    .line 31
    .line 32
    if-ge v5, v0, :cond_0

    .line 33
    .line 34
    add-int/lit8 v2, v3, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    if-le v5, v0, :cond_1

    .line 38
    .line 39
    add-int/lit8 v1, v3, -0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    if-ne p1, v4, :cond_2

    .line 43
    return v3

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-direct {p0, v3, p1, v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->g(ILjava/lang/Object;I)I

    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    .line 50
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 51
    neg-int p1, v2

    .line 52
    return p1
.end method

.method private final g(ILjava/lang/Object;I)I
    .locals 3

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
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 10
    .line 11
    aget v2, v2, v0

    .line 12
    .line 13
    aget-object v1, v1, v2

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    if-ne v1, p2, :cond_0

    .line 19
    return v0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->a(Ljava/lang/Object;)I

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eq v1, p3, :cond_1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 34
    .line 35
    :goto_2
    if-ge p1, v0, :cond_5

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 40
    .line 41
    aget v2, v2, p1

    .line 42
    .line 43
    aget-object v1, v1, v2

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 47
    .line 48
    if-ne v1, p2, :cond_3

    .line 49
    return p1

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-static {v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->a(Ljava/lang/Object;)I

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eq v1, p3, :cond_4

    .line 56
    .line 57
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 58
    neg-int p1, p1

    .line 59
    return p1

    .line 60
    .line 61
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_5
    iget p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 65
    goto :goto_3
.end method

.method private final h(Ljava/lang/Object;)Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->f(Ljava/lang/Object;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ltz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->o(I)Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, -0x1

    .line 17
    .line 18
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 19
    neg-int v5, v0

    .line 20
    .line 21
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 24
    array-length v2, v1

    .line 25
    .line 26
    if-ge v0, v2, :cond_4

    .line 27
    .line 28
    aget v0, v1, v0

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 31
    .line 32
    aput-object p1, v1, v0

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 35
    .line 36
    aget-object p1, p1, v0

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    new-instance p1, Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 46
    .line 47
    aput-object p1, v1, v0

    .line 48
    .line 49
    :cond_2
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 50
    .line 51
    if-ge v5, v1, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 54
    .line 55
    add-int/lit8 v3, v5, 0x1

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v2, v3, v5, v1}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 59
    .line 60
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 61
    .line 62
    aput v0, v1, v5

    .line 63
    .line 64
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    iput v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 69
    return-object p1

    .line 70
    :cond_4
    array-length v1, v1

    .line 71
    .line 72
    mul-int/lit8 v1, v1, 0x2

    .line 73
    .line 74
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    const-string v3, "copyOf(this, newSize)"

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    check-cast v2, [Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 86
    .line 87
    iput-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 88
    .line 89
    new-instance v8, Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 90
    .line 91
    .line 92
    invoke-direct {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    .line 93
    .line 94
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 95
    .line 96
    aput-object v8, v2, v0

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    iput-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 108
    .line 109
    aput-object p1, v2, v0

    .line 110
    .line 111
    new-array p1, v1, [I

    .line 112
    .line 113
    iget v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 114
    .line 115
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    if-ge v2, v1, :cond_5

    .line 118
    .line 119
    aput v2, p1, v2

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_5
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 123
    .line 124
    if-ge v5, v1, :cond_6

    .line 125
    .line 126
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 127
    .line 128
    add-int/lit8 v3, v5, 0x1

    .line 129
    .line 130
    .line 131
    invoke-static {v2, p1, v3, v5, v1}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 132
    .line 133
    :cond_6
    aput v0, p1, v5

    .line 134
    .line 135
    if-lez v5, :cond_7

    .line 136
    .line 137
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 138
    const/4 v3, 0x0

    .line 139
    const/4 v4, 0x0

    .line 140
    const/4 v6, 0x6

    .line 141
    const/4 v7, 0x0

    .line 142
    move-object v2, p1

    .line 143
    .line 144
    .line 145
    invoke-static/range {v1 .. v7}, Lkotlin/collections/l;->l([I[IIIIILjava/lang/Object;)[I

    .line 146
    .line 147
    :cond_7
    iput-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 148
    .line 149
    iget p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 150
    .line 151
    add-int/lit8 p1, p1, 0x1

    .line 152
    .line 153
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 154
    return-object v8
.end method

.method private final o(I)Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 5
    .line 6
    aget p1, v1, p1

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 12
    return-object p1
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "scope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->h(Ljava/lang/Object;)Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final d()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 10
    .line 11
    aget-object v3, v3, v2

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;->clear()V

    .line 17
    .line 18
    :cond_0
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 19
    .line 20
    aput v2, v3, v2

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    aput-object v4, v3, v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    iput v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 31
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "element"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->f(Ljava/lang/Object;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method public final i()[Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return v0
.end method

.method public final k()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    return-object v0
.end method

.method public final l()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "scope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->f(Ljava/lang/Object;)I

    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    if-ltz p1, :cond_3

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 20
    .line 21
    aget v1, v1, p1

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 24
    .line 25
    aget-object v2, v2, v1

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    return v0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v2, p2}, Landroidx/compose/runtime/collection/IdentityArraySet;->remove(Ljava/lang/Object;)Z

    .line 32
    move-result p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x1

    .line 41
    .line 42
    iget v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 43
    .line 44
    if-ge v0, v2, :cond_1

    .line 45
    .line 46
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v3, p1, v0, v2}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 52
    .line 53
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 54
    .line 55
    add-int/lit8 v2, v0, -0x1

    .line 56
    .line 57
    aput v1, p1, v2

    .line 58
    .line 59
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 60
    const/4 v2, 0x0

    .line 61
    .line 62
    aput-object v2, p1, v1

    .line 63
    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    iput v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    .line 67
    :cond_2
    return p2

    .line 68
    :cond_3
    return v0
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "scope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 17
    move-result-object v3

    .line 18
    .line 19
    aget v3, v3, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->i()[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    aget-object v4, v4, v3

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 35
    move-result v4

    .line 36
    .line 37
    if-lez v4, :cond_1

    .line 38
    .line 39
    if-eq v2, v1, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 43
    move-result-object v4

    .line 44
    .line 45
    aget v4, v4, v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 49
    move-result-object v5

    .line 50
    .line 51
    aput v3, v5, v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 55
    move-result-object v3

    .line 56
    .line 57
    aput v4, v3, v1

    .line 58
    .line 59
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 66
    move-result p1

    .line 67
    move v0, v2

    .line 68
    .line 69
    :goto_1
    if-ge v0, p1, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->l()[Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 77
    move-result-object v3

    .line 78
    .line 79
    aget v3, v3, v0

    .line 80
    const/4 v4, 0x0

    .line 81
    .line 82
    aput-object v4, v1, v3

    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->p(I)V

    .line 89
    return-void
.end method

.method public final p(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return-void
.end method
