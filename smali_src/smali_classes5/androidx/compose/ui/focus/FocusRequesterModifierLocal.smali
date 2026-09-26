.class public final Landroidx/compose/ui/focus/FocusRequesterModifierLocal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/ui/focus/FocusRequesterModifierLocal;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusRequesterModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRequesterModifier.kt\nandroidx/compose/ui/focus/FocusRequesterModifierLocal\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,140:1\n1182#2:141\n1161#2,2:142\n728#3,2:144\n728#3,2:146\n146#3:148\n735#3,2:149\n385#3,12:151\n*S KotlinDebug\n*F\n+ 1 FocusRequesterModifier.kt\nandroidx/compose/ui/focus/FocusRequesterModifierLocal\n*L\n57#1:141\n57#1:142,2\n60#1:144,2\n78#1:146,2\n83#1:148\n88#1:149,2\n100#1:151,12\n*E\n"
.end annotation


# instance fields
.field private final focusModifiers:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final focusRequester:Landroidx/compose/ui/focus/FocusRequester;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parent:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "focusRequester"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    new-array v1, v1, [Landroidx/compose/ui/focus/FocusModifier;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester;->b()Landroidx/compose/runtime/collection/MutableVector;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "focusModifier"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->parent:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->a(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 18
    :cond_0
    return-void
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/collection/MutableVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "newModifiers"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->c(ILandroidx/compose/runtime/collection/MutableVector;)Z

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->parent:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->b(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 22
    :cond_0
    return-void
.end method

.method public final c()Landroidx/compose/ui/focus/FocusModifier;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-lez v1, :cond_8

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    :cond_0
    aget-object v4, v0, v3

    .line 17
    .line 18
    check-cast v4, Landroidx/compose/ui/focus/FocusModifier;

    .line 19
    .line 20
    if-eqz v2, :cond_6

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusModifier;->l()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 24
    move-result-object v5

    .line 25
    .line 26
    if-eqz v5, :cond_6

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    if-nez v5, :cond_1

    .line 33
    goto :goto_3

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusModifier;->l()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    if-eqz v6, :cond_7

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 43
    move-result-object v6

    .line 44
    .line 45
    if-nez v6, :cond_2

    .line 46
    goto :goto_4

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->U()I

    .line 50
    move-result v7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->U()I

    .line 54
    move-result v8

    .line 55
    .line 56
    if-le v7, v8, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->U()I

    .line 68
    move-result v7

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->U()I

    .line 72
    move-result v8

    .line 73
    .line 74
    if-le v7, v8, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    .line 81
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 86
    move-result-object v7

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 90
    move-result-object v8

    .line 91
    .line 92
    .line 93
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    move-result v7

    .line 95
    .line 96
    if-nez v7, :cond_5

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    .line 103
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 107
    move-result-object v6

    .line 108
    .line 109
    .line 110
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 111
    goto :goto_2

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 115
    move-result-object v7

    .line 116
    .line 117
    .line 118
    invoke-static {v7}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    .line 122
    move-result-object v7

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/collection/MutableVector;->o(Ljava/lang/Object;)I

    .line 126
    move-result v5

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->o(Ljava/lang/Object;)I

    .line 130
    move-result v6

    .line 131
    .line 132
    if-ge v5, v6, :cond_6

    .line 133
    goto :goto_4

    .line 134
    :cond_6
    :goto_3
    move-object v2, v4

    .line 135
    .line 136
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    if-lt v3, v1, :cond_0

    .line 139
    :cond_8
    return-object v2
.end method

.method public d()Landroidx/compose/ui/focus/FocusRequesterModifierLocal;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public final f(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "focusModifier"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->s(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->parent:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->f(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 18
    :cond_0
    return-void
.end method

.method public final g(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/collection/MutableVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "removedModifiers"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->t(Landroidx/compose/runtime/collection/MutableVector;)Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->parent:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->g(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 18
    :cond_0
    return-void
.end method

.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/focus/FocusRequesterModifierLocal;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->b()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->d()Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public z0(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/modifier/ModifierLocalReadScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    invoke-static {}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->b()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->parent:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->parent:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->g(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 33
    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->b(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 40
    .line 41
    :cond_1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->parent:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 42
    :cond_2
    return-void
.end method
