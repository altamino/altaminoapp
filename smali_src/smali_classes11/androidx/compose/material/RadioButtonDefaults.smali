.class public final Landroidx/compose/material/RadioButtonDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRadioButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material/RadioButtonDefaults\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,227:1\n67#2,3:228\n66#2:231\n1057#3,6:232\n*S KotlinDebug\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material/RadioButtonDefaults\n*L\n162#1:228,3\n162#1:231\n162#1:232,6\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/RadioButtonDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/RadioButtonDefaults;

    invoke-direct {v0}, Landroidx/compose/material/RadioButtonDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/RadioButtonDefaults;->INSTANCE:Landroidx/compose/material/RadioButtonDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/RadioButtonColors;
    .locals 18
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p7

    .line 3
    .line 4
    .line 5
    const v1, 0x51b3583a

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 9
    .line 10
    and-int/lit8 v1, p9, 0x1

    .line 11
    const/4 v2, 0x6

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->l()J

    .line 23
    move-result-wide v3

    .line 24
    move-wide v6, v3

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    move-wide/from16 v6, p1

    .line 28
    .line 29
    :goto_0
    and-int/lit8 v1, p9, 0x2

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->i()J

    .line 41
    move-result-wide v8

    .line 42
    .line 43
    .line 44
    const v10, 0x3f19999a    # 0.6f

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v12, 0x0

    .line 47
    const/4 v13, 0x0

    .line 48
    .line 49
    const/16 v14, 0xe

    .line 50
    const/4 v15, 0x0

    .line 51
    .line 52
    .line 53
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 54
    move-result-wide v3

    .line 55
    move-wide v8, v3

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    move-wide/from16 v8, p3

    .line 59
    .line 60
    :goto_1
    and-int/lit8 v1, p9, 0x4

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->i()J

    .line 72
    move-result-wide v10

    .line 73
    .line 74
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 78
    move-result v12

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/4 v15, 0x0

    .line 82
    .line 83
    const/16 v16, 0xe

    .line 84
    .line 85
    const/16 v17, 0x0

    .line 86
    .line 87
    .line 88
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 89
    move-result-wide v1

    .line 90
    move-wide v10, v1

    .line 91
    goto :goto_2

    .line 92
    .line 93
    :cond_2
    move-wide/from16 v10, p5

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    .line 108
    const v4, 0x607fb4c4

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 115
    move-result v1

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 119
    move-result v2

    .line 120
    or-int/2addr v1, v2

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 124
    move-result v2

    .line 125
    or-int/2addr v1, v2

    .line 126
    .line 127
    .line 128
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    if-nez v1, :cond_3

    .line 132
    .line 133
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    if-ne v2, v1, :cond_4

    .line 140
    .line 141
    :cond_3
    new-instance v2, Landroidx/compose/material/DefaultRadioButtonColors;

    .line 142
    const/4 v12, 0x0

    .line 143
    move-object v5, v2

    .line 144
    .line 145
    .line 146
    invoke-direct/range {v5 .. v12}, Landroidx/compose/material/DefaultRadioButtonColors;-><init>(JJJLkotlin/jvm/internal/k;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 153
    .line 154
    check-cast v2, Landroidx/compose/material/DefaultRadioButtonColors;

    .line 155
    .line 156
    .line 157
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 158
    return-object v2
.end method
