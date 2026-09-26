.class public final Landroidx/compose/ui/focus/FocusEventModifierLocal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusEventModifierLocal$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/ui/focus/FocusEventModifierLocal;",
        ">;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusEventModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusEventModifier.kt\nandroidx/compose/ui/focus/FocusEventModifierLocal\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,167:1\n1182#2:168\n1161#2,2:169\n1182#2:171\n1161#2,2:172\n735#3,2:174\n728#3,2:176\n728#3,2:178\n146#3:180\n735#3,2:181\n523#3:183\n460#3,11:184\n*S KotlinDebug\n*F\n+ 1 FocusEventModifier.kt\nandroidx/compose/ui/focus/FocusEventModifierLocal\n*L\n57#1:168\n57#1:169,2\n63#1:171\n63#1:172,2\n74#1:174,2\n79#1:176,2\n87#1:178,2\n92#1:180\n97#1:181,2\n109#1:183\n114#1:184,11\n*E\n"
.end annotation


# instance fields
.field private final children:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusEventModifierLocal;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field private final onFocusEvent:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/focus/FocusState;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parent:Landroidx/compose/ui/focus/FocusEventModifierLocal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/l;)V
    .locals 3
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusState;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "onFocusEvent"

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
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->onFocusEvent:Le8/l;

    .line 11
    .line 12
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    new-array v1, v0, [Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 23
    .line 24
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 25
    .line 26
    new-array v0, v0, [Landroidx/compose/ui/focus/FocusModifier;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 32
    return-void
.end method

.method private final b(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 2
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
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->c(ILandroidx/compose/runtime/collection/MutableVector;)Z

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->parent:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->b(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 17
    :cond_0
    return-void
.end method

.method private final h(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 1
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
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->t(Landroidx/compose/runtime/collection/MutableVector;)Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->parent:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->h(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 13
    :cond_0
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
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->parent:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->a(Landroidx/compose/ui/focus/FocusModifier;)V

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

.method public c()Landroidx/compose/ui/focus/FocusEventModifierLocal;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public final d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->p()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->onFocusEvent:Le8/l;

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    return-void
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-eq v0, v2, :cond_5

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    if-lez v2, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    move-object v4, v3

    .line 27
    .line 28
    :cond_0
    aget-object v5, v0, v1

    .line 29
    .line 30
    check-cast v5, Landroidx/compose/ui/focus/FocusModifier;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 34
    move-result-object v6

    .line 35
    .line 36
    sget-object v7, Landroidx/compose/ui/focus/FocusEventModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 40
    move-result v6

    .line 41
    .line 42
    aget v6, v7, v6

    .line 43
    .line 44
    .line 45
    packed-switch v6, :pswitch_data_0

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :pswitch_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :pswitch_1
    if-nez v3, :cond_1

    .line 52
    .line 53
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :pswitch_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    move-object v4, v5

    .line 58
    .line 59
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    if-lt v1, v2, :cond_0

    .line 62
    move-object v0, v3

    .line 63
    move-object v3, v4

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v0, v3

    .line 66
    .line 67
    :goto_1
    if-eqz v3, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    if-nez v1, :cond_7

    .line 74
    .line 75
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_4
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    aget-object v0, v0, v1

    .line 96
    .line 97
    check-cast v0, Landroidx/compose/ui/focus/FocusModifier;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 101
    move-result-object v1

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_6
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 105
    .line 106
    :cond_7
    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->onFocusEvent:Le8/l;

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->parent:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->f()V

    .line 117
    :cond_8
    return-void

    .line 118
    nop

    .line 119
    .line 120
    .line 121
    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Landroidx/compose/ui/focus/FocusModifier;)V
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
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->s(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->parent:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->g(Landroidx/compose/ui/focus/FocusModifier;)V

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
            "Landroidx/compose/ui/focus/FocusEventModifierLocal;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/focus/FocusEventModifierKt;->a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

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
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->c()Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public z0(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 3
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
    invoke-static {}, Landroidx/compose/ui/focus/FocusEventModifierKt;->a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->parent:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->parent:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v2, v1, Landroidx/compose/ui/focus/FocusEventModifierLocal;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Landroidx/compose/runtime/collection/MutableVector;->s(Ljava/lang/Object;)Z

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->h(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 38
    .line 39
    :cond_0
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->parent:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->focusModifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->b(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-static {}, Landroidx/compose/ui/focus/FocusEventModifierKt;->a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 62
    .line 63
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusEventModifierLocal;->parent:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 64
    return-void
.end method
