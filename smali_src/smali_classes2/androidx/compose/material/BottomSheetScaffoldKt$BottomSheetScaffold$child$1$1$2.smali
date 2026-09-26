.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->a(ILandroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nBottomSheetScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,487:1\n73#2,7:488\n80#2:521\n84#2:526\n75#3:495\n76#3,11:497\n89#3:525\n76#4:496\n460#5,13:508\n473#5,3:522\n*S KotlinDebug\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2\n*L\n362#1:488,7\n362#1:521\n362#1:526\n362#1:495\n362#1:497,11\n362#1:525\n362#1:496\n362#1:508,13\n362#1:522,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $sheetContent:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2;->$sheetContent:Le8/q;

    iput p2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2;->$$dirty:I

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
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2;->$sheetContent:Le8/q;

    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2;->$$dirty:I

    .line 22
    .line 23
    shl-int/lit8 v1, v1, 0x9

    .line 24
    .line 25
    and-int/lit16 v1, v1, 0x1c00

    .line 26
    .line 27
    .line 28
    const v2, -0x1cd0f17e

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 32
    .line 33
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 34
    .line 35
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->k()Landroidx/compose/ui/Alignment$Horizontal;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    shr-int/lit8 v5, v1, 0x3

    .line 48
    .line 49
    and-int/lit8 v6, v5, 0xe

    .line 50
    .line 51
    and-int/lit8 v5, v5, 0x70

    .line 52
    or-int/2addr v5, v6

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4, p1, v5}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    shl-int/lit8 v4, v1, 0x3

    .line 59
    .line 60
    and-int/lit8 v4, v4, 0x70

    .line 61
    .line 62
    .line 63
    const v5, -0x4ee9b9da

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 80
    move-result-object v6

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 84
    move-result-object v6

    .line 85
    .line 86
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 90
    move-result-object v7

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 94
    move-result-object v7

    .line 95
    .line 96
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 97
    .line 98
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 102
    move-result-object v9

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    shl-int/lit8 v4, v4, 0x9

    .line 109
    .line 110
    and-int/lit16 v4, v4, 0x1c00

    .line 111
    .line 112
    or-int/lit8 v4, v4, 0x6

    .line 113
    .line 114
    .line 115
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 116
    move-result-object v10

    .line 117
    .line 118
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 119
    .line 120
    if-nez v10, :cond_2

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 124
    .line 125
    .line 126
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 127
    .line 128
    .line 129
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 130
    move-result v10

    .line 131
    .line 132
    if-eqz v10, :cond_3

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 136
    goto :goto_1

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 146
    move-result-object v9

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 150
    move-result-object v10

    .line 151
    .line 152
    .line 153
    invoke-static {v9, v3, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 157
    move-result-object v3

    .line 158
    .line 159
    .line 160
    invoke-static {v9, v5, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 164
    move-result-object v3

    .line 165
    .line 166
    .line 167
    invoke-static {v9, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    .line 174
    invoke-static {v9, v7, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 178
    .line 179
    .line 180
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 181
    move-result-object v3

    .line 182
    .line 183
    .line 184
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 185
    move-result-object v3

    .line 186
    .line 187
    shr-int/lit8 v5, v4, 0x3

    .line 188
    .line 189
    and-int/lit8 v5, v5, 0x70

    .line 190
    .line 191
    .line 192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object v5

    .line 194
    .line 195
    .line 196
    invoke-interface {v2, v3, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    const v2, 0x7ab4aae9

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 203
    .line 204
    shr-int/lit8 v2, v4, 0x9

    .line 205
    .line 206
    .line 207
    const v3, -0x455f09d5

    .line 208
    .line 209
    .line 210
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 211
    .line 212
    and-int/lit8 v2, v2, 0xa

    .line 213
    .line 214
    if-ne v2, v0, :cond_5

    .line 215
    .line 216
    .line 217
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 218
    move-result v0

    .line 219
    .line 220
    if-nez v0, :cond_4

    .line 221
    goto :goto_2

    .line 222
    .line 223
    .line 224
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 225
    goto :goto_3

    .line 226
    .line 227
    :cond_5
    :goto_2
    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 228
    .line 229
    shr-int/lit8 v1, v1, 0x6

    .line 230
    .line 231
    and-int/lit8 v1, v1, 0x70

    .line 232
    .line 233
    or-int/lit8 v1, v1, 0x6

    .line 234
    .line 235
    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    move-result-object v1

    .line 238
    .line 239
    .line 240
    invoke-interface {p2, v0, p1, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 244
    .line 245
    .line 246
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 247
    .line 248
    .line 249
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 250
    .line 251
    .line 252
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 253
    .line 254
    .line 255
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 256
    :goto_4
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
