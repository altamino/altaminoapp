.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomSheetScaffoldKt;->a(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Le8/p;Le8/q;Le8/p;IZLandroidx/compose/ui/graphics/Shape;FJJFLe8/q;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLe8/q;Landroidx/compose/runtime/Composer;IIII)V
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


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $$dirty2:I

.field final synthetic $bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $content:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $floatingActionButton:Le8/p;
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

.field final synthetic $floatingActionButtonPosition:I

.field final synthetic $peekHeightPx:F

.field final synthetic $scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

.field final synthetic $semantics:Landroidx/compose/ui/Modifier;

.field final synthetic $sheetBackgroundColor:J

.field final synthetic $sheetContent:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sheetContentColor:J

.field final synthetic $sheetElevation:F

.field final synthetic $sheetGesturesEnabled:Z

.field final synthetic $sheetPeekHeight:F

.field final synthetic $sheetShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $snackbarHost:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $topBar:Le8/p;
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
.method constructor <init>(Landroidx/compose/material/BottomSheetScaffoldState;Le8/p;Le8/q;Le8/p;FIIIIFZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/Shape;JJFLe8/q;Le8/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetScaffoldState;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
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
            ">;FIIIIFZ",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$topBar:Le8/p;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$content:Le8/q;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$floatingActionButton:Le8/p;

    move v1, p5

    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetPeekHeight:F

    move v1, p6

    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$floatingActionButtonPosition:I

    move v1, p7

    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty:I

    move v1, p8

    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty2:I

    move v1, p9

    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty1:I

    move v1, p10

    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$peekHeightPx:F

    move v1, p11

    iput-boolean v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetGesturesEnabled:Z

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$semantics:Landroidx/compose/ui/Modifier;

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetShape:Landroidx/compose/ui/graphics/Shape;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetBackgroundColor:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetContentColor:J

    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetElevation:F

    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetContent:Le8/q;

    move-object/from16 v1, p21

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$snackbarHost:Le8/q;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 30
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
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/material/BottomSheetScaffoldState;->a()Landroidx/compose/material/BottomSheetState;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/material/SwipeableState;->t()Landroidx/compose/runtime/State;

    .line 31
    move-result-object v8

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/compose/material/BottomSheetScaffoldState;->a()Landroidx/compose/material/BottomSheetState;

    .line 37
    move-result-object v9

    .line 38
    .line 39
    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$topBar:Le8/p;

    .line 40
    .line 41
    iget-object v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$content:Le8/q;

    .line 42
    .line 43
    new-instance v3, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;

    .line 44
    .line 45
    iget v12, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$peekHeightPx:F

    .line 46
    .line 47
    iget-object v13, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    .line 48
    .line 49
    iget-boolean v14, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetGesturesEnabled:Z

    .line 50
    .line 51
    iget-object v15, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$semantics:Landroidx/compose/ui/Modifier;

    .line 52
    .line 53
    iget v4, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetPeekHeight:F

    .line 54
    .line 55
    iget-object v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;

    .line 56
    .line 57
    iget-object v6, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetShape:Landroidx/compose/ui/graphics/Shape;

    .line 58
    .line 59
    move-object/from16 p2, v8

    .line 60
    .line 61
    iget-wide v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetBackgroundColor:J

    .line 62
    .line 63
    move-object/from16 v27, v1

    .line 64
    .line 65
    move-object/from16 v28, v2

    .line 66
    .line 67
    iget-wide v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetContentColor:J

    .line 68
    .line 69
    iget v11, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetElevation:F

    .line 70
    .line 71
    move-object/from16 v29, v9

    .line 72
    .line 73
    iget v9, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty:I

    .line 74
    .line 75
    iget v10, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty1:I

    .line 76
    .line 77
    move/from16 v25, v10

    .line 78
    .line 79
    iget-object v10, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetContent:Le8/q;

    .line 80
    .line 81
    move/from16 v23, v11

    .line 82
    move-object v11, v3

    .line 83
    .line 84
    move/from16 v16, v4

    .line 85
    .line 86
    move-object/from16 v17, v5

    .line 87
    .line 88
    move-object/from16 v18, v6

    .line 89
    .line 90
    move-wide/from16 v19, v7

    .line 91
    .line 92
    move-wide/from16 v21, v1

    .line 93
    .line 94
    move/from16 v24, v9

    .line 95
    .line 96
    move-object/from16 v26, v10

    .line 97
    .line 98
    .line 99
    invoke-direct/range {v11 .. v26}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;-><init>(FLandroidx/compose/material/BottomSheetScaffoldState;ZLandroidx/compose/ui/Modifier;FLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/Shape;JJFIILe8/q;)V

    .line 100
    .line 101
    .line 102
    const v1, -0x522ac519

    .line 103
    const/4 v2, 0x1

    .line 104
    .line 105
    move-object/from16 v10, p1

    .line 106
    .line 107
    .line 108
    invoke-static {v10, v1, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    iget-object v4, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$floatingActionButton:Le8/p;

    .line 112
    .line 113
    new-instance v1, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$2;

    .line 114
    .line 115
    iget-object v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$snackbarHost:Le8/q;

    .line 116
    .line 117
    iget-object v6, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    .line 118
    .line 119
    iget v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty:I

    .line 120
    .line 121
    .line 122
    invoke-direct {v1, v5, v6, v7}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$2;-><init>(Le8/q;Landroidx/compose/material/BottomSheetScaffoldState;I)V

    .line 123
    .line 124
    .line 125
    const v5, -0x1cf9e0d4

    .line 126
    .line 127
    .line 128
    invoke-static {v10, v5, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 129
    move-result-object v5

    .line 130
    .line 131
    iget v6, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetPeekHeight:F

    .line 132
    .line 133
    iget v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$floatingActionButtonPosition:I

    .line 134
    .line 135
    iget v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty:I

    .line 136
    .line 137
    shr-int/lit8 v2, v1, 0x9

    .line 138
    .line 139
    and-int/lit8 v2, v2, 0xe

    .line 140
    .line 141
    or-int/lit16 v2, v2, 0x6180

    .line 142
    .line 143
    iget v8, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty2:I

    .line 144
    .line 145
    shr-int/lit8 v8, v8, 0x3

    .line 146
    .line 147
    and-int/lit8 v8, v8, 0x70

    .line 148
    or-int/2addr v2, v8

    .line 149
    .line 150
    shr-int/lit8 v8, v1, 0x6

    .line 151
    .line 152
    and-int/lit16 v8, v8, 0x1c00

    .line 153
    or-int/2addr v2, v8

    .line 154
    .line 155
    iget v8, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty1:I

    .line 156
    .line 157
    shl-int/lit8 v8, v8, 0x9

    .line 158
    .line 159
    const/high16 v9, 0x70000

    .line 160
    and-int/2addr v8, v9

    .line 161
    or-int/2addr v2, v8

    .line 162
    .line 163
    const/high16 v8, 0x380000

    .line 164
    and-int/2addr v1, v8

    .line 165
    .line 166
    or-int v11, v2, v1

    .line 167
    .line 168
    move-object/from16 v1, v27

    .line 169
    .line 170
    move-object/from16 v2, v28

    .line 171
    .line 172
    move-object/from16 v8, p2

    .line 173
    .line 174
    move-object/from16 v9, v29

    .line 175
    .line 176
    .line 177
    invoke-static/range {v1 .. v11}, Landroidx/compose/material/BottomSheetScaffoldKt;->e(Le8/p;Le8/q;Le8/q;Le8/p;Le8/p;FILandroidx/compose/runtime/State;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V

    .line 178
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
