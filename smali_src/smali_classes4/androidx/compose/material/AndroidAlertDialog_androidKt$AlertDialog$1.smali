.class final Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AndroidAlertDialog_androidKt;->a(Le8/a;Le8/p;Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Le8/p;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nAndroidAlertDialog.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAlertDialog.android.kt\nandroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,152:1\n155#2:153\n155#2:187\n155#2:188\n67#3,6:154\n73#3:186\n77#3:193\n75#4:160\n76#4,11:162\n89#4:192\n76#5:161\n460#6,13:173\n473#6,3:189\n*S KotlinDebug\n*F\n+ 1 AndroidAlertDialog.android.kt\nandroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1\n*L\n80#1:153\n82#1:187\n83#1:188\n80#1:154,6\n80#1:186\n80#1:193\n80#1:160\n80#1:162,11\n80#1:192\n80#1:161\n80#1:173,13\n80#1:189,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $confirmButton:Le8/p;
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

.field final synthetic $dismissButton:Le8/p;
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
.method constructor <init>(Le8/p;ILe8/p;)V
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
            ">;I",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1;->$dismissButton:Le8/p;

    iput p2, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1;->$$dirty:I

    iput-object p3, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1;->$confirmButton:Le8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 13
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
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    const/16 v1, 0x8

    .line 29
    int-to-float v1, v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 33
    move-result v2

    .line 34
    int-to-float v0, v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-static {p2, v2, v0}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1;->$dismissButton:Le8/p;

    .line 45
    .line 46
    iget v2, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1;->$$dirty:I

    .line 47
    .line 48
    iget-object v4, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1;->$confirmButton:Le8/p;

    .line 49
    .line 50
    .line 51
    const v5, 0x2bb5b5d7

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 55
    .line 56
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 60
    move-result-object v5

    .line 61
    const/4 v6, 0x0

    .line 62
    .line 63
    .line 64
    invoke-static {v5, v6, p1, v6}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    .line 68
    const v7, -0x4ee9b9da

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 75
    move-result-object v7

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 79
    move-result-object v7

    .line 80
    .line 81
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 85
    move-result-object v8

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 89
    move-result-object v8

    .line 90
    .line 91
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 95
    move-result-object v9

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 99
    move-result-object v9

    .line 100
    .line 101
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 102
    .line 103
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 107
    move-result-object v11

    .line 108
    .line 109
    .line 110
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 115
    move-result-object v12

    .line 116
    .line 117
    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    .line 118
    .line 119
    if-nez v12, :cond_2

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 123
    .line 124
    .line 125
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 126
    .line 127
    .line 128
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 129
    move-result v12

    .line 130
    .line 131
    if-eqz v12, :cond_3

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v11}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 139
    .line 140
    .line 141
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 145
    move-result-object v11

    .line 146
    .line 147
    .line 148
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 149
    move-result-object v12

    .line 150
    .line 151
    .line 152
    invoke-static {v11, v5, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 156
    move-result-object v5

    .line 157
    .line 158
    .line 159
    invoke-static {v11, v7, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 163
    move-result-object v5

    .line 164
    .line 165
    .line 166
    invoke-static {v11, v8, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 170
    move-result-object v5

    .line 171
    .line 172
    .line 173
    invoke-static {v11, v9, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 177
    .line 178
    .line 179
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 180
    move-result-object v5

    .line 181
    .line 182
    .line 183
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 184
    move-result-object v5

    .line 185
    .line 186
    .line 187
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v6

    .line 189
    .line 190
    .line 191
    invoke-interface {p2, v5, p1, v6}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    const p2, 0x7ab4aae9

    .line 195
    .line 196
    .line 197
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 198
    .line 199
    .line 200
    const p2, -0x7f65a980

    .line 201
    .line 202
    .line 203
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 204
    .line 205
    sget-object p2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 206
    .line 207
    .line 208
    const p2, -0x19eb7585

    .line 209
    .line 210
    .line 211
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 212
    .line 213
    .line 214
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 215
    move-result p2

    .line 216
    .line 217
    const/16 v1, 0xc

    .line 218
    int-to-float v1, v1

    .line 219
    .line 220
    .line 221
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 222
    move-result v1

    .line 223
    .line 224
    new-instance v5, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1$1$1;

    .line 225
    .line 226
    .line 227
    invoke-direct {v5, v0, v2, v4}, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1$1$1;-><init>(Le8/p;ILe8/p;)V

    .line 228
    .line 229
    .line 230
    const v0, 0x6aa53ba4

    .line 231
    .line 232
    .line 233
    invoke-static {p1, v0, v3, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 234
    move-result-object v0

    .line 235
    .line 236
    const/16 v2, 0x1b6

    .line 237
    .line 238
    .line 239
    invoke-static {p2, v1, v0, p1, v2}, Landroidx/compose/material/AlertDialogKt;->c(FFLe8/p;Landroidx/compose/runtime/Composer;I)V

    .line 240
    .line 241
    .line 242
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 243
    .line 244
    .line 245
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 246
    .line 247
    .line 248
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 249
    .line 250
    .line 251
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 252
    .line 253
    .line 254
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 255
    .line 256
    .line 257
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 258
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
