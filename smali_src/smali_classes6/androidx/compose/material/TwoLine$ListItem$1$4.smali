.class final Landroidx/compose/material/TwoLine$ListItem$1$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TwoLine;->a(Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nListItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/TwoLine$ListItem$1$4\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,429:1\n68#2,5:430\n73#2:461\n77#2:466\n75#3:435\n76#3,11:437\n89#3:465\n76#4:436\n460#5,13:448\n473#5,3:462\n*S KotlinDebug\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/TwoLine$ListItem$1$4\n*L\n262#1:430,5\n262#1:461\n262#1:466\n262#1:435\n262#1:437,11\n262#1:465\n262#1:436\n262#1:448,13\n262#1:462,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $minHeight:F

.field final synthetic $trailing:Le8/p;
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
.method constructor <init>(FLe8/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
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
    iput p1, p0, Landroidx/compose/material/TwoLine$ListItem$1$4;->$minHeight:F

    iput-object p2, p0, Landroidx/compose/material/TwoLine$ListItem$1$4;->$trailing:Le8/p;

    iput p3, p0, Landroidx/compose/material/TwoLine$ListItem$1$4;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 11
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
    iget v1, p0, Landroidx/compose/material/TwoLine$ListItem$1$4;->$minHeight:F

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v1, v2, v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->q(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroidx/compose/material/TwoLine;->b()F

    .line 33
    move-result v7

    .line 34
    const/4 v8, 0x0

    .line 35
    .line 36
    const/16 v9, 0xb

    .line 37
    const/4 v10, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/compose/material/TwoLine$ListItem$1$4;->$trailing:Le8/p;

    .line 50
    .line 51
    iget v2, p0, Landroidx/compose/material/TwoLine$ListItem$1$4;->$$dirty:I

    .line 52
    .line 53
    .line 54
    const v3, 0x2bb5b5d7

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 58
    const/4 v3, 0x6

    .line 59
    const/4 v4, 0x0

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v4, p1, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    const v3, -0x4ee9b9da

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 83
    move-result-object v5

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 87
    move-result-object v5

    .line 88
    .line 89
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 93
    move-result-object v6

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 97
    move-result-object v6

    .line 98
    .line 99
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 100
    .line 101
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 105
    move-result-object v8

    .line 106
    .line 107
    .line 108
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    .line 112
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 113
    move-result-object v9

    .line 114
    .line 115
    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    .line 116
    .line 117
    if-nez v9, :cond_2

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 127
    move-result v9

    .line 128
    .line 129
    if-eqz v9, :cond_3

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 133
    goto :goto_1

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 137
    .line 138
    .line 139
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 143
    move-result-object v8

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 147
    move-result-object v9

    .line 148
    .line 149
    .line 150
    invoke-static {v8, v0, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    .line 157
    invoke-static {v8, v3, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-static {v8, v5, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    invoke-static {v8, v6, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v3

    .line 187
    .line 188
    .line 189
    invoke-interface {p2, v0, p1, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    const p2, 0x7ab4aae9

    .line 193
    .line 194
    .line 195
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 196
    .line 197
    .line 198
    const p2, -0x7f65a980

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 202
    .line 203
    sget-object p2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 204
    .line 205
    .line 206
    const p2, 0x33c68656

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 210
    .line 211
    shr-int/lit8 p2, v2, 0xf

    .line 212
    .line 213
    and-int/lit8 p2, p2, 0xe

    .line 214
    .line 215
    .line 216
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    move-result-object p2

    .line 218
    .line 219
    .line 220
    invoke-interface {v1, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 224
    .line 225
    .line 226
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 227
    .line 228
    .line 229
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 230
    .line 231
    .line 232
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 233
    .line 234
    .line 235
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 236
    .line 237
    .line 238
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 239
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TwoLine$ListItem$1$4;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
