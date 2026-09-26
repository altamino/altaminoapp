.class public final Landroidx/lifecycle/SavedStateHandle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    new-instance p1, Landroidx/lifecycle/SavedStateHandle;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "key"

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    new-instance p2, Landroidx/lifecycle/SavedStateHandle;

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p1}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/Map;)V

    .line 54
    move-object p1, p2

    .line 55
    :goto_1
    return-object p1

    .line 56
    .line 57
    :cond_2
    const-string p2, "keys"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    const-string v0, "values"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v1

    .line 80
    .line 81
    if-ne v0, v1, :cond_4

    .line 82
    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 90
    move-result v1

    .line 91
    const/4 v2, 0x0

    .line 92
    .line 93
    :goto_2
    if-ge v2, v1, :cond_3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    const-string v4, "null cannot be cast to non-null type kotlin.String"

    .line 100
    .line 101
    .line 102
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    check-cast v3, Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v4

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_3
    new-instance p1, Landroidx/lifecycle/SavedStateHandle;

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, v0}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/Map;)V

    .line 120
    return-object p1

    .line 121
    .line 122
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string p2, "Invalid bundle passed as restored state"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    move-result-object p2

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {}, Landroidx/lifecycle/SavedStateHandle;->b()[Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    .line 13
    :goto_0
    if-ge v4, v2, :cond_2

    .line 14
    .line 15
    aget-object v5, v1, v4

    .line 16
    .line 17
    .line 18
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 22
    move-result v5

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    return v0

    .line 26
    .line 27
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v3
.end method
