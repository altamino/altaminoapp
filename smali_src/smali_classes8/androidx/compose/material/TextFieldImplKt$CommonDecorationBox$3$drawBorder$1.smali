.class final Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->a(FJJFLandroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nTextFieldImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,374:1\n67#2,6:375\n73#2:407\n77#2:412\n75#3:381\n76#3,11:383\n89#3:411\n76#4:382\n460#5,13:394\n473#5,3:408\n*S KotlinDebug\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1\n*L\n193#1:375,6\n193#1:407\n193#1:412\n193#1:381\n193#1:383,11\n193#1:411\n193#1:382\n193#1:394,13\n193#1:408,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty1:I

.field final synthetic $border:Le8/p;
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

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $labelSize:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/layout/PaddingValues;Le8/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
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
    iput-object p1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;->$labelSize:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p3, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;->$border:Le8/p;

    iput p4, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;->$$dirty1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 9
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
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    .line 21
    const-string v0, "border"

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v0}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;->$labelSize:Landroidx/compose/runtime/MutableState;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Landroidx/compose/ui/geometry/Size;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size;->m()J

    .line 37
    move-result-wide v0

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 40
    .line 41
    .line 42
    invoke-static {p2, v0, v1, v2}, Landroidx/compose/material/OutlinedTextFieldKt;->j(Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;->$border:Le8/p;

    .line 46
    .line 47
    iget v1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;->$$dirty1:I

    .line 48
    .line 49
    .line 50
    const v2, 0x2bb5b5d7

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 54
    .line 55
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    const/16 v3, 0x30

    .line 62
    const/4 v4, 0x1

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v4, p1, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    const v3, -0x4ee9b9da

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 90
    move-result-object v4

    .line 91
    .line 92
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 96
    move-result-object v5

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 103
    .line 104
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 108
    move-result-object v7

    .line 109
    .line 110
    .line 111
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    .line 115
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 116
    move-result-object v8

    .line 117
    .line 118
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 119
    .line 120
    if-nez v8, :cond_2

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
    move-result v8

    .line 131
    .line 132
    if-eqz v8, :cond_3

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

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
    move-result-object v7

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 150
    move-result-object v8

    .line 151
    .line 152
    .line 153
    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    .line 160
    invoke-static {v7, v3, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    .line 174
    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 178
    .line 179
    .line 180
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    .line 184
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 185
    move-result-object v2

    .line 186
    const/4 v3, 0x0

    .line 187
    .line 188
    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    .line 193
    invoke-interface {p2, v2, p1, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    const p2, 0x7ab4aae9

    .line 197
    .line 198
    .line 199
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 200
    .line 201
    .line 202
    const p2, -0x7f65a980

    .line 203
    .line 204
    .line 205
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 206
    .line 207
    sget-object p2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 208
    .line 209
    .line 210
    const p2, 0x3d5cd0bd    # 0.053910006f

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 214
    .line 215
    if-nez v0, :cond_4

    .line 216
    goto :goto_2

    .line 217
    .line 218
    :cond_4
    shr-int/lit8 p2, v1, 0xc

    .line 219
    .line 220
    and-int/lit8 p2, p2, 0xe

    .line 221
    .line 222
    .line 223
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    move-result-object p2

    .line 225
    .line 226
    .line 227
    invoke-interface {v0, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 231
    .line 232
    .line 233
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 234
    .line 235
    .line 236
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 237
    .line 238
    .line 239
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 240
    .line 241
    .line 242
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 243
    .line 244
    .line 245
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 246
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
