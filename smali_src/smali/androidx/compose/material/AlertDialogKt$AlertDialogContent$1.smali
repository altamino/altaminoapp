.class final Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt;->b(Le8/p;Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nAlertDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material/AlertDialogKt$AlertDialogContent$1\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,291:1\n73#2,7:292\n80#2:325\n84#2:330\n75#3:299\n76#3,11:301\n89#3:329\n76#4:300\n460#5,13:312\n473#5,3:326\n*S KotlinDebug\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material/AlertDialogKt$AlertDialogContent$1\n*L\n59#1:292,7\n59#1:325\n59#1:330\n59#1:299\n59#1:301,11\n59#1:329\n59#1:300\n59#1:312,13\n59#1:326,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $buttons:Le8/p;
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

.field final synthetic $text:Le8/p;
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

.field final synthetic $title:Le8/p;
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
.method constructor <init>(Le8/p;Le8/p;Le8/p;I)V
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
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
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
    iput-object p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;->$title:Le8/p;

    iput-object p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;->$text:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;->$buttons:Le8/p;

    iput p4, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 12
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
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;->$title:Le8/p;

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;->$text:Le8/p;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;->$buttons:Le8/p;

    .line 24
    .line 25
    iget v2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;->$$dirty:I

    .line 26
    .line 27
    .line 28
    const v3, -0x1cd0f17e

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 32
    .line 33
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 34
    .line 35
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->k()Landroidx/compose/ui/Alignment$Horizontal;

    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {v4, v5, p1, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    .line 53
    const v5, -0x4ee9b9da

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 80
    move-result-object v8

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 84
    move-result-object v8

    .line 85
    .line 86
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 87
    .line 88
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 92
    move-result-object v10

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 100
    move-result-object v11

    .line 101
    .line 102
    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    .line 103
    .line 104
    if-nez v11, :cond_2

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 114
    move-result v11

    .line 115
    .line 116
    if-eqz v11, :cond_3

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, v10}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 120
    goto :goto_1

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 124
    .line 125
    .line 126
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 130
    move-result-object v10

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 134
    move-result-object v11

    .line 135
    .line 136
    .line 137
    invoke-static {v10, v4, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    .line 144
    invoke-static {v10, v5, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    .line 151
    invoke-static {v10, v7, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    .line 158
    invoke-static {v10, v8, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 165
    move-result-object v4

    .line 166
    .line 167
    .line 168
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 169
    move-result-object v4

    .line 170
    .line 171
    .line 172
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v5

    .line 174
    .line 175
    .line 176
    invoke-interface {v3, v4, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    const v3, 0x7ab4aae9

    .line 180
    .line 181
    .line 182
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 183
    .line 184
    .line 185
    const v3, -0x455f09d5

    .line 186
    .line 187
    .line 188
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 189
    .line 190
    sget-object v3, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 191
    .line 192
    .line 193
    const v4, 0x1f370449

    .line 194
    .line 195
    .line 196
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 197
    const/4 v4, 0x0

    .line 198
    const/4 v5, 0x1

    .line 199
    .line 200
    if-eqz p2, :cond_4

    .line 201
    .line 202
    new-instance v6, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$1$1;

    .line 203
    .line 204
    .line 205
    invoke-direct {v6, p2, v2}, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$1$1;-><init>(Le8/p;I)V

    .line 206
    .line 207
    .line 208
    const p2, 0x24f609e0

    .line 209
    .line 210
    .line 211
    invoke-static {p1, p2, v5, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 212
    move-result-object p2

    .line 213
    goto :goto_2

    .line 214
    :cond_4
    move-object p2, v4

    .line 215
    .line 216
    :goto_2
    if-eqz v0, :cond_5

    .line 217
    .line 218
    new-instance v4, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$2$1;

    .line 219
    .line 220
    .line 221
    invoke-direct {v4, v0, v2}, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$2$1;-><init>(Le8/p;I)V

    .line 222
    .line 223
    .line 224
    const v0, 0x752c9e3f    # 2.188195E32f

    .line 225
    .line 226
    .line 227
    invoke-static {p1, v0, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 228
    move-result-object v4

    .line 229
    :cond_5
    const/4 v0, 0x6

    .line 230
    .line 231
    .line 232
    invoke-static {v3, p2, v4, p1, v0}, Landroidx/compose/material/AlertDialogKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 233
    .line 234
    and-int/lit8 p2, v2, 0xe

    .line 235
    .line 236
    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    move-result-object p2

    .line 239
    .line 240
    .line 241
    invoke-interface {v1, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 245
    .line 246
    .line 247
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 248
    .line 249
    .line 250
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 251
    .line 252
    .line 253
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 254
    .line 255
    .line 256
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 257
    .line 258
    .line 259
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 260
    :goto_3
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
