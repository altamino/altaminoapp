.class public final Landroidx/compose/foundation/layout/SpacerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpacer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Spacer.kt\nandroidx/compose/foundation/layout/SpacerKt\n+ 2 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,56:1\n75#2:57\n76#2,11:59\n89#2:86\n76#3:58\n460#4,16:70\n*S KotlinDebug\n*F\n+ 1 Spacer.kt\nandroidx/compose/foundation/layout/SpacerKt\n*L\n40#1:57\n40#1:59,11\n40#1:86\n40#1:58\n40#1:70,16\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 7
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    const-string v0, "modifier"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, -0x4581923

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    .line 14
    .line 15
    shl-int/lit8 p2, p2, 0x3

    .line 16
    .line 17
    and-int/lit8 p2, p2, 0x70

    .line 18
    .line 19
    or-int/lit16 p2, p2, 0x180

    .line 20
    .line 21
    .line 22
    const v1, -0x4ee9b9da

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    check-cast v3, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 56
    .line 57
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    shl-int/lit8 p2, p2, 0x9

    .line 68
    .line 69
    and-int/lit16 p2, p2, 0x1c00

    .line 70
    .line 71
    or-int/lit8 p2, p2, 0x6

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    .line 78
    .line 79
    if-nez v6, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 83
    .line 84
    .line 85
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 89
    move-result v6

    .line 90
    .line 91
    if-eqz v6, :cond_1

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 105
    move-result-object v5

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 109
    move-result-object v6

    .line 110
    .line 111
    .line 112
    invoke-static {v5, v0, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-static {v5, v1, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-static {v5, v3, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    shr-int/lit8 v1, p2, 0x3

    .line 147
    .line 148
    and-int/lit8 v1, v1, 0x70

    .line 149
    .line 150
    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    .line 155
    invoke-interface {p0, v0, p1, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    const p0, 0x7ab4aae9

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 162
    .line 163
    shr-int/lit8 p0, p2, 0x9

    .line 164
    .line 165
    .line 166
    const p2, 0x44166c46

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 170
    .line 171
    and-int/lit8 p0, p0, 0xa

    .line 172
    const/4 p2, 0x2

    .line 173
    .line 174
    if-ne p0, p2, :cond_3

    .line 175
    .line 176
    .line 177
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 178
    move-result p0

    .line 179
    .line 180
    if-nez p0, :cond_2

    .line 181
    goto :goto_1

    .line 182
    .line 183
    .line 184
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 185
    .line 186
    .line 187
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 188
    .line 189
    .line 190
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 191
    .line 192
    .line 193
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 194
    .line 195
    .line 196
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 197
    .line 198
    .line 199
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 200
    return-void
.end method
