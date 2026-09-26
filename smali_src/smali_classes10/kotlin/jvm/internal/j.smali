.class public final Lkotlin/jvm/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionToArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,88:1\n63#1,22:89\n63#1,22:111\n26#2:133\n*S KotlinDebug\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n22#1:89,22\n37#1:111,22\n14#1:133\n*E\n"
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_SIZE:I = 0x7ffffffd


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/jvm/internal/j;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public static final a(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "collection"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :goto_0
    sget-object p0, Lkotlin/jvm/internal/j;->EMPTY:[Ljava/lang/Object;

    .line 14
    goto :goto_3

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    aput-object v3, v0, v1

    .line 37
    array-length v1, v0

    .line 38
    .line 39
    const-string v3, "copyOf(...)"

    .line 40
    .line 41
    if-lt v2, v1, :cond_6

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    move-object p0, v0

    .line 49
    goto :goto_3

    .line 50
    .line 51
    :cond_2
    mul-int/lit8 v1, v2, 0x3

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    ushr-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    if-gt v1, v2, :cond_4

    .line 58
    .line 59
    .line 60
    const v1, 0x7ffffffd

    .line 61
    .line 62
    if-ge v2, v1, :cond_3

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 69
    throw p0

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :cond_5
    move v1, v2

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v1

    .line 83
    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    :goto_3
    return-object p0
.end method

.method public static final b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "collection"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    array-length p0, p1

    .line 18
    .line 19
    if-lez p0, :cond_9

    .line 20
    .line 21
    aput-object v1, p1, v2

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    array-length p0, p1

    .line 35
    .line 36
    if-lez p0, :cond_9

    .line 37
    .line 38
    aput-object v1, p1, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    array-length v3, p1

    .line 41
    .line 42
    if-gt v0, v3, :cond_2

    .line 43
    move-object v0, p1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    check-cast v0, [Ljava/lang/Object;

    .line 64
    .line 65
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 66
    .line 67
    .line 68
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    aput-object v4, v0, v2

    .line 72
    array-length v2, v0

    .line 73
    .line 74
    const-string v4, "copyOf(...)"

    .line 75
    .line 76
    if-lt v3, v2, :cond_7

    .line 77
    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v2

    .line 81
    .line 82
    if-nez v2, :cond_3

    .line 83
    move-object p1, v0

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_3
    mul-int/lit8 v2, v3, 0x3

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    ushr-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    if-gt v2, v3, :cond_5

    .line 93
    .line 94
    .line 95
    const v2, 0x7ffffffd

    .line 96
    .line 97
    if-ge v3, v2, :cond_4

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_4
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 104
    throw p0

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    :cond_6
    move v2, v3

    .line 113
    goto :goto_0

    .line 114
    .line 115
    .line 116
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v2

    .line 118
    .line 119
    if-nez v2, :cond_6

    .line 120
    .line 121
    if-ne v0, p1, :cond_8

    .line 122
    .line 123
    aput-object v1, p1, v3

    .line 124
    goto :goto_2

    .line 125
    .line 126
    .line 127
    :cond_8
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    :cond_9
    :goto_2
    return-object p1
.end method
