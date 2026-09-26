.class public final Landroidx/compose/ui/layout/TestModifierUpdaterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestModifierUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestModifierUpdater.kt\nandroidx/compose/ui/layout/TestModifierUpdaterKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,58:1\n251#2,10:59\n*S KotlinDebug\n*F\n+ 1 TestModifierUpdater.kt\nandroidx/compose/ui/layout/TestModifierUpdaterKt\n*L\n50#1:59,10\n*E\n"
.end annotation


# direct methods
.method public static final a(Le8/l;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p0    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/layout/TestModifierUpdater;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "onAttached"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, -0x63b8f634

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    and-int/lit8 v0, p2, 0xe

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    or-int/2addr v0, p2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, p2

    .line 30
    .line 31
    :goto_1
    and-int/lit8 v0, v0, 0xb

    .line 32
    .line 33
    if-ne v0, v1, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 44
    goto :goto_4

    .line 45
    .line 46
    :cond_3
    :goto_2
    sget-object v0, Landroidx/compose/ui/layout/TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1;->INSTANCE:Landroidx/compose/ui/layout/TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1;

    .line 47
    .line 48
    sget-object v1, Landroidx/compose/ui/node/LayoutNode;->Companion:Landroidx/compose/ui/node/LayoutNode$Companion;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode$Companion;->a()Le8/a;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    const v2, 0x7076b8d0

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    .line 65
    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->v()V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    new-instance v2, Landroidx/compose/ui/layout/TestModifierUpdaterKt$TestModifierUpdaterLayout$$inlined$ComposeNode$1;

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v1}, Landroidx/compose/ui/layout/TestModifierUpdaterKt$TestModifierUpdaterLayout$$inlined$ComposeNode$1;-><init>(Le8/a;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 87
    goto :goto_3

    .line 88
    .line 89
    .line 90
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 91
    .line 92
    .line 93
    :goto_3
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 104
    .line 105
    new-instance v0, Landroidx/compose/ui/layout/TestModifierUpdaterKt$TestModifierUpdaterLayout$1$1;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/TestModifierUpdaterKt$TestModifierUpdaterLayout$1$1;-><init>(Le8/l;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v0}, Landroidx/compose/runtime/Updater;->d(Landroidx/compose/runtime/Composer;Le8/l;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 118
    .line 119
    .line 120
    :goto_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    if-nez p1, :cond_6

    .line 124
    goto :goto_5

    .line 125
    .line 126
    :cond_6
    new-instance v0, Landroidx/compose/ui/layout/TestModifierUpdaterKt$TestModifierUpdaterLayout$2;

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/layout/TestModifierUpdaterKt$TestModifierUpdaterLayout$2;-><init>(Le8/l;I)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 133
    :goto_5
    return-void
.end method
