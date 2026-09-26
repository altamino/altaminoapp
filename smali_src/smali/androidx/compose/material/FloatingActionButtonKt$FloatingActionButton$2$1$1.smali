.class final Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2$1;->a(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2$1$1\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,333:1\n68#2,5:334\n73#2:365\n77#2:370\n75#3:339\n76#3,11:341\n89#3:369\n76#4:340\n460#5,13:352\n473#5,3:366\n*S KotlinDebug\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2$1$1\n*L\n100#1:334,5\n100#1:365\n100#1:370\n100#1:339\n100#1:341,11\n100#1:369\n100#1:340\n100#1:352,13\n100#1:366,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2$1$1;->$content:Le8/p;

    iput p2, p0, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2$1$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 10
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
    and-int/lit8 p2, p2, 0xb

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/material/FloatingActionButtonKt;->e()F

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroidx/compose/material/FloatingActionButtonKt;->e()F

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-static {p2, v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->g(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2$1$1;->$content:Le8/p;

    .line 40
    .line 41
    iget v2, p0, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2$1$1;->$$dirty:I

    .line 42
    .line 43
    .line 44
    const v3, 0x2bb5b5d7

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 48
    const/4 v3, 0x6

    .line 49
    const/4 v4, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v4, p1, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    const v3, -0x4ee9b9da

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 73
    move-result-object v5

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 83
    move-result-object v6

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 87
    move-result-object v6

    .line 88
    .line 89
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 90
    .line 91
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 95
    move-result-object v8

    .line 96
    .line 97
    .line 98
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 103
    move-result-object v9

    .line 104
    .line 105
    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    .line 106
    .line 107
    if-nez v9, :cond_2

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 114
    .line 115
    .line 116
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 117
    move-result v9

    .line 118
    .line 119
    if-eqz v9, :cond_3

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 123
    goto :goto_1

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 127
    .line 128
    .line 129
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 133
    move-result-object v8

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 137
    move-result-object v9

    .line 138
    .line 139
    .line 140
    invoke-static {v8, v0, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    .line 147
    invoke-static {v8, v3, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-static {v8, v5, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    .line 161
    invoke-static {v8, v6, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v3

    .line 177
    .line 178
    .line 179
    invoke-interface {p2, v0, p1, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    const p2, 0x7ab4aae9

    .line 183
    .line 184
    .line 185
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 186
    .line 187
    .line 188
    const p2, -0x7f65a980

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 192
    .line 193
    sget-object p2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 194
    .line 195
    .line 196
    const p2, -0x3e86ff92

    .line 197
    .line 198
    .line 199
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 200
    .line 201
    shr-int/lit8 p2, v2, 0x15

    .line 202
    .line 203
    and-int/lit8 p2, p2, 0xe

    .line 204
    .line 205
    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    move-result-object p2

    .line 208
    .line 209
    .line 210
    invoke-interface {v1, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 214
    .line 215
    .line 216
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 217
    .line 218
    .line 219
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 220
    .line 221
    .line 222
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 223
    .line 224
    .line 225
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 226
    .line 227
    .line 228
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 229
    :goto_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2$1$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
