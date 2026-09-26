.class public Landroidx/navigation/NavDestination;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavDestination$ClassType;,
        Landroidx/navigation/NavDestination$DeepLinkMatch;,
        Landroidx/navigation/NavDestination$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavDestination.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 7 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,682:1\n232#2,3:683\n1#3:686\n286#4,2:687\n764#4:696\n855#4,2:697\n1547#4:699\n1618#4,3:700\n1849#4,2:711\n1849#4,2:714\n1849#4,2:717\n479#5,7:689\n1201#6,2:703\n1201#6,2:705\n1201#6,2:707\n1201#6,2:709\n32#7:713\n33#7:716\n*S KotlinDebug\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination\n*L\n155#1:683,3\n195#1:687,2\n321#1:696\n321#1:697,2\n398#1:699\n398#1:700,3\n563#1:711,2\n571#1:714,2\n575#1:717,2\n319#1:689,7\n539#1:703,2\n540#1:705,2\n543#1:707,2\n547#1:709,2\n568#1:713\n568#1:716\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/NavDestination$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _arguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final actions:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deepLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private id:I

.field private idName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private label:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final navigatorName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parent:Landroidx/navigation/NavGraph;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private route:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/navigation/NavDestination$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/navigation/NavDestination$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    sput-object v0, Landroidx/navigation/NavDestination;->classes:Ljava/util/Map;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .locals 1
    .param p1    # Landroidx/navigation/Navigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)V"
        }
    .end annotation

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/navigation/NavigatorProvider$Companion;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "navigatorName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    .line 3
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    return-void
.end method

.method public static synthetic g(Landroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;ILjava/lang/Object;)[I
    .locals 0

    .line 1
    .line 2
    if-nez p3, :cond_1

    .line 3
    .line 4
    and-int/lit8 p2, p2, 0x1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination;->f(Landroidx/navigation/NavDestination;)[I

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string p1, "Super calls with default arguments not supported in this target, function: buildDeepLinkIds"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method


# virtual methods
.method public A()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavArgument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "argumentName"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "argument"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public final b(Landroidx/navigation/NavDeepLink;)V
    .locals 5
    .param p1    # Landroidx/navigation/NavDeepLink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "navDeepLink"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    check-cast v3, Landroidx/navigation/NavArgument;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/navigation/NavArgument;->c()Z

    .line 44
    move-result v4

    .line 45
    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/navigation/NavArgument;->b()Z

    .line 50
    move-result v3

    .line 51
    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    move-object v3, v2

    .line 89
    .line 90
    check-cast v3, Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLink;->e()Ljava/util/List;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    .line 97
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 98
    move-result v3

    .line 99
    .line 100
    xor-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    if-eqz v3, :cond_2

    .line 103
    .line 104
    .line 105
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_1

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 110
    move-result v0

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    iget-object v0, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void

    .line 119
    .line 120
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    const-string v2, "Deep link "

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLink;->k()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string p1, " can\'t be used to open destination "

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string p1, ".\nFollowing required arguments are missing: "

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "uriPattern"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Landroidx/navigation/NavDeepLink$Builder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/navigation/NavDeepLink$Builder;->d(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLink$Builder;->a()Landroidx/navigation/NavDeepLink;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination;->b(Landroidx/navigation/NavDeepLink;)V

    .line 23
    return-void
.end method

.method public final e(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    check-cast v3, Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    check-cast v2, Landroidx/navigation/NavArgument;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3, v0}, Landroidx/navigation/NavArgument;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    if-eqz p1, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 63
    .line 64
    iget-object p1, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v1

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    check-cast v2, Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    check-cast v1, Landroidx/navigation/NavArgument;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2, v0}, Landroidx/navigation/NavArgument;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 100
    move-result v3

    .line 101
    .line 102
    if-eqz v3, :cond_3

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    const-string v0, "Wrong argument type for \'"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v0, "\' in argument bundle. "

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroidx/navigation/NavArgument;->a()Landroidx/navigation/NavType;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/navigation/NavType;->b()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v0, " expected."

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v0

    .line 152
    :cond_4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_a

    .line 4
    .line 5
    instance-of v1, p1, Landroidx/navigation/NavDestination;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Iterable;

    .line 14
    .line 15
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 16
    .line 17
    iget-object v2, p1, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    .line 18
    .line 19
    check-cast v2, Ljava/lang/Iterable;

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/collections/t;->p0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 27
    move-result v1

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x1

    .line 35
    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    move v1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v1, v0

    .line 40
    .line 41
    :goto_0
    iget-object v2, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->r()I

    .line 45
    move-result v2

    .line 46
    .line 47
    iget-object v4, p1, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->r()I

    .line 51
    move-result v4

    .line 52
    .line 53
    if-ne v2, v4, :cond_6

    .line 54
    .line 55
    iget-object v2, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Landroidx/collection/SparseArrayKt;->a(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/sequences/j;->c(Ljava/util/Iterator;)Lkotlin/sequences/g;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-interface {v2}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v4

    .line 72
    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    check-cast v4, Landroidx/navigation/NavAction;

    .line 80
    .line 81
    iget-object v5, p1, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v4}, Landroidx/collection/SparseArrayCompat;->g(Ljava/lang/Object;)Z

    .line 85
    move-result v4

    .line 86
    .line 87
    if-nez v4, :cond_2

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_3
    iget-object v2, p1, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Landroidx/collection/SparseArrayKt;->a(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Lkotlin/sequences/j;->c(Ljava/util/Iterator;)Lkotlin/sequences/g;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-interface {v2}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v4

    .line 107
    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    check-cast v4, Landroidx/navigation/NavAction;

    .line 115
    .line 116
    iget-object v5, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v4}, Landroidx/collection/SparseArrayCompat;->g(Ljava/lang/Object;)Z

    .line 120
    move-result v4

    .line 121
    .line 122
    if-nez v4, :cond_4

    .line 123
    goto :goto_1

    .line 124
    :cond_5
    move v2, v3

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    :goto_1
    move v2, v0

    .line 127
    .line 128
    .line 129
    :goto_2
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 130
    move-result-object v4

    .line 131
    .line 132
    .line 133
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 134
    move-result v4

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 138
    move-result-object v5

    .line 139
    .line 140
    .line 141
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 142
    move-result v5

    .line 143
    .line 144
    if-ne v4, v5, :cond_9

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    .line 151
    invoke-static {v4}, Lkotlin/collections/p0;->B(Ljava/util/Map;)Lkotlin/sequences/g;

    .line 152
    move-result-object v4

    .line 153
    .line 154
    .line 155
    invoke-interface {v4}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 156
    move-result-object v4

    .line 157
    .line 158
    .line 159
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    move-result v5

    .line 161
    .line 162
    if-eqz v5, :cond_7

    .line 163
    .line 164
    .line 165
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    move-result-object v5

    .line 167
    .line 168
    check-cast v5, Ljava/util/Map$Entry;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    .line 175
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 176
    move-result-object v7

    .line 177
    .line 178
    .line 179
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 180
    move-result v6

    .line 181
    .line 182
    if-eqz v6, :cond_9

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 186
    move-result-object v6

    .line 187
    .line 188
    .line 189
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 190
    move-result-object v7

    .line 191
    .line 192
    .line 193
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-result-object v6

    .line 195
    .line 196
    .line 197
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 198
    move-result-object v5

    .line 199
    .line 200
    .line 201
    invoke-static {v6, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    move-result v5

    .line 203
    .line 204
    if-eqz v5, :cond_9

    .line 205
    goto :goto_3

    .line 206
    .line 207
    .line 208
    :cond_7
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 209
    move-result-object v4

    .line 210
    .line 211
    .line 212
    invoke-static {v4}, Lkotlin/collections/p0;->B(Ljava/util/Map;)Lkotlin/sequences/g;

    .line 213
    move-result-object v4

    .line 214
    .line 215
    .line 216
    invoke-interface {v4}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 217
    move-result-object v4

    .line 218
    .line 219
    .line 220
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    move-result v5

    .line 222
    .line 223
    if-eqz v5, :cond_8

    .line 224
    .line 225
    .line 226
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    move-result-object v5

    .line 228
    .line 229
    check-cast v5, Ljava/util/Map$Entry;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 233
    move-result-object v6

    .line 234
    .line 235
    .line 236
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 237
    move-result-object v7

    .line 238
    .line 239
    .line 240
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 241
    move-result v6

    .line 242
    .line 243
    if-eqz v6, :cond_9

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 247
    move-result-object v6

    .line 248
    .line 249
    .line 250
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 251
    move-result-object v7

    .line 252
    .line 253
    .line 254
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-result-object v6

    .line 256
    .line 257
    .line 258
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 259
    move-result-object v5

    .line 260
    .line 261
    .line 262
    invoke-static {v6, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    move-result v5

    .line 264
    .line 265
    if-eqz v5, :cond_9

    .line 266
    goto :goto_4

    .line 267
    :cond_8
    move v4, v3

    .line 268
    goto :goto_5

    .line 269
    :cond_9
    move v4, v0

    .line 270
    .line 271
    :goto_5
    iget v5, p0, Landroidx/navigation/NavDestination;->id:I

    .line 272
    .line 273
    iget v6, p1, Landroidx/navigation/NavDestination;->id:I

    .line 274
    .line 275
    if-ne v5, v6, :cond_a

    .line 276
    .line 277
    iget-object v5, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    .line 278
    .line 279
    iget-object p1, p1, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    invoke-static {v5, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    move-result p1

    .line 284
    .line 285
    if-eqz p1, :cond_a

    .line 286
    .line 287
    if-eqz v1, :cond_a

    .line 288
    .line 289
    if-eqz v2, :cond_a

    .line 290
    .line 291
    if-eqz v4, :cond_a

    .line 292
    move v0, v3

    .line 293
    :cond_a
    :goto_6
    return v0
.end method

.method public final f(Landroidx/navigation/NavDestination;)[I
    .locals 5
    .param p1    # Landroidx/navigation/NavDestination;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlin/collections/k;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlin/collections/k;-><init>()V

    .line 6
    move-object v1, p0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    .line 19
    :goto_1
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget-object v3, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    iget v4, v1, Landroidx/navigation/NavDestination;->id:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroidx/navigation/NavGraph;->C(I)Landroidx/navigation/NavDestination;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    if-ne v3, v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lkotlin/collections/k;->f(Ljava/lang/Object;)V

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    if-eqz v2, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->I()I

    .line 42
    move-result v3

    .line 43
    .line 44
    iget v4, v1, Landroidx/navigation/NavDestination;->id:I

    .line 45
    .line 46
    if-eq v3, v4, :cond_3

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v0, v1}, Lkotlin/collections/k;->f(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_4
    if-nez v2, :cond_6

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-static {v0}, Lkotlin/collections/t;->U0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    check-cast p1, Ljava/lang/Iterable;

    .line 65
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    const/16 v1, 0xa

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v1

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 92
    .line 93
    iget v1, v1, Landroidx/navigation/NavDestination;->id:I

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_3

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-static {v0}, Lkotlin/collections/t;->T0(Ljava/util/Collection;)[I

    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    :cond_6
    move-object v1, v2

    .line 108
    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Landroidx/navigation/NavDestination;->id:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Iterable;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    check-cast v3, Landroidx/navigation/NavDeepLink;

    .line 37
    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/navigation/NavDeepLink;->k()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 48
    move-result v4

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    move v4, v2

    .line 51
    :goto_2
    add-int/2addr v0, v4

    .line 52
    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/navigation/NavDeepLink;->d()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 63
    move-result v4

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    move v4, v2

    .line 66
    :goto_3
    add-int/2addr v0, v4

    .line 67
    .line 68
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Landroidx/navigation/NavDeepLink;->g()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 78
    move-result v3

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    move v3, v2

    .line 81
    :goto_4
    add-int/2addr v0, v3

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_4
    iget-object v1, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Landroidx/collection/SparseArrayKt;->a(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v3

    .line 93
    .line 94
    if-eqz v3, :cond_8

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    check-cast v3, Landroidx/navigation/NavAction;

    .line 101
    .line 102
    mul-int/lit8 v0, v0, 0x1f

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Landroidx/navigation/NavAction;->b()I

    .line 106
    move-result v4

    .line 107
    add-int/2addr v0, v4

    .line 108
    .line 109
    mul-int/lit8 v0, v0, 0x1f

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Landroidx/navigation/NavAction;->c()Landroidx/navigation/NavOptions;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    if-eqz v4, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 119
    move-result v4

    .line 120
    goto :goto_5

    .line 121
    :cond_6
    move v4, v2

    .line 122
    :goto_5
    add-int/2addr v0, v4

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Landroidx/navigation/NavAction;->a()Landroid/os/Bundle;

    .line 126
    move-result-object v4

    .line 127
    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 132
    move-result-object v4

    .line 133
    .line 134
    if-eqz v4, :cond_5

    .line 135
    .line 136
    const-string v5, "keySet()"

    .line 137
    .line 138
    .line 139
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object v4

    .line 144
    .line 145
    .line 146
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v5

    .line 148
    .line 149
    if-eqz v5, :cond_5

    .line 150
    .line 151
    .line 152
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v5

    .line 154
    .line 155
    check-cast v5, Ljava/lang/String;

    .line 156
    .line 157
    mul-int/lit8 v0, v0, 0x1f

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Landroidx/navigation/NavAction;->a()Landroid/os/Bundle;

    .line 161
    move-result-object v6

    .line 162
    .line 163
    .line 164
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    move-result-object v5

    .line 169
    .line 170
    if-eqz v5, :cond_7

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 174
    move-result v5

    .line 175
    goto :goto_7

    .line 176
    :cond_7
    move v5, v2

    .line 177
    :goto_7
    add-int/2addr v0, v5

    .line 178
    goto :goto_6

    .line 179
    .line 180
    .line 181
    :cond_8
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    .line 185
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    .line 189
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    .line 193
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    move-result v3

    .line 195
    .line 196
    if-eqz v3, :cond_a

    .line 197
    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    move-result-object v3

    .line 201
    .line 202
    check-cast v3, Ljava/lang/String;

    .line 203
    .line 204
    mul-int/lit8 v0, v0, 0x1f

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 208
    move-result v4

    .line 209
    add-int/2addr v0, v4

    .line 210
    .line 211
    mul-int/lit8 v0, v0, 0x1f

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 215
    move-result-object v4

    .line 216
    .line 217
    .line 218
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    move-result-object v3

    .line 220
    .line 221
    if-eqz v3, :cond_9

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 225
    move-result v3

    .line 226
    goto :goto_9

    .line 227
    :cond_9
    move v3, v2

    .line 228
    :goto_9
    add-int/2addr v0, v3

    .line 229
    goto :goto_8

    .line 230
    :cond_a
    return v0
.end method

.method public final j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/p0;->w(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/NavDestination;->idName:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/navigation/NavDestination;->id:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public final p()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavDestination;->id:I

    return v0
.end method

.method public final q()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Landroidx/navigation/NavGraph;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "("

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/navigation/NavDestination;->idName:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "0x"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget v1, p0, Landroidx/navigation/NavDestination;->id:I

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    :goto_0
    const-string v1, ")"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    iget-object v1, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    const-string v1, " route="

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    :cond_2
    :goto_1
    iget-object v1, p0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    const-string v1, " label="

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    iget-object v1, p0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    const-string/jumbo v1, "sb.toString()"

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    return-object v0
.end method

.method public u(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 11
    .param p1    # Landroidx/navigation/NavDeepLinkRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "navDeepLinkRequest"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-object v1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    move-object v2, v1

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v3

    .line 27
    .line 28
    if-eqz v3, :cond_7

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    check-cast v3, Landroidx/navigation/NavDeepLink;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->c()Landroid/net/Uri;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->j()Ljava/util/Map;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4, v5}, Landroidx/navigation/NavDeepLink;->f(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    .line 48
    move-result-object v4

    .line 49
    move-object v7, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v7, v1

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->a()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroidx/navigation/NavDeepLink;->d()Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 66
    .line 67
    if-eqz v4, :cond_3

    .line 68
    const/4 v4, 0x1

    .line 69
    :goto_2
    move v9, v4

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/4 v4, 0x0

    .line 72
    goto :goto_2

    .line 73
    .line 74
    .line 75
    :goto_3
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->b()Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    const/4 v5, -0x1

    .line 78
    .line 79
    if-eqz v4, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Landroidx/navigation/NavDeepLink;->h(Ljava/lang/String;)I

    .line 83
    move-result v4

    .line 84
    move v10, v4

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    move v10, v5

    .line 87
    .line 88
    :goto_4
    if-nez v7, :cond_5

    .line 89
    .line 90
    if-nez v9, :cond_5

    .line 91
    .line 92
    if-le v10, v5, :cond_1

    .line 93
    .line 94
    :cond_5
    new-instance v4, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Landroidx/navigation/NavDeepLink;->l()Z

    .line 98
    move-result v8

    .line 99
    move-object v5, v4

    .line 100
    move-object v6, p0

    .line 101
    .line 102
    .line 103
    invoke-direct/range {v5 .. v10}, Landroidx/navigation/NavDestination$DeepLinkMatch;-><init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZZI)V

    .line 104
    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v2}, Landroidx/navigation/NavDestination$DeepLinkMatch;->a(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    .line 109
    move-result v3

    .line 110
    .line 111
    if-lez v3, :cond_1

    .line 112
    :cond_6
    move-object v2, v4

    .line 113
    goto :goto_0

    .line 114
    :cond_7
    return-object v2
.end method

.method public v(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attrs"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Landroidx/navigation/common/R$styleable;->Navigator:[I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    const-string v0, "context.resources.obtain\u2026s, R.styleable.Navigator)"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    sget v0, Landroidx/navigation/common/R$styleable;->Navigator_route:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroidx/navigation/NavDestination;->z(Ljava/lang/String;)V

    .line 35
    .line 36
    sget v0, Landroidx/navigation/common/R$styleable;->Navigator_android_id:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 47
    move-result v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroidx/navigation/NavDestination;->x(I)V

    .line 51
    .line 52
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    .line 53
    .line 54
    iget v1, p0, Landroidx/navigation/NavDestination;->id:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, v1}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iput-object p1, p0, Landroidx/navigation/NavDestination;->idName:Ljava/lang/String;

    .line 61
    .line 62
    :cond_0
    sget p1, Landroidx/navigation/common/R$styleable;->Navigator_android_label:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iput-object p1, p0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    .line 69
    .line 70
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method

.method public final w(ILandroidx/navigation/NavAction;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "action"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->A()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "Cannot have an action with actionId 0"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1

    .line 32
    .line 33
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v1, "Cannot add action "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p1, " to "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string p1, " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions."

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p2
.end method

.method public final x(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroidx/navigation/NavDestination;->id:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/navigation/NavDestination;->idName:Ljava/lang/String;

    return-void
.end method

.method public final y(Landroidx/navigation/NavGraph;)V
    .locals 0
    .param p1    # Landroidx/navigation/NavGraph;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/navigation/NavDestination;->x(I)V

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p1}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/navigation/NavDestination;->x(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/navigation/NavDestination;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    .line 34
    move-object v1, v0

    .line 35
    .line 36
    check-cast v1, Ljava/util/Collection;

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Iterable;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    move-object v3, v2

    .line 54
    .line 55
    check-cast v3, Landroidx/navigation/NavDeepLink;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroidx/navigation/NavDeepLink;->k()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    sget-object v4, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    .line 62
    .line 63
    iget-object v5, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Landroidx/navigation/NavDestination$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v3

    .line 72
    .line 73
    if-eqz v3, :cond_1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v2, 0x0

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/v0;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 83
    .line 84
    iput-object p1, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    .line 85
    return-void

    .line 86
    .line 87
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string v0, "Cannot have an empty route"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p1
.end method
