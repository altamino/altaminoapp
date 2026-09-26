.class public final Landroidx/compose/material/ExposedDropdownMenuDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material/ExposedDropdownMenuDefaults\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,736:1\n76#2:737\n76#2:738\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material/ExposedDropdownMenuDefaults\n*L\n354#1:737\n457#1:738\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/ExposedDropdownMenuDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/ExposedDropdownMenuDefaults;

    invoke-direct {v0}, Landroidx/compose/material/ExposedDropdownMenuDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/ExposedDropdownMenuDefaults;->INSTANCE:Landroidx/compose/material/ExposedDropdownMenuDefaults;

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
.method public final a(ZLe8/a;Landroidx/compose/runtime/Composer;II)V
    .locals 12
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move v2, p1

    .line 2
    .line 3
    .line 4
    const v0, 0x3437e13d

    .line 5
    move-object v1, p3

    .line 6
    .line 7
    .line 8
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    and-int/lit8 v1, p5, 0x1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    or-int/lit8 v1, p4, 0x6

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_0
    and-int/lit8 v1, p4, 0xe

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x2

    .line 30
    .line 31
    :goto_0
    or-int v1, p4, v1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_2
    move/from16 v1, p4

    .line 35
    .line 36
    :goto_1
    and-int/lit8 v3, p5, 0x2

    .line 37
    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    or-int/lit8 v1, v1, 0x30

    .line 41
    :cond_3
    move-object v4, p2

    .line 42
    goto :goto_3

    .line 43
    .line 44
    :cond_4
    and-int/lit8 v4, p4, 0x70

    .line 45
    .line 46
    if-nez v4, :cond_3

    .line 47
    move-object v4, p2

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 51
    move-result v5

    .line 52
    .line 53
    if-eqz v5, :cond_5

    .line 54
    .line 55
    const/16 v5, 0x20

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_5
    const/16 v5, 0x10

    .line 59
    :goto_2
    or-int/2addr v1, v5

    .line 60
    .line 61
    :goto_3
    and-int/lit8 v5, v1, 0x5b

    .line 62
    .line 63
    const/16 v6, 0x12

    .line 64
    .line 65
    if-ne v5, v6, :cond_7

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 69
    move-result v5

    .line 70
    .line 71
    if-nez v5, :cond_6

    .line 72
    goto :goto_4

    .line 73
    .line 74
    .line 75
    :cond_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 76
    move-object v3, v4

    .line 77
    goto :goto_6

    .line 78
    .line 79
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 80
    .line 81
    sget-object v3, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$1;->INSTANCE:Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$1;

    .line 82
    move-object v11, v3

    .line 83
    goto :goto_5

    .line 84
    :cond_8
    move-object v11, v4

    .line 85
    .line 86
    :goto_5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 87
    .line 88
    sget-object v4, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$2;->INSTANCE:Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$2;

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 92
    move-result-object v4

    .line 93
    const/4 v5, 0x0

    .line 94
    const/4 v6, 0x0

    .line 95
    .line 96
    new-instance v3, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$3;

    .line 97
    .line 98
    .line 99
    invoke-direct {v3, p1}, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$3;-><init>(Z)V

    .line 100
    .line 101
    .line 102
    const v7, 0x2b47c0d9

    .line 103
    const/4 v8, 0x1

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v7, v8, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 107
    move-result-object v7

    .line 108
    .line 109
    shr-int/lit8 v1, v1, 0x3

    .line 110
    .line 111
    and-int/lit8 v1, v1, 0xe

    .line 112
    .line 113
    or-int/lit16 v9, v1, 0x6000

    .line 114
    .line 115
    const/16 v10, 0xc

    .line 116
    move-object v3, v11

    .line 117
    move-object v8, v0

    .line 118
    .line 119
    .line 120
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/IconButtonKt;->a(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 121
    .line 122
    .line 123
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 124
    move-result-object v6

    .line 125
    .line 126
    if-nez v6, :cond_9

    .line 127
    goto :goto_7

    .line 128
    .line 129
    :cond_9
    new-instance v7, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$4;

    .line 130
    move-object v0, v7

    .line 131
    move-object v1, p0

    .line 132
    move v2, p1

    .line 133
    .line 134
    move/from16 v4, p4

    .line 135
    .line 136
    move/from16 v5, p5

    .line 137
    .line 138
    .line 139
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$4;-><init>(Landroidx/compose/material/ExposedDropdownMenuDefaults;ZLe8/a;II)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 143
    :goto_7
    return-void
.end method
