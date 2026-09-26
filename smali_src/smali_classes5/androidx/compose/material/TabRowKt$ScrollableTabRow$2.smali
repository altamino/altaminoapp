.class final Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt;->a(ILandroidx/compose/ui/Modifier;JJFLe8/q;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$ScrollableTabRow$2\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,517:1\n473#2,4:518\n477#2,2:526\n481#2:532\n25#3:522\n50#3:533\n49#3:534\n1057#4,3:523\n1060#4,3:529\n1057#4,6:535\n473#5:528\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$ScrollableTabRow$2\n*L\n247#1:518,4\n247#1:526,2\n247#1:532\n247#1:522\n248#1:533\n248#1:534\n247#1:523,3\n247#1:529,3\n248#1:535,6\n247#1:528\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $divider:Le8/p;
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

.field final synthetic $edgePadding:F

.field final synthetic $indicator:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabs:Le8/p;
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
.method constructor <init>(FLe8/p;Le8/p;ILe8/q;I)V
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
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I",
            "Le8/q<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$edgePadding:F

    iput-object p2, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$tabs:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$divider:Le8/p;

    iput p4, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$selectedTabIndex:I

    iput-object p5, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$indicator:Le8/q;

    iput p6, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 18
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
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    and-int/lit8 v2, p2, 0xb

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    if-ne v2, v3, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v1, v2, v4}, Landroidx/compose/foundation/ScrollKt;->c(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    .line 27
    move-result-object v6

    .line 28
    .line 29
    .line 30
    const v5, 0x2e20b340

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 34
    .line 35
    .line 36
    const v5, -0x1d58f75c

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 49
    move-result-object v8

    .line 50
    .line 51
    if-ne v5, v8, :cond_2

    .line 52
    .line 53
    sget-object v5, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 54
    .line 55
    .line 56
    invoke-static {v5, v1}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    .line 57
    move-result-object v5

    .line 58
    .line 59
    new-instance v8, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 60
    .line 61
    .line 62
    invoke-direct {v8, v5}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 66
    move-object v5, v8

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 70
    .line 71
    check-cast v5, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 79
    .line 80
    .line 81
    const v8, 0x1e7b2b64

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 88
    move-result v8

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 92
    move-result v9

    .line 93
    or-int/2addr v8, v9

    .line 94
    .line 95
    .line 96
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 97
    move-result-object v9

    .line 98
    .line 99
    if-nez v8, :cond_3

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 103
    move-result-object v7

    .line 104
    .line 105
    if-ne v9, v7, :cond_4

    .line 106
    .line 107
    :cond_3
    new-instance v9, Landroidx/compose/material/ScrollableTabData;

    .line 108
    .line 109
    .line 110
    invoke-direct {v9, v6, v5}, Landroidx/compose/material/ScrollableTabData;-><init>(Landroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/o0;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 117
    move-object v14, v9

    .line 118
    .line 119
    check-cast v14, Landroidx/compose/material/ScrollableTabData;

    .line 120
    .line 121
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v8, 0x0

    .line 124
    .line 125
    .line 126
    invoke-static {v5, v7, v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 127
    move-result-object v4

    .line 128
    .line 129
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->h()Landroidx/compose/ui/Alignment;

    .line 133
    move-result-object v5

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v5, v2, v3, v8}, Landroidx/compose/foundation/layout/SizeKt;->H(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 137
    move-result-object v5

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v9, 0x0

    .line 140
    .line 141
    const/16 v10, 0xe

    .line 142
    const/4 v11, 0x0

    .line 143
    .line 144
    .line 145
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 146
    move-result-object v3

    .line 147
    .line 148
    .line 149
    invoke-static {v3}, Landroidx/compose/foundation/selection/SelectableGroupKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 150
    move-result-object v3

    .line 151
    .line 152
    .line 153
    invoke-static {v3}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 154
    move-result-object v3

    .line 155
    .line 156
    new-instance v4, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;

    .line 157
    .line 158
    iget v11, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$edgePadding:F

    .line 159
    .line 160
    iget-object v12, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$tabs:Le8/p;

    .line 161
    .line 162
    iget-object v13, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$divider:Le8/p;

    .line 163
    .line 164
    iget v15, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$selectedTabIndex:I

    .line 165
    .line 166
    iget-object v5, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$indicator:Le8/q;

    .line 167
    .line 168
    iget v6, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->$$dirty:I

    .line 169
    move-object v10, v4

    .line 170
    .line 171
    move-object/from16 v16, v5

    .line 172
    .line 173
    move/from16 v17, v6

    .line 174
    .line 175
    .line 176
    invoke-direct/range {v10 .. v17}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;-><init>(FLe8/p;Le8/p;Landroidx/compose/material/ScrollableTabData;ILe8/q;I)V

    .line 177
    .line 178
    .line 179
    invoke-static {v3, v4, v1, v2, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 180
    :goto_1
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
