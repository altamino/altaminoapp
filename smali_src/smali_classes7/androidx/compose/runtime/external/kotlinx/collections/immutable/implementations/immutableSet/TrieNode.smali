.class public final Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrieNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode\n+ 2 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt\n+ 3 ForEachOneBit.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ForEachOneBitKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt$filterTo$1\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,851:1\n54#2,13:852\n50#2,17:865\n50#2,17:882\n50#2,10:918\n60#2,7:929\n50#2,10:945\n60#2,7:956\n10#3,5:899\n15#3,4:905\n10#3,9:909\n10#3,9:936\n10#3,9:965\n1#4:904\n53#5:928\n53#5:955\n12530#6,2:963\n26#7:974\n*S KotlinDebug\n*F\n+ 1 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode\n*L\n297#1:852,13\n324#1:865,17\n347#1:882,17\n594#1:918,10\n594#1:929,7\n701#1:945,10\n701#1:956,7\n423#1:899,5\n423#1:905,4\n525#1:909,9\n621#1:936,9\n717#1:965,9\n594#1:928\n701#1:955\n710#1:963,2\n849#1:974\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bitmap:I

.field private buffer:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->Companion:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;)V

    .line 17
    .line 18
    sput-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 19
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 1
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V
    .locals 1
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    iput-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    return-void
.end method

.method private final A(ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
            ")",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 3
    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 26
    return-object v0
.end method

.method private final B(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 5
    array-length p1, p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 12
    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 23
    array-length v0, v0

    .line 24
    .line 25
    iget-object v1, p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 26
    array-length v1, v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v0

    .line 31
    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 35
    const/4 v2, 0x0

    .line 36
    move v3, v2

    .line 37
    move v4, v3

    .line 38
    :goto_1
    array-length v5, v1

    .line 39
    const/4 v6, 0x1

    .line 40
    .line 41
    if-ge v3, v5, :cond_5

    .line 42
    .line 43
    if-gt v4, v3, :cond_2

    .line 44
    move v5, v6

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move v5, v2

    .line 47
    .line 48
    .line 49
    :goto_2
    invoke-static {v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->a(Z)V

    .line 50
    .line 51
    aget-object v5, v1, v3

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->f(Ljava/lang/Object;)Z

    .line 55
    move-result v5

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    aget-object v5, v1, v3

    .line 60
    .line 61
    aput-object v5, v0, v4

    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    array-length v5, v0

    .line 65
    .line 66
    if-gt v4, v5, :cond_3

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move v6, v2

    .line 69
    .line 70
    .line 71
    :goto_3
    invoke-static {v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->a(Z)V

    .line 72
    .line 73
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 78
    .line 79
    if-nez v4, :cond_6

    .line 80
    .line 81
    sget-object p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 82
    goto :goto_4

    .line 83
    .line 84
    :cond_6
    if-ne v4, v6, :cond_7

    .line 85
    .line 86
    aget-object p1, v0, v2

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_7
    iget-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 90
    array-length p2, p2

    .line 91
    .line 92
    if-ne v4, p2, :cond_8

    .line 93
    move-object p1, p0

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_8
    iget-object p2, p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 97
    array-length p2, p2

    .line 98
    .line 99
    if-ne v4, p2, :cond_9

    .line 100
    goto :goto_4

    .line 101
    :cond_9
    array-length p1, v0

    .line 102
    .line 103
    if-ne v4, p1, :cond_a

    .line 104
    .line 105
    new-instance p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, v2, v0, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 109
    goto :goto_4

    .line 110
    .line 111
    :cond_a
    new-instance p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    const-string v0, "copyOf(this, newSize)"

    .line 118
    .line 119
    .line 120
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p1, v2, p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 124
    :goto_4
    return-object p1
.end method

.method private final C(IILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
            ")",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 3
    .line 4
    if-ne v0, p5, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-direct/range {p0 .. p5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->r(IILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    aput-object p2, v0, p1

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 16
    array-length v1, v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "copyOf(this, size)"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct/range {p0 .. p5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->r(IILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    aput-object p2, v0, p1

    .line 32
    .line 33
    new-instance p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 34
    .line 35
    iget p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p2, v0, p5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 39
    return-object p1
.end method

.method private final F(IILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
            ")",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 3
    .line 4
    if-ne v0, p3, :cond_0

    .line 5
    .line 6
    iget-object p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 13
    .line 14
    iget p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 15
    xor-int/2addr p1, p2

    .line 16
    .line 17
    iput p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 18
    return-object p0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 29
    xor-int/2addr p2, v1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p2, p1, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 33
    return-object v0
.end method

.method private final H(ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
            ")",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    instance-of v1, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 16
    array-length v1, v1

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 21
    .line 22
    iput p1, p2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 23
    return-object p2

    .line 24
    :cond_0
    move-object p2, v0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 27
    .line 28
    if-ne v0, p3, :cond_2

    .line 29
    .line 30
    iget-object p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 31
    .line 32
    aput-object p2, p3, p1

    .line 33
    return-object p0

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 36
    array-length v1, v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "copyOf(this, size)"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    aput-object p2, v0, p1

    .line 48
    .line 49
    new-instance p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 50
    .line 51
    iget p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2, v0, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 55
    return-object p1
.end method

.method private final I(I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    check-cast p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 12
    .line 13
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1
.end method

.method private final K(II)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 11
    xor-int/2addr p2, v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p2, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;)V

    .line 15
    return-object v0
.end method

.method private final L(ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    instance-of v1, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 16
    array-length v1, v1

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 21
    .line 22
    iput p1, p2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 23
    return-object p2

    .line 24
    :cond_0
    move-object p2, v0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 27
    array-length v1, v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "copyOf(this, size)"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    aput-object p2, v0, p1

    .line 39
    .line 40
    new-instance p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 41
    .line 42
    iget p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;)V

    .line 46
    return-object p1
.end method

.method public static final synthetic a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    return-object v0
.end method

.method private final c(ILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 15
    or-int/2addr p1, v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;)V

    .line 19
    return-object v0
.end method

.method private final d()I
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 7
    array-length v0, v0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    aget-object v4, v0, v2

    .line 18
    .line 19
    instance-of v5, v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    check-cast v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 24
    .line 25
    .line 26
    invoke-direct {v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->d()I

    .line 27
    move-result v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v4, 0x1

    .line 30
    :goto_1
    add-int/2addr v3, v4

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v3
.end method

.method private final e(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->f(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;)V

    .line 20
    return-object v0
.end method

.method private final f(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lkotlin/collections/l;->F([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private final g(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lkotlin/collections/l;->X([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->h(I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    return-object p0
.end method

.method private final h(I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;)V

    .line 13
    return-object v0
.end method

.method private final k(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method private final l(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 7
    .line 8
    iget v2, p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    return v3

    .line 13
    .line 14
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 15
    array-length v1, v1

    .line 16
    move v2, v3

    .line 17
    .line 18
    :goto_0
    if-ge v2, v1, :cond_3

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 21
    .line 22
    aget-object v4, v4, v2

    .line 23
    .line 24
    iget-object v5, p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 25
    .line 26
    aget-object v5, v5, v2

    .line 27
    .line 28
    if-eq v4, v5, :cond_2

    .line 29
    return v3

    .line 30
    .line 31
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return v0
.end method

.method private final o(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final q(ILjava/lang/Object;ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;ITE;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
            ")",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    move/from16 v0, p5

    .line 3
    .line 4
    move-object/from16 v7, p6

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v9, 0x1

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 14
    .line 15
    new-array v1, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object p2, v1, v8

    .line 18
    .line 19
    aput-object p4, v1, v9

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v8, v1, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 23
    return-object v0

    .line 24
    :cond_0
    move v1, p1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->d(II)I

    .line 28
    move-result v10

    .line 29
    move v3, p3

    .line 30
    .line 31
    .line 32
    invoke-static {p3, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->d(II)I

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eq v10, v4, :cond_2

    .line 36
    .line 37
    if-ge v10, v4, :cond_1

    .line 38
    .line 39
    new-array v0, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object p2, v0, v8

    .line 42
    .line 43
    aput-object p4, v0, v9

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object p4, v0, v8

    .line 49
    .line 50
    aput-object p2, v0, v9

    .line 51
    .line 52
    :goto_0
    new-instance v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 53
    .line 54
    shl-int v2, v9, v10

    .line 55
    .line 56
    shl-int v3, v9, v4

    .line 57
    or-int/2addr v2, v3

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v2, v0, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 61
    return-object v1

    .line 62
    .line 63
    :cond_2
    add-int/lit8 v5, v0, 0x5

    .line 64
    move-object v0, p0

    .line 65
    move v1, p1

    .line 66
    move-object v2, p2

    .line 67
    move v3, p3

    .line 68
    move-object v4, p4

    .line 69
    .line 70
    move-object/from16 v6, p6

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->q(ILjava/lang/Object;ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    new-instance v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 77
    .line 78
    shl-int v2, v9, v10

    .line 79
    .line 80
    new-array v3, v9, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v0, v3, v8

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v2, v3, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 86
    return-object v1
.end method

.method private final r(IILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
            ")",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->k(I)Ljava/lang/Object;

    .line 4
    move-result-object v2

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 10
    move-result p1

    .line 11
    :goto_0
    move v1, p1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :goto_1
    add-int/lit8 v5, p4, 0x5

    .line 17
    move-object v0, p0

    .line 18
    move v3, p2

    .line 19
    move-object v4, p3

    .line 20
    move-object v6, p5

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->q(ILjava/lang/Object;ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private final s(IILjava/lang/Object;I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;I)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "copyOf(this, size)"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v2, p0

    .line 15
    move v3, p1

    .line 16
    move v4, p2

    .line 17
    move-object v5, p3

    .line 18
    move v6, p4

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->r(IILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    aput-object p2, v0, p1

    .line 25
    .line 26
    new-instance p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 27
    .line 28
    iget p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;)V

    .line 32
    return-object p1
.end method

.method private final v(ILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
            ")",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 7
    .line 8
    if-ne v1, p3, :cond_0

    .line 9
    .line 10
    iget-object p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p3, v0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 17
    .line 18
    iget p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 19
    or-int/2addr p1, p2

    .line 20
    .line 21
    iput p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 22
    return-object p0

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 31
    .line 32
    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 33
    or-int/2addr p1, v1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 37
    return-object v0
.end method

.method private final w(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder<",
            "*>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->f(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Lkotlin/collections/h;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->m(I)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {p2, v2, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 34
    return-object p0

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v2, p1, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 50
    return-object v0
.end method

.method private final x(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
            ")",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 5
    array-length p1, p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 12
    array-length v1, v0

    .line 13
    .line 14
    iget-object v2, p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 15
    array-length v2, v2

    .line 16
    add-int/2addr v1, v2

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "copyOf(this, newSize)"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    iget-object v2, p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 30
    array-length v3, v3

    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    move v6, v5

    .line 34
    :goto_0
    array-length v7, v2

    .line 35
    .line 36
    if-ge v5, v7, :cond_4

    .line 37
    const/4 v7, 0x1

    .line 38
    .line 39
    if-gt v6, v5, :cond_1

    .line 40
    move v8, v7

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v8, v4

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-static {v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->a(Z)V

    .line 46
    .line 47
    aget-object v8, v2, v5

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->f(Ljava/lang/Object;)Z

    .line 51
    move-result v8

    .line 52
    xor-int/2addr v8, v7

    .line 53
    .line 54
    if-eqz v8, :cond_3

    .line 55
    .line 56
    add-int v8, v3, v6

    .line 57
    .line 58
    aget-object v9, v2, v5

    .line 59
    .line 60
    aput-object v9, v0, v8

    .line 61
    .line 62
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    add-int v8, v3, v6

    .line 65
    array-length v9, v0

    .line 66
    .line 67
    if-gt v8, v9, :cond_2

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v7, v4

    .line 70
    .line 71
    .line 72
    :goto_2
    invoke-static {v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->a(Z)V

    .line 73
    .line 74
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_4
    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 78
    array-length v2, v2

    .line 79
    add-int/2addr v6, v2

    .line 80
    array-length v2, v0

    .line 81
    sub-int/2addr v2, v6

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 85
    .line 86
    iget-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 87
    array-length p2, p2

    .line 88
    .line 89
    if-ne v6, p2, :cond_5

    .line 90
    return-object p0

    .line 91
    .line 92
    :cond_5
    iget-object p2, p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 93
    array-length p2, p2

    .line 94
    .line 95
    if-ne v6, p2, :cond_6

    .line 96
    return-object p1

    .line 97
    :cond_6
    array-length p1, v0

    .line 98
    .line 99
    if-ne v6, p1, :cond_7

    .line 100
    goto :goto_3

    .line 101
    .line 102
    .line 103
    :cond_7
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    :goto_3
    iget-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 110
    .line 111
    .line 112
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    move-result p1

    .line 114
    .line 115
    if-eqz p1, :cond_8

    .line 116
    .line 117
    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 118
    move-object p1, p0

    .line 119
    goto :goto_4

    .line 120
    .line 121
    :cond_8
    new-instance p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 122
    .line 123
    .line 124
    invoke-direct {p1, v4, v0, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 125
    :goto_4
    return-object p1
.end method

.method private final y(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder<",
            "*>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lkotlin/collections/l;->X([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lkotlin/collections/h;->size()I

    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->m(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->A(ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    return-object p0
.end method

.method private final z(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 5
    array-length p1, p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 9
    .line 10
    sget-object p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 25
    array-length v0, v0

    .line 26
    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 30
    const/4 v2, 0x0

    .line 31
    move v3, v2

    .line 32
    move v4, v3

    .line 33
    :goto_1
    array-length v5, v1

    .line 34
    const/4 v6, 0x1

    .line 35
    .line 36
    if-ge v3, v5, :cond_5

    .line 37
    .line 38
    if-gt v4, v3, :cond_2

    .line 39
    move v5, v6

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v5, v2

    .line 42
    .line 43
    .line 44
    :goto_2
    invoke-static {v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->a(Z)V

    .line 45
    .line 46
    aget-object v5, v1, v3

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->f(Ljava/lang/Object;)Z

    .line 50
    move-result v5

    .line 51
    xor-int/2addr v5, v6

    .line 52
    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    aget-object v5, v1, v3

    .line 56
    .line 57
    aput-object v5, v0, v4

    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 60
    array-length v5, v0

    .line 61
    .line 62
    if-gt v4, v5, :cond_3

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move v6, v2

    .line 65
    .line 66
    .line 67
    :goto_3
    invoke-static {v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->a(Z)V

    .line 68
    .line 69
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_5
    iget-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 73
    array-length p1, p1

    .line 74
    sub-int/2addr p1, v4

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 78
    .line 79
    if-nez v4, :cond_6

    .line 80
    .line 81
    sget-object p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 82
    goto :goto_4

    .line 83
    .line 84
    :cond_6
    if-ne v4, v6, :cond_7

    .line 85
    .line 86
    aget-object p1, v0, v2

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_7
    iget-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 90
    array-length p1, p1

    .line 91
    .line 92
    if-ne v4, p1, :cond_8

    .line 93
    move-object p1, p0

    .line 94
    goto :goto_4

    .line 95
    :cond_8
    array-length p1, v0

    .line 96
    .line 97
    if-ne v4, p1, :cond_9

    .line 98
    .line 99
    new-instance p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, v2, v0, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 103
    goto :goto_4

    .line 104
    .line 105
    :cond_9
    new-instance p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    const-string v0, "copyOf(this, newSize)"

    .line 112
    .line 113
    .line 114
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, v2, p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 118
    :goto_4
    return-object p1
.end method


# virtual methods
.method public final D(ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 4
    .param p4    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder<",
            "*>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "mutator"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->d(II)I

    .line 10
    move-result v1

    .line 11
    shl-int/2addr v0, v1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->o(I)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    return-object p0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 22
    move-result v1

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 25
    .line 26
    aget-object v2, v2, v1

    .line 27
    .line 28
    instance-of v3, v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 29
    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->I(I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const/16 v2, 0x1e

    .line 37
    .line 38
    if-ne p3, v2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p2, p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->y(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    add-int/lit8 p3, p3, 0x5

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->D(ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    :goto_0
    iget-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 55
    move-result-object p3

    .line 56
    .line 57
    if-eq p2, p3, :cond_3

    .line 58
    .line 59
    if-eq v0, p1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    return-object p0

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_1
    invoke-virtual {p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v1, p1, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->H(ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-static {p2, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    move-result p1

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4}, Lkotlin/collections/h;->size()I

    .line 80
    move-result p1

    .line 81
    .line 82
    add-int/lit8 p1, p1, -0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->m(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v1, v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->F(IILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_5
    return-object p0
.end method

.method public final E(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Ljava/lang/Object;
    .locals 16
    .param p1    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p4

    .line 11
    .line 12
    const-string v5, "otherNode"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v5, "intersectionSizeRef"

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v5, "mutator"

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->d()I

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 35
    .line 36
    sget-object v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 37
    return-object v1

    .line 38
    .line 39
    :cond_0
    const/16 v5, 0x1e

    .line 40
    .line 41
    if-le v2, v5, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v3, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->z(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    return-object v1

    .line 51
    .line 52
    :cond_1
    iget v5, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 53
    .line 54
    iget v6, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 55
    and-int/2addr v5, v6

    .line 56
    .line 57
    if-nez v5, :cond_2

    .line 58
    return-object v0

    .line 59
    .line 60
    :cond_2
    iget-object v6, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    .line 67
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v6

    .line 69
    .line 70
    if-eqz v6, :cond_3

    .line 71
    move-object v6, v0

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_3
    new-instance v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 75
    .line 76
    iget v7, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 77
    .line 78
    iget-object v8, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 79
    array-length v9, v8

    .line 80
    .line 81
    .line 82
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 83
    move-result-object v8

    .line 84
    .line 85
    const-string v9, "copyOf(this, size)"

    .line 86
    .line 87
    .line 88
    invoke-static {v8, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 92
    move-result-object v9

    .line 93
    .line 94
    .line 95
    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 96
    .line 97
    :goto_0
    iget v7, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 98
    .line 99
    :goto_1
    if-eqz v5, :cond_10

    .line 100
    .line 101
    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->lowestOneBit(I)I

    .line 103
    move-result v10

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 107
    move-result v11

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 111
    move-result v12

    .line 112
    .line 113
    iget-object v13, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 114
    .line 115
    aget-object v13, v13, v11

    .line 116
    .line 117
    iget-object v14, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 118
    .line 119
    aget-object v12, v14, v12

    .line 120
    .line 121
    instance-of v14, v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 122
    .line 123
    instance-of v15, v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 124
    .line 125
    const-string v8, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRemoveAll$lambda-11$lambda-10>"

    .line 126
    .line 127
    if-eqz v14, :cond_6

    .line 128
    .line 129
    if-eqz v15, :cond_6

    .line 130
    .line 131
    if-eqz v13, :cond_5

    .line 132
    .line 133
    check-cast v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 134
    .line 135
    if-eqz v12, :cond_4

    .line 136
    .line 137
    check-cast v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 138
    .line 139
    add-int/lit8 v8, v2, 0x5

    .line 140
    .line 141
    .line 142
    invoke-virtual {v13, v12, v8, v3, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->E(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Ljava/lang/Object;

    .line 143
    move-result-object v13

    .line 144
    .line 145
    goto/16 :goto_4

    .line 146
    .line 147
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v1

    .line 152
    .line 153
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    .line 154
    .line 155
    .line 156
    invoke-direct {v1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 157
    throw v1

    .line 158
    .line 159
    :cond_6
    if-eqz v14, :cond_a

    .line 160
    .line 161
    if-eqz v13, :cond_9

    .line 162
    move-object v8, v13

    .line 163
    .line 164
    check-cast v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p4 .. p4}, Lkotlin/collections/h;->size()I

    .line 168
    move-result v14

    .line 169
    .line 170
    if-eqz v12, :cond_7

    .line 171
    .line 172
    .line 173
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 174
    move-result v15

    .line 175
    goto :goto_2

    .line 176
    :cond_7
    const/4 v15, 0x0

    .line 177
    .line 178
    :goto_2
    add-int/lit8 v9, v2, 0x5

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8, v15, v12, v9, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->D(ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 182
    move-result-object v8

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p4 .. p4}, Lkotlin/collections/h;->size()I

    .line 186
    move-result v9

    .line 187
    .line 188
    if-eq v14, v9, :cond_e

    .line 189
    const/4 v9, 0x1

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 193
    .line 194
    iget-object v12, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 195
    array-length v13, v12

    .line 196
    .line 197
    if-ne v13, v9, :cond_8

    .line 198
    const/4 v9, 0x0

    .line 199
    .line 200
    aget-object v13, v12, v9

    .line 201
    .line 202
    instance-of v9, v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 203
    .line 204
    if-nez v9, :cond_8

    .line 205
    goto :goto_4

    .line 206
    :cond_8
    move-object v13, v8

    .line 207
    goto :goto_4

    .line 208
    .line 209
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    .line 210
    .line 211
    .line 212
    invoke-direct {v1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 213
    throw v1

    .line 214
    .line 215
    :cond_a
    if-eqz v15, :cond_d

    .line 216
    .line 217
    if-eqz v12, :cond_c

    .line 218
    .line 219
    check-cast v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 220
    .line 221
    if-eqz v13, :cond_b

    .line 222
    .line 223
    .line 224
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 225
    move-result v8

    .line 226
    goto :goto_3

    .line 227
    :cond_b
    const/4 v8, 0x0

    .line 228
    .line 229
    :goto_3
    add-int/lit8 v9, v2, 0x5

    .line 230
    .line 231
    .line 232
    invoke-virtual {v12, v8, v13, v9}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->i(ILjava/lang/Object;I)Z

    .line 233
    move-result v8

    .line 234
    .line 235
    if-eqz v8, :cond_e

    .line 236
    const/4 v8, 0x1

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 240
    .line 241
    sget-object v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 242
    goto :goto_4

    .line 243
    .line 244
    :cond_c
    new-instance v1, Ljava/lang/NullPointerException;

    .line 245
    .line 246
    .line 247
    invoke-direct {v1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 248
    throw v1

    .line 249
    :cond_d
    const/4 v8, 0x1

    .line 250
    .line 251
    .line 252
    invoke-static {v13, v12}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    move-result v9

    .line 254
    .line 255
    if-eqz v9, :cond_e

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 259
    .line 260
    sget-object v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 261
    .line 262
    :cond_e
    :goto_4
    sget-object v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 263
    .line 264
    if-ne v13, v8, :cond_f

    .line 265
    xor-int/2addr v7, v10

    .line 266
    .line 267
    :cond_f
    iget-object v8, v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 268
    .line 269
    aput-object v13, v8, v11

    .line 270
    xor-int/2addr v5, v10

    .line 271
    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    .line 275
    :cond_10
    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    .line 276
    move-result v1

    .line 277
    .line 278
    if-nez v7, :cond_11

    .line 279
    .line 280
    sget-object v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 281
    .line 282
    goto/16 :goto_8

    .line 283
    .line 284
    :cond_11
    iget v3, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 285
    .line 286
    if-ne v7, v3, :cond_12

    .line 287
    .line 288
    .line 289
    invoke-direct {v6, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->l(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;)Z

    .line 290
    move-result v1

    .line 291
    .line 292
    if-eqz v1, :cond_18

    .line 293
    move-object v6, v0

    .line 294
    goto :goto_8

    .line 295
    :cond_12
    const/4 v9, 0x1

    .line 296
    .line 297
    if-ne v1, v9, :cond_13

    .line 298
    .line 299
    if-eqz v2, :cond_13

    .line 300
    .line 301
    iget-object v1, v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 305
    move-result v2

    .line 306
    .line 307
    aget-object v6, v1, v2

    .line 308
    .line 309
    instance-of v1, v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 310
    .line 311
    if-eqz v1, :cond_18

    .line 312
    .line 313
    new-instance v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 314
    .line 315
    new-array v2, v9, [Ljava/lang/Object;

    .line 316
    const/4 v3, 0x0

    .line 317
    .line 318
    aput-object v6, v2, v3

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 322
    move-result-object v3

    .line 323
    .line 324
    .line 325
    invoke-direct {v1, v7, v2, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 326
    move-object v6, v1

    .line 327
    goto :goto_8

    .line 328
    :cond_13
    const/4 v3, 0x0

    .line 329
    .line 330
    new-array v2, v1, [Ljava/lang/Object;

    .line 331
    .line 332
    iget-object v5, v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 333
    move v6, v3

    .line 334
    move v8, v6

    .line 335
    :goto_5
    array-length v10, v5

    .line 336
    .line 337
    if-ge v6, v10, :cond_17

    .line 338
    .line 339
    if-gt v8, v6, :cond_14

    .line 340
    move v10, v9

    .line 341
    goto :goto_6

    .line 342
    :cond_14
    move v10, v3

    .line 343
    .line 344
    .line 345
    :goto_6
    invoke-static {v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->a(Z)V

    .line 346
    .line 347
    aget-object v10, v5, v6

    .line 348
    .line 349
    sget-object v11, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->Companion:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode$Companion;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v11}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode$Companion;->a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 353
    move-result-object v11

    .line 354
    .line 355
    if-eq v10, v11, :cond_16

    .line 356
    .line 357
    aget-object v10, v5, v6

    .line 358
    .line 359
    aput-object v10, v2, v8

    .line 360
    .line 361
    add-int/lit8 v8, v8, 0x1

    .line 362
    .line 363
    if-gt v8, v1, :cond_15

    .line 364
    move v10, v9

    .line 365
    goto :goto_7

    .line 366
    :cond_15
    move v10, v3

    .line 367
    .line 368
    .line 369
    :goto_7
    invoke-static {v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->a(Z)V

    .line 370
    .line 371
    :cond_16
    add-int/lit8 v6, v6, 0x1

    .line 372
    goto :goto_5

    .line 373
    .line 374
    :cond_17
    new-instance v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 375
    .line 376
    .line 377
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 378
    move-result-object v1

    .line 379
    .line 380
    .line 381
    invoke-direct {v6, v7, v2, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 382
    :cond_18
    :goto_8
    return-object v6
.end method

.method public final G(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Ljava/lang/Object;
    .locals 16
    .param p1    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p4

    .line 11
    .line 12
    const-string v5, "otherNode"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v5, "intersectionSizeRef"

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v5, "mutator"

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->d()I

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 35
    return-object v0

    .line 36
    .line 37
    :cond_0
    const/16 v5, 0x1e

    .line 38
    .line 39
    if-le v2, v5, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1, v3, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->B(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    return-object v1

    .line 49
    .line 50
    :cond_1
    iget v5, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 51
    .line 52
    iget v6, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 53
    and-int/2addr v5, v6

    .line 54
    .line 55
    if-nez v5, :cond_2

    .line 56
    .line 57
    sget-object v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 58
    return-object v1

    .line 59
    .line 60
    :cond_2
    iget-object v6, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    .line 67
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v6

    .line 69
    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    iget v6, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 73
    .line 74
    if-ne v5, v6, :cond_3

    .line 75
    move-object v6, v0

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_3
    new-instance v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 79
    .line 80
    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    .line 82
    move-result v7

    .line 83
    .line 84
    new-array v7, v7, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 88
    move-result-object v8

    .line 89
    .line 90
    .line 91
    invoke-direct {v6, v5, v7, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 92
    :goto_0
    move v8, v5

    .line 93
    const/4 v9, 0x0

    .line 94
    const/4 v10, 0x0

    .line 95
    .line 96
    :goto_1
    if-eqz v8, :cond_11

    .line 97
    .line 98
    .line 99
    invoke-static {v8}, Ljava/lang/Integer;->lowestOneBit(I)I

    .line 100
    move-result v12

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 104
    move-result v13

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 108
    move-result v14

    .line 109
    .line 110
    iget-object v15, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 111
    .line 112
    aget-object v13, v15, v13

    .line 113
    .line 114
    iget-object v15, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 115
    .line 116
    aget-object v14, v15, v14

    .line 117
    .line 118
    instance-of v15, v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 119
    .line 120
    instance-of v7, v14, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 121
    .line 122
    const-string v11, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRetainAll$lambda-9$lambda-8>"

    .line 123
    .line 124
    if-eqz v15, :cond_6

    .line 125
    .line 126
    if-eqz v7, :cond_6

    .line 127
    .line 128
    if-eqz v13, :cond_5

    .line 129
    .line 130
    check-cast v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 131
    .line 132
    if-eqz v14, :cond_4

    .line 133
    .line 134
    check-cast v14, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 135
    .line 136
    add-int/lit8 v7, v2, 0x5

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13, v14, v7, v3, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->G(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Ljava/lang/Object;

    .line 140
    move-result-object v13

    .line 141
    goto :goto_4

    .line 142
    .line 143
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 147
    throw v1

    .line 148
    .line 149
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 153
    throw v1

    .line 154
    .line 155
    :cond_6
    if-eqz v15, :cond_a

    .line 156
    .line 157
    if-eqz v13, :cond_9

    .line 158
    .line 159
    check-cast v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 160
    .line 161
    if-eqz v14, :cond_7

    .line 162
    .line 163
    .line 164
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 165
    move-result v7

    .line 166
    goto :goto_2

    .line 167
    :cond_7
    const/4 v7, 0x0

    .line 168
    .line 169
    :goto_2
    add-int/lit8 v11, v2, 0x5

    .line 170
    .line 171
    .line 172
    invoke-virtual {v13, v7, v14, v11}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->i(ILjava/lang/Object;I)Z

    .line 173
    move-result v7

    .line 174
    .line 175
    if-eqz v7, :cond_8

    .line 176
    const/4 v7, 0x1

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 180
    move-object v13, v14

    .line 181
    goto :goto_4

    .line 182
    .line 183
    :cond_8
    sget-object v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 184
    goto :goto_4

    .line 185
    .line 186
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 190
    throw v1

    .line 191
    .line 192
    :cond_a
    if-eqz v7, :cond_e

    .line 193
    .line 194
    if-eqz v14, :cond_d

    .line 195
    .line 196
    check-cast v14, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 197
    .line 198
    if-eqz v13, :cond_b

    .line 199
    .line 200
    .line 201
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 202
    move-result v7

    .line 203
    goto :goto_3

    .line 204
    :cond_b
    const/4 v7, 0x0

    .line 205
    .line 206
    :goto_3
    add-int/lit8 v11, v2, 0x5

    .line 207
    .line 208
    .line 209
    invoke-virtual {v14, v7, v13, v11}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->i(ILjava/lang/Object;I)Z

    .line 210
    move-result v7

    .line 211
    .line 212
    if-eqz v7, :cond_c

    .line 213
    const/4 v7, 0x1

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 217
    goto :goto_4

    .line 218
    :cond_c
    const/4 v7, 0x1

    .line 219
    .line 220
    sget-object v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 221
    goto :goto_4

    .line 222
    .line 223
    :cond_d
    new-instance v1, Ljava/lang/NullPointerException;

    .line 224
    .line 225
    .line 226
    invoke-direct {v1, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 227
    throw v1

    .line 228
    :cond_e
    const/4 v7, 0x1

    .line 229
    .line 230
    .line 231
    invoke-static {v13, v14}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    move-result v11

    .line 233
    .line 234
    if-eqz v11, :cond_f

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->b(I)V

    .line 238
    goto :goto_4

    .line 239
    .line 240
    :cond_f
    sget-object v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 241
    .line 242
    :goto_4
    sget-object v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 243
    .line 244
    if-eq v13, v7, :cond_10

    .line 245
    or-int/2addr v9, v12

    .line 246
    .line 247
    :cond_10
    iget-object v7, v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 248
    .line 249
    aput-object v13, v7, v10

    .line 250
    const/4 v7, 0x1

    .line 251
    add-int/2addr v10, v7

    .line 252
    xor-int/2addr v8, v12

    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    .line 257
    :cond_11
    invoke-static {v9}, Ljava/lang/Integer;->bitCount(I)I

    .line 258
    move-result v3

    .line 259
    .line 260
    if-nez v9, :cond_12

    .line 261
    .line 262
    sget-object v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 263
    .line 264
    goto/16 :goto_9

    .line 265
    .line 266
    :cond_12
    if-ne v9, v5, :cond_15

    .line 267
    .line 268
    .line 269
    invoke-direct {v6, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->l(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;)Z

    .line 270
    move-result v2

    .line 271
    .line 272
    if-eqz v2, :cond_13

    .line 273
    move-object v1, v0

    .line 274
    .line 275
    goto/16 :goto_9

    .line 276
    .line 277
    .line 278
    :cond_13
    invoke-direct {v6, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->l(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;)Z

    .line 279
    move-result v2

    .line 280
    .line 281
    if-eqz v2, :cond_14

    .line 282
    .line 283
    goto/16 :goto_9

    .line 284
    :cond_14
    move-object v1, v6

    .line 285
    goto :goto_9

    .line 286
    :cond_15
    const/4 v7, 0x1

    .line 287
    .line 288
    if-ne v3, v7, :cond_16

    .line 289
    .line 290
    if-eqz v2, :cond_16

    .line 291
    .line 292
    iget-object v1, v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 296
    move-result v2

    .line 297
    .line 298
    aget-object v1, v1, v2

    .line 299
    .line 300
    instance-of v2, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 301
    .line 302
    if-eqz v2, :cond_1b

    .line 303
    .line 304
    new-instance v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 305
    .line 306
    new-array v3, v7, [Ljava/lang/Object;

    .line 307
    const/4 v5, 0x0

    .line 308
    .line 309
    aput-object v1, v3, v5

    .line 310
    .line 311
    .line 312
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 313
    move-result-object v1

    .line 314
    .line 315
    .line 316
    invoke-direct {v2, v9, v3, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 317
    :goto_5
    move-object v1, v2

    .line 318
    goto :goto_9

    .line 319
    :cond_16
    const/4 v5, 0x0

    .line 320
    .line 321
    new-array v1, v3, [Ljava/lang/Object;

    .line 322
    .line 323
    iget-object v2, v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 324
    move v6, v5

    .line 325
    move v8, v6

    .line 326
    :goto_6
    array-length v10, v2

    .line 327
    .line 328
    if-ge v6, v10, :cond_1a

    .line 329
    .line 330
    if-gt v8, v6, :cond_17

    .line 331
    move v10, v7

    .line 332
    goto :goto_7

    .line 333
    :cond_17
    move v10, v5

    .line 334
    .line 335
    .line 336
    :goto_7
    invoke-static {v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->a(Z)V

    .line 337
    .line 338
    aget-object v10, v2, v6

    .line 339
    .line 340
    sget-object v11, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->Companion:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode$Companion;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v11}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode$Companion;->a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 344
    move-result-object v11

    .line 345
    .line 346
    if-eq v10, v11, :cond_19

    .line 347
    .line 348
    aget-object v10, v2, v6

    .line 349
    .line 350
    aput-object v10, v1, v8

    .line 351
    .line 352
    add-int/lit8 v8, v8, 0x1

    .line 353
    .line 354
    if-gt v8, v3, :cond_18

    .line 355
    move v10, v7

    .line 356
    goto :goto_8

    .line 357
    :cond_18
    move v10, v5

    .line 358
    .line 359
    .line 360
    :goto_8
    invoke-static {v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->a(Z)V

    .line 361
    .line 362
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 363
    goto :goto_6

    .line 364
    .line 365
    :cond_1a
    new-instance v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 366
    .line 367
    .line 368
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 369
    move-result-object v3

    .line 370
    .line 371
    .line 372
    invoke-direct {v2, v9, v1, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 373
    goto :goto_5

    .line 374
    :cond_1b
    :goto_9
    return-object v1
.end method

.method public final J(ILjava/lang/Object;I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->d(II)I

    .line 5
    move-result v1

    .line 6
    shl-int/2addr v0, v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->o(I)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    return-object p0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 17
    move-result v1

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    instance-of v3, v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->I(I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const/16 v2, 0x1e

    .line 32
    .line 33
    if-ne p3, v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->g(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    add-int/lit8 p3, p3, 0x5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->J(ILjava/lang/Object;I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    :goto_0
    if-ne v0, p1, :cond_2

    .line 47
    return-object p0

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->L(ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-static {p2, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->K(II)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_4
    return-object p0
.end method

.method public final b(ILjava/lang/Object;I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->d(II)I

    .line 5
    move-result v1

    .line 6
    shl-int/2addr v0, v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->o(I)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->c(ILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 21
    move-result v0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 24
    .line 25
    aget-object v1, v1, v0

    .line 26
    .line 27
    instance-of v2, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->I(I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const/16 v2, 0x1e

    .line 36
    .line 37
    if-ne p3, v2, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->e(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    add-int/lit8 p3, p3, 0x5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1, p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->b(ILjava/lang/Object;I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    :goto_0
    if-ne v1, p1, :cond_2

    .line 51
    return-object p0

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->L(ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    return-object p0

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->s(IILjava/lang/Object;I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public final i(ILjava/lang/Object;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->d(II)I

    .line 5
    move-result v1

    .line 6
    shl-int/2addr v0, v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->o(I)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 21
    .line 22
    aget-object v1, v1, v0

    .line 23
    .line 24
    instance-of v2, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->I(I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const/16 v1, 0x1e

    .line 33
    .line 34
    if-ne p3, v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->f(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    .line 41
    :cond_1
    add-int/lit8 p3, p3, 0x5

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->i(ILjava/lang/Object;I)Z

    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    return p1
.end method

.method public final j(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;I)Z
    .locals 9
    .param p1    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "otherNode"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    return v0

    .line 10
    .line 11
    :cond_0
    const/16 v1, 0x1e

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-le p2, v1, :cond_3

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 17
    array-length p2, p1

    .line 18
    move v1, v2

    .line 19
    .line 20
    :goto_0
    if-ge v1, p2, :cond_2

    .line 21
    .line 22
    aget-object v3, p1, v1

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v3}, Lkotlin/collections/l;->F([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    move v0, v2

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    return v0

    .line 37
    .line 38
    :cond_3
    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 39
    .line 40
    iget v3, p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 41
    and-int/2addr v1, v3

    .line 42
    .line 43
    if-eq v1, v3, :cond_4

    .line 44
    return v2

    .line 45
    .line 46
    :cond_4
    :goto_2
    if-eqz v1, :cond_d

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->lowestOneBit(I)I

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 54
    move-result v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 58
    move-result v5

    .line 59
    .line 60
    iget-object v6, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 61
    .line 62
    aget-object v4, v6, v4

    .line 63
    .line 64
    iget-object v6, p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 65
    .line 66
    aget-object v5, v6, v5

    .line 67
    .line 68
    instance-of v6, v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 69
    .line 70
    instance-of v7, v5, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 71
    .line 72
    const-string v8, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.containsAll$lambda-13>"

    .line 73
    .line 74
    if-eqz v6, :cond_7

    .line 75
    .line 76
    if-eqz v7, :cond_7

    .line 77
    .line 78
    if-eqz v4, :cond_6

    .line 79
    .line 80
    check-cast v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 81
    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    check-cast v5, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 85
    .line 86
    add-int/lit8 v6, p2, 0x5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->j(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;I)Z

    .line 90
    move-result v4

    .line 91
    .line 92
    if-nez v4, :cond_c

    .line 93
    return v2

    .line 94
    .line 95
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p1

    .line 100
    .line 101
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1

    .line 106
    .line 107
    :cond_7
    if-eqz v6, :cond_a

    .line 108
    .line 109
    if-eqz v4, :cond_9

    .line 110
    .line 111
    check-cast v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 112
    .line 113
    if-eqz v5, :cond_8

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 117
    move-result v6

    .line 118
    goto :goto_3

    .line 119
    :cond_8
    move v6, v2

    .line 120
    .line 121
    :goto_3
    add-int/lit8 v7, p2, 0x5

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v6, v5, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->i(ILjava/lang/Object;I)Z

    .line 125
    move-result v4

    .line 126
    .line 127
    if-nez v4, :cond_c

    .line 128
    return v2

    .line 129
    .line 130
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 134
    throw p1

    .line 135
    .line 136
    :cond_a
    if-eqz v7, :cond_b

    .line 137
    return v2

    .line 138
    .line 139
    .line 140
    :cond_b
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    move-result v4

    .line 142
    .line 143
    if-nez v4, :cond_c

    .line 144
    return v2

    .line 145
    :cond_c
    xor-int/2addr v1, v3

    .line 146
    goto :goto_2

    .line 147
    :cond_d
    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    return v0
.end method

.method public final n()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    return-object v0
.end method

.method public final p(I)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 3
    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 5
    and-int/2addr p1, v0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final t(ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 6
    .param p4    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder<",
            "*>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "mutator"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt;->d(II)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    shl-int v0, v1, v0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->o(I)Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4}, Lkotlin/collections/h;->size()I

    .line 22
    move-result p1

    .line 23
    add-int/2addr p1, v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->m(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->v(ILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 39
    move-result v2

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 42
    .line 43
    aget-object v0, v0, v2

    .line 44
    .line 45
    instance-of v3, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->I(I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const/16 v1, 0x1e

    .line 54
    .line 55
    if-ne p3, v1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p2, p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->w(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    add-int/lit8 p3, p3, 0x5

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->t(ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    :goto_0
    if-ne v0, p1, :cond_2

    .line 69
    return-object p0

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v2, p1, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->H(ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    return-object p0

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {p4}, Lkotlin/collections/h;->size()I

    .line 89
    move-result v0

    .line 90
    add-int/2addr v0, v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->m(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 97
    move-result-object v5

    .line 98
    move-object v0, p0

    .line 99
    move v1, v2

    .line 100
    move v2, p1

    .line 101
    move-object v3, p2

    .line 102
    move v4, p3

    .line 103
    .line 104
    .line 105
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->C(IILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method

.method public final u(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
    .locals 19
    .param p1    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder<",
            "*>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    move/from16 v9, p2

    .line 7
    .line 8
    move-object/from16 v10, p3

    .line 9
    .line 10
    move-object/from16 v11, p4

    .line 11
    .line 12
    const-string v0, "otherNode"

    .line 13
    .line 14
    .line 15
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "intersectionSizeRef"

    .line 18
    .line 19
    .line 20
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "mutator"

    .line 23
    .line 24
    .line 25
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    if-ne v7, v8, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->a()I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->d()I

    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->c(I)V

    .line 40
    return-object v7

    .line 41
    .line 42
    :cond_0
    const/16 v0, 0x1e

    .line 43
    .line 44
    if-le v9, v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-direct {v7, v8, v10, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->x(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    .line 55
    :cond_1
    iget v0, v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 56
    .line 57
    iget v1, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->bitmap:I

    .line 58
    or-int/2addr v1, v0

    .line 59
    .line 60
    if-ne v1, v0, :cond_2

    .line 61
    .line 62
    iget-object v0, v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->ownedBy:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    move-object v12, v7

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 80
    move-result v2

    .line 81
    .line 82
    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;-><init>(I[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V

    .line 90
    move-object v12, v0

    .line 91
    :goto_0
    const/4 v13, 0x0

    .line 92
    move v14, v1

    .line 93
    move v15, v13

    .line 94
    .line 95
    :goto_1
    if-eqz v14, :cond_13

    .line 96
    .line 97
    .line 98
    invoke-static {v14}, Ljava/lang/Integer;->lowestOneBit(I)I

    .line 99
    move-result v6

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 103
    move-result v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->p(I)I

    .line 107
    move-result v1

    .line 108
    .line 109
    iget-object v5, v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-direct {v7, v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->o(I)Z

    .line 113
    move-result v2

    .line 114
    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    iget-object v0, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 118
    .line 119
    aget-object v0, v0, v1

    .line 120
    .line 121
    :goto_2
    move-object/from16 v18, v5

    .line 122
    .line 123
    move/from16 v16, v6

    .line 124
    .line 125
    goto/16 :goto_8

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-direct {v8, v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->o(I)Z

    .line 129
    move-result v2

    .line 130
    .line 131
    if-eqz v2, :cond_4

    .line 132
    .line 133
    iget-object v1, v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 134
    .line 135
    aget-object v0, v1, v0

    .line 136
    goto :goto_2

    .line 137
    .line 138
    :cond_4
    iget-object v2, v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 139
    .line 140
    aget-object v2, v2, v0

    .line 141
    .line 142
    iget-object v0, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->buffer:[Ljava/lang/Object;

    .line 143
    .line 144
    aget-object v4, v0, v1

    .line 145
    .line 146
    instance-of v0, v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 147
    .line 148
    instance-of v1, v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 149
    .line 150
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableAddAll$lambda-6>"

    .line 151
    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 159
    .line 160
    if-eqz v4, :cond_5

    .line 161
    .line 162
    check-cast v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 163
    .line 164
    add-int/lit8 v0, v9, 0x5

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v4, v0, v10, v11}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->u(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 168
    move-result-object v0

    .line 169
    goto :goto_2

    .line 170
    .line 171
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 172
    .line 173
    .line 174
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 175
    throw v0

    .line 176
    .line 177
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 178
    .line 179
    .line 180
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 181
    throw v0

    .line 182
    .line 183
    :cond_7
    if-eqz v0, :cond_b

    .line 184
    .line 185
    if-eqz v2, :cond_a

    .line 186
    .line 187
    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p4 .. p4}, Lkotlin/collections/h;->size()I

    .line 191
    move-result v0

    .line 192
    .line 193
    if-eqz v4, :cond_8

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 197
    move-result v1

    .line 198
    goto :goto_3

    .line 199
    :cond_8
    move v1, v13

    .line 200
    .line 201
    :goto_3
    add-int/lit8 v3, v9, 0x5

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v1, v4, v3, v11}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->t(ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 205
    move-result-object v1

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p4 .. p4}, Lkotlin/collections/h;->size()I

    .line 209
    move-result v2

    .line 210
    .line 211
    if-ne v2, v0, :cond_9

    .line 212
    .line 213
    .line 214
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->a()I

    .line 215
    move-result v0

    .line 216
    .line 217
    add-int/lit8 v0, v0, 0x1

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->c(I)V

    .line 221
    .line 222
    :cond_9
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 223
    :goto_4
    move-object v0, v1

    .line 224
    goto :goto_2

    .line 225
    .line 226
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 227
    .line 228
    .line 229
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 230
    throw v0

    .line 231
    .line 232
    :cond_b
    if-eqz v1, :cond_f

    .line 233
    .line 234
    if-eqz v4, :cond_e

    .line 235
    .line 236
    check-cast v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {p4 .. p4}, Lkotlin/collections/h;->size()I

    .line 240
    move-result v0

    .line 241
    .line 242
    if-eqz v2, :cond_c

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 246
    move-result v1

    .line 247
    goto :goto_5

    .line 248
    :cond_c
    move v1, v13

    .line 249
    .line 250
    :goto_5
    add-int/lit8 v3, v9, 0x5

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v1, v2, v3, v11}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->t(ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 254
    move-result-object v1

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {p4 .. p4}, Lkotlin/collections/h;->size()I

    .line 258
    move-result v2

    .line 259
    .line 260
    if-ne v2, v0, :cond_d

    .line 261
    .line 262
    .line 263
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->a()I

    .line 264
    move-result v0

    .line 265
    .line 266
    add-int/lit8 v0, v0, 0x1

    .line 267
    .line 268
    .line 269
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->c(I)V

    .line 270
    .line 271
    :cond_d
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 272
    goto :goto_4

    .line 273
    .line 274
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 275
    .line 276
    .line 277
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 278
    throw v0

    .line 279
    .line 280
    .line 281
    :cond_f
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    move-result v0

    .line 283
    .line 284
    if-eqz v0, :cond_10

    .line 285
    .line 286
    .line 287
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->a()I

    .line 288
    move-result v0

    .line 289
    .line 290
    add-int/lit8 v0, v0, 0x1

    .line 291
    .line 292
    .line 293
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/DeltaCounter;->c(I)V

    .line 294
    .line 295
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 296
    move-object v0, v2

    .line 297
    .line 298
    goto/16 :goto_2

    .line 299
    .line 300
    :cond_10
    if-eqz v2, :cond_11

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 304
    move-result v0

    .line 305
    move v1, v0

    .line 306
    goto :goto_6

    .line 307
    :cond_11
    move v1, v13

    .line 308
    .line 309
    :goto_6
    if-eqz v4, :cond_12

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 313
    move-result v0

    .line 314
    move v3, v0

    .line 315
    goto :goto_7

    .line 316
    :cond_12
    move v3, v13

    .line 317
    .line 318
    :goto_7
    add-int/lit8 v16, v9, 0x5

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetBuilder;->j()Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 322
    move-result-object v17

    .line 323
    .line 324
    move-object/from16 v0, p0

    .line 325
    .line 326
    move-object/from16 v18, v5

    .line 327
    .line 328
    move/from16 v5, v16

    .line 329
    .line 330
    move/from16 v16, v6

    .line 331
    .line 332
    move-object/from16 v6, v17

    .line 333
    .line 334
    .line 335
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->q(ILjava/lang/Object;ILjava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;

    .line 336
    move-result-object v0

    .line 337
    .line 338
    :goto_8
    aput-object v0, v18, v15

    .line 339
    .line 340
    add-int/lit8 v15, v15, 0x1

    .line 341
    .line 342
    xor-int v14, v14, v16

    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    .line 347
    :cond_13
    invoke-direct {v7, v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->l(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;)Z

    .line 348
    move-result v0

    .line 349
    .line 350
    if-eqz v0, :cond_14

    .line 351
    move-object v12, v7

    .line 352
    goto :goto_9

    .line 353
    .line 354
    .line 355
    :cond_14
    invoke-direct {v8, v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;->l(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;)Z

    .line 356
    move-result v0

    .line 357
    .line 358
    if-eqz v0, :cond_15

    .line 359
    move-object v12, v8

    .line 360
    :cond_15
    :goto_9
    return-object v12
.end method
