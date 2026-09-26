.class public final Landroidx/compose/material/ripple/PlatformRipple;
.super Landroidx/compose/material/ripple/Ripple;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRipple.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ripple.android.kt\nandroidx/compose/material/ripple/PlatformRipple\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,253:1\n50#2:254\n49#2:255\n67#2,3:262\n66#2:265\n957#3,6:256\n957#3,6:266\n76#4:272\n*S KotlinDebug\n*F\n+ 1 Ripple.android.kt\nandroidx/compose/material/ripple/PlatformRipple\n*L\n68#1:254\n68#1:255\n91#1:262,3\n91#1:265\n68#1:256,6\n91#1:266,6\n106#1:272\n*E\n"
.end annotation


# direct methods
.method private constructor <init>(ZFLandroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/ripple/Ripple;-><init>(ZFLandroidx/compose/runtime/State;Lkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/runtime/State;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/ripple/PlatformRipple;-><init>(ZFLandroidx/compose/runtime/State;)V

    return-void
.end method

.method private final c(Landroidx/compose/runtime/Composer;I)Landroid/view/ViewGroup;
    .locals 2
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p2, -0x67961d31

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    move-object v0, p2

    .line 20
    .line 21
    check-cast v0, Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    instance-of v1, v0, Landroid/view/View;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string p2, "parent"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object p2, v0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v0, "Couldn\'t find a valid parent for "

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p2, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p2

    .line 69
    .line 70
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 74
    return-object p2
.end method


# virtual methods
.method public b(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/ripple/RippleIndicationInstance;
    .locals 11
    .param p1    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "ZF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/material/ripple/RippleIndicationInstance;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p6

    .line 5
    .line 6
    const-string v3, "interactionSource"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v3, "color"

    .line 12
    move-object v7, p4

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v3, "rippleAlpha"

    .line 18
    .line 19
    move-object/from16 v8, p5

    .line 20
    .line 21
    .line 22
    invoke-static {v8, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const v3, 0x13be9e37

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 29
    .line 30
    shr-int/lit8 v3, p7, 0xf

    .line 31
    .line 32
    and-int/lit8 v3, v3, 0xe

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v2, v3}, Landroidx/compose/material/ripple/PlatformRipple;->c(Landroidx/compose/runtime/Composer;I)Landroid/view/ViewGroup;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    const v4, 0x61f244d6

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/view/View;->isInEditMode()Z

    .line 46
    move-result v4

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    .line 51
    const v3, -0x384098

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    .line 61
    invoke-interface {v2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 62
    move-result v3

    .line 63
    or-int/2addr v1, v3

    .line 64
    .line 65
    .line 66
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    if-nez v1, :cond_0

    .line 70
    .line 71
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    if-ne v3, v1, :cond_1

    .line 78
    .line 79
    :cond_0
    new-instance v3, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;

    .line 80
    const/4 v9, 0x0

    .line 81
    move-object v4, v3

    .line 82
    move v5, p2

    .line 83
    move v6, p3

    .line 84
    move-object v7, p4

    .line 85
    .line 86
    move-object/from16 v8, p5

    .line 87
    .line 88
    .line 89
    invoke-direct/range {v4 .. v9}, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/k;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 96
    .line 97
    check-cast v3, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;

    .line 98
    .line 99
    .line 100
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 101
    .line 102
    .line 103
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 104
    return-object v3

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 111
    move-result v4

    .line 112
    const/4 v5, 0x0

    .line 113
    .line 114
    :goto_0
    if-ge v5, v4, :cond_4

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 118
    move-result-object v6

    .line 119
    .line 120
    instance-of v9, v6, Landroidx/compose/material/ripple/RippleContainer;

    .line 121
    .line 122
    if-eqz v9, :cond_3

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const/4 v6, 0x0

    .line 128
    .line 129
    :goto_1
    if-nez v6, :cond_5

    .line 130
    .line 131
    new-instance v6, Landroidx/compose/material/ripple/RippleContainer;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    const-string v5, "view.context"

    .line 138
    .line 139
    .line 140
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v6, v4}, Landroidx/compose/material/ripple/RippleContainer;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    const v3, -0x383ecf

    .line 150
    .line 151
    .line 152
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 156
    move-result v1

    .line 157
    .line 158
    .line 159
    invoke-interface {v2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 160
    move-result v3

    .line 161
    or-int/2addr v1, v3

    .line 162
    .line 163
    .line 164
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 165
    move-result v3

    .line 166
    or-int/2addr v1, v3

    .line 167
    .line 168
    .line 169
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 170
    move-result-object v3

    .line 171
    .line 172
    if-nez v1, :cond_6

    .line 173
    .line 174
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    if-ne v3, v1, :cond_7

    .line 181
    .line 182
    :cond_6
    new-instance v3, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    .line 183
    move-object v9, v6

    .line 184
    .line 185
    check-cast v9, Landroidx/compose/material/ripple/RippleContainer;

    .line 186
    const/4 v10, 0x0

    .line 187
    move-object v4, v3

    .line 188
    move v5, p2

    .line 189
    move v6, p3

    .line 190
    move-object v7, p4

    .line 191
    .line 192
    move-object/from16 v8, p5

    .line 193
    .line 194
    .line 195
    invoke-direct/range {v4 .. v10}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/material/ripple/RippleContainer;Lkotlin/jvm/internal/k;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 202
    .line 203
    check-cast v3, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    .line 204
    .line 205
    .line 206
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 207
    return-object v3
.end method
