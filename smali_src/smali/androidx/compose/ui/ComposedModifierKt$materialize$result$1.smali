.class final Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_materialize:Landroidx/compose/runtime/Composer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Composer;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;->$this_materialize:Landroidx/compose/runtime/Composer;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier$Element;)Landroidx/compose/ui/Modifier;
    .locals 4
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "acc"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "element"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    instance-of v0, p2, Landroidx/compose/ui/ComposedModifier;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x3

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast p2, Landroidx/compose/ui/ComposedModifier;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/compose/ui/ComposedModifier;->a()Le8/q;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-static {p2, v2}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    check-cast p2, Le8/q;

    .line 33
    .line 34
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;->$this_materialize:Landroidx/compose/runtime/Composer;

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, v0, v2, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    check-cast p2, Landroidx/compose/ui/Modifier;

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;->$this_materialize:Landroidx/compose/runtime/Composer;

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p2}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 48
    move-result-object p2

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_0
    instance-of v0, p2, Landroidx/compose/ui/focus/FocusEventModifier;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroidx/compose/ui/ComposedModifierKt;->a()Le8/q;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v2}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Le8/q;

    .line 64
    .line 65
    iget-object v3, p0, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;->$this_materialize:Landroidx/compose/runtime/Composer;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, p2, v3, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move-object v0, p2

    .line 78
    .line 79
    :goto_0
    instance-of v3, p2, Landroidx/compose/ui/focus/FocusRequesterModifier;

    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroidx/compose/ui/ComposedModifierKt;->b()Le8/q;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v2}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    check-cast v2, Le8/q;

    .line 92
    .line 93
    iget-object v3, p0, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;->$this_materialize:Landroidx/compose/runtime/Composer;

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, p2, v3, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    check-cast p2, Landroidx/compose/ui/Modifier;

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, p2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 103
    move-result-object p2

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    move-object p2, v0

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-interface {p1, p2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 109
    move-result-object p1

    .line 110
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/Modifier$Element;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier$Element;)Landroidx/compose/ui/Modifier;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
