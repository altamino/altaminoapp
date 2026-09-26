.class final Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt;->a(Le8/a;Landroidx/compose/ui/window/PopupPositionProvider;Le8/p;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nExposedDropdownMenuPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1\n+ 2 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/ExposedDropdownMenuPopupKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,471:1\n177#2:472\n204#2:503\n75#3:473\n76#3,11:475\n89#3:502\n76#4:474\n460#5,16:486\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1\n*L\n100#1:472\n100#1:503\n100#1:473\n100#1:475,11\n100#1:502\n100#1:474\n100#1:486,16\n*E\n"
.end annotation


# instance fields
.field final synthetic $currentContent$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $this_apply:Landroidx/compose/material/internal/PopupLayout;


# direct methods
.method constructor <init>(Landroidx/compose/material/internal/PopupLayout;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/internal/PopupLayout;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;->$this_apply:Landroidx/compose/material/internal/PopupLayout;

    iput-object p2, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;->$currentContent$delegate:Landroidx/compose/runtime/State;

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
    sget-object v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$1;->INSTANCE:Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$1;

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v2, v0, v3, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    new-instance v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$2;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;->$this_apply:Landroidx/compose/material/internal/PopupLayout;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$2;-><init>(Landroidx/compose/material/internal/PopupLayout;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v0}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;->$this_apply:Landroidx/compose/material/internal/PopupLayout;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/material/internal/PopupLayout;->getCanCalculatePosition()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-static {p2, v0}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    new-instance v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$3;

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;->$currentContent$delegate:Landroidx/compose/runtime/State;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$3;-><init>(Landroidx/compose/runtime/State;)V

    .line 63
    .line 64
    .line 65
    const v1, 0x7c098732

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v1, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    const v1, 0x6975beb0

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 76
    .line 77
    sget-object v1, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1;->INSTANCE:Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1;

    .line 78
    .line 79
    .line 80
    const v3, -0x4ee9b9da

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 114
    .line 115
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 119
    move-result-object v7

    .line 120
    .line 121
    .line 122
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 123
    move-result-object p2

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 127
    move-result-object v8

    .line 128
    .line 129
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 130
    .line 131
    if-nez v8, :cond_3

    .line 132
    .line 133
    .line 134
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 138
    .line 139
    .line 140
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 141
    move-result v8

    .line 142
    .line 143
    if-eqz v8, :cond_4

    .line 144
    .line 145
    .line 146
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 147
    goto :goto_2

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 151
    .line 152
    .line 153
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 157
    move-result-object v7

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 161
    move-result-object v8

    .line 162
    .line 163
    .line 164
    invoke-static {v7, v1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-static {v7, v3, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    .line 178
    invoke-static {v7, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    .line 185
    invoke-static {v7, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 189
    .line 190
    .line 191
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    .line 195
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    .line 203
    invoke-interface {p2, v1, p1, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const p2, 0x7ab4aae9

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 210
    const/4 p2, 0x6

    .line 211
    .line 212
    .line 213
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    move-result-object p2

    .line 215
    .line 216
    .line 217
    invoke-interface {v0, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 221
    .line 222
    .line 223
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 224
    .line 225
    .line 226
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 227
    .line 228
    .line 229
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 230
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
