.class final Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1;->a(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nSelectionContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionContainer.kt\nandroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,144:1\n32#2,4:145\n37#2:156\n36#3:149\n1057#4,6:150\n*S KotlinDebug\n*F\n+ 1 SelectionContainer.kt\nandroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1\n*L\n103#1:145,4\n103#1:156\n104#1:149\n104#1:150,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $children:Le8/p;
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

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/SelectionManager;


# direct methods
.method constructor <init>(Le8/p;ILandroidx/compose/foundation/text/selection/SelectionManager;)V
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
            "Landroidx/compose/foundation/text/selection/SelectionManager;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$children:Le8/p;

    iput p2, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$$dirty:I

    iput-object p3, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 17
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
    move-object/from16 v10, p1

    .line 5
    .line 6
    and-int/lit8 v1, p2, 0xb

    .line 7
    const/4 v2, 0x2

    .line 8
    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$children:Le8/p;

    .line 24
    .line 25
    iget v3, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$$dirty:I

    .line 26
    .line 27
    shr-int/lit8 v3, v3, 0x9

    .line 28
    .line 29
    and-int/lit8 v3, v3, 0xe

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v10, v3}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroidx/compose/foundation/text/TouchMode_androidKt;->a()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_8

    .line 43
    .line 44
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->y()Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_8

    .line 51
    .line 52
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 56
    move-result-object v11

    .line 57
    .line 58
    if-nez v11, :cond_2

    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_2
    iget-object v12, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 63
    .line 64
    new-array v1, v2, [Ljava/lang/Boolean;

    .line 65
    .line 66
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    aput-object v2, v1, v3

    .line 70
    .line 71
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 72
    const/4 v4, 0x1

    .line 73
    .line 74
    aput-object v2, v1, v4

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 78
    move-result-object v13

    .line 79
    .line 80
    .line 81
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 82
    move-result v14

    .line 83
    move v15, v3

    .line 84
    .line 85
    :goto_1
    if-ge v15, v14, :cond_8

    .line 86
    .line 87
    .line 88
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    check-cast v1, Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    move-result v3

    .line 96
    .line 97
    .line 98
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    const v2, 0x44faf204

    .line 103
    .line 104
    .line 105
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 109
    move-result v1

    .line 110
    .line 111
    .line 112
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    if-ne v2, v1, :cond_4

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {v12, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->F(Z)Landroidx/compose/foundation/text/TextDragObserver;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 134
    .line 135
    check-cast v2, Landroidx/compose/foundation/text/TextDragObserver;

    .line 136
    .line 137
    if-eqz v3, :cond_5

    .line 138
    .line 139
    .line 140
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/SelectionManager;->E()Landroidx/compose/ui/geometry/Offset;

    .line 141
    move-result-object v1

    .line 142
    goto :goto_2

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/SelectionManager;->w()Landroidx/compose/ui/geometry/Offset;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    :goto_2
    if-eqz v3, :cond_6

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 152
    move-result-object v4

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->a()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 156
    move-result-object v4

    .line 157
    goto :goto_3

    .line 158
    .line 159
    .line 160
    :cond_6
    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 161
    move-result-object v4

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->a()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 165
    move-result-object v4

    .line 166
    .line 167
    :goto_3
    if-eqz v1, :cond_7

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 171
    move-result-wide v5

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/Selection;->d()Z

    .line 175
    move-result v7

    .line 176
    .line 177
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 178
    .line 179
    new-instance v8, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1$1$1$1;

    .line 180
    const/4 v9, 0x0

    .line 181
    .line 182
    .line 183
    invoke-direct {v8, v2, v9}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1$1$1$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v2, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 187
    move-result-object v8

    .line 188
    .line 189
    const/high16 v16, 0x30000

    .line 190
    move-wide v1, v5

    .line 191
    move v5, v7

    .line 192
    move-object v6, v8

    .line 193
    move-object v7, v9

    .line 194
    .line 195
    move-object/from16 v8, p1

    .line 196
    .line 197
    move/from16 v9, v16

    .line 198
    .line 199
    .line 200
    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->c(JZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 201
    .line 202
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 203
    goto :goto_1

    .line 204
    :cond_8
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
