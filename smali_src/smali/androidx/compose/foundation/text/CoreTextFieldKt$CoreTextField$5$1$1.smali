.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->a(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nCoreTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreTextField.kt\nandroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1\n+ 2 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,966:1\n72#2,4:967\n76#2,11:972\n89#2:999\n76#3:971\n460#4,16:983\n*S KotlinDebug\n*F\n+ 1 CoreTextField.kt\nandroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1\n*L\n552#1:967,4\n552#1:972,11\n552#1:999\n552#1:971\n552#1:983,16\n*E\n"
.end annotation


# instance fields
.field final synthetic $manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field final synthetic $onTextLayout:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $readOnly:Z

.field final synthetic $showHandleAndMagnifier:Z

.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/TextFieldState;ZZLe8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Landroidx/compose/foundation/text/TextFieldState;",
            "ZZ",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iput-boolean p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$showHandleAndMagnifier:Z

    iput-boolean p4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$readOnly:Z

    iput-object p5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$onTextLayout:Le8/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 7
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
    new-instance p2, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$onTextLayout:Le8/l;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v0, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;-><init>(Landroidx/compose/foundation/text/TextFieldState;Le8/l;)V

    .line 27
    .line 28
    .line 29
    const v0, -0x4ee9b9da

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 33
    .line 34
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    check-cast v3, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 65
    .line 66
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    .line 81
    .line 82
    if-nez v6, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 92
    move-result v6

    .line 93
    .line 94
    if-eqz v6, :cond_3

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 98
    goto :goto_1

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 112
    move-result-object v6

    .line 113
    .line 114
    .line 115
    invoke-static {v5, p2, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    .line 122
    invoke-static {v5, v1, p2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    .line 129
    invoke-static {v5, v2, p2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 133
    move-result-object p2

    .line 134
    .line 135
    .line 136
    invoke-static {v5, v3, p2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    .line 146
    invoke-static {p2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 147
    move-result-object p2

    .line 148
    const/4 v1, 0x0

    .line 149
    .line 150
    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    .line 155
    invoke-interface {v0, p2, p1, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    const p2, 0x7ab4aae9

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 162
    .line 163
    .line 164
    const p2, 0x6632e53d

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 168
    .line 169
    .line 170
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 171
    .line 172
    .line 173
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 174
    .line 175
    .line 176
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 177
    .line 178
    .line 179
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 180
    .line 181
    iget-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 182
    .line 183
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->c()Landroidx/compose/foundation/text/HandleState;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    sget-object v2, Landroidx/compose/foundation/text/HandleState;->Selection:Landroidx/compose/foundation/text/HandleState;

    .line 190
    .line 191
    if-ne v0, v2, :cond_4

    .line 192
    .line 193
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    if-eqz v0, :cond_4

    .line 200
    .line 201
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    .line 208
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 212
    move-result v0

    .line 213
    .line 214
    if-eqz v0, :cond_4

    .line 215
    .line 216
    iget-boolean v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$showHandleAndMagnifier:Z

    .line 217
    .line 218
    if-eqz v0, :cond_4

    .line 219
    const/4 v1, 0x1

    .line 220
    .line 221
    :cond_4
    const/16 v0, 0x8

    .line 222
    .line 223
    .line 224
    invoke-static {p2, v1, p1, v0}, Landroidx/compose/foundation/text/CoreTextFieldKt;->f(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V

    .line 225
    .line 226
    iget-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextFieldState;->c()Landroidx/compose/foundation/text/HandleState;

    .line 230
    move-result-object p2

    .line 231
    .line 232
    sget-object v1, Landroidx/compose/foundation/text/HandleState;->Cursor:Landroidx/compose/foundation/text/HandleState;

    .line 233
    .line 234
    if-ne p2, v1, :cond_5

    .line 235
    .line 236
    iget-boolean p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$readOnly:Z

    .line 237
    .line 238
    if-nez p2, :cond_5

    .line 239
    .line 240
    iget-boolean p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$showHandleAndMagnifier:Z

    .line 241
    .line 242
    if-eqz p2, :cond_5

    .line 243
    .line 244
    iget-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 245
    .line 246
    .line 247
    invoke-static {p2, p1, v0}, Landroidx/compose/foundation/text/CoreTextFieldKt;->d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 248
    :cond_5
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
