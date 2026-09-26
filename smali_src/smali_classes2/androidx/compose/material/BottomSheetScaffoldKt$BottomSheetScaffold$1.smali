.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;
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
.field final synthetic $$dirty1:I

.field final synthetic $child:Le8/p;
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

.field final synthetic $drawerBackgroundColor:J

.field final synthetic $drawerContent:Le8/q;
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

.field final synthetic $drawerContentColor:J

.field final synthetic $drawerElevation:F

.field final synthetic $drawerGesturesEnabled:Z

.field final synthetic $drawerScrimColor:J

.field final synthetic $drawerShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;


# direct methods
.method constructor <init>(Le8/q;Le8/p;Landroidx/compose/material/BottomSheetScaffoldState;ZLandroidx/compose/ui/graphics/Shape;FJJJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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
            ">;",
            "Landroidx/compose/material/BottomSheetScaffoldState;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJI)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerContent:Le8/q;

    iput-object p2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$child:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    iput-boolean p4, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerGesturesEnabled:Z

    iput-object p5, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    iput p6, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerElevation:F

    iput-wide p7, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerBackgroundColor:J

    iput-wide p9, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerContentColor:J

    iput-wide p11, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerScrimColor:J

    iput p13, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$$dirty1:I

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
    move-object/from16 v15, p1

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
    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerContent:Le8/q;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    .line 28
    const v1, -0xedfc09a

    .line 29
    .line 30
    .line 31
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$child:Le8/p;

    .line 34
    const/4 v2, 0x6

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v15, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_2
    const v1, -0xedfc075

    .line 49
    .line 50
    .line 51
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 52
    .line 53
    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerContent:Le8/q;

    .line 54
    .line 55
    iget-object v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroidx/compose/material/BottomSheetScaffoldState;->b()Landroidx/compose/material/DrawerState;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    iget-boolean v4, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerGesturesEnabled:Z

    .line 62
    .line 63
    iget-object v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    .line 64
    .line 65
    iget v6, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerElevation:F

    .line 66
    .line 67
    iget-wide v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerBackgroundColor:J

    .line 68
    .line 69
    iget-wide v9, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerContentColor:J

    .line 70
    .line 71
    iget-wide v11, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$drawerScrimColor:J

    .line 72
    .line 73
    iget-object v13, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$child:Le8/p;

    .line 74
    .line 75
    iget v14, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->$$dirty1:I

    .line 76
    .line 77
    shr-int/lit8 v16, v14, 0x9

    .line 78
    .line 79
    and-int/lit8 v16, v16, 0xe

    .line 80
    .line 81
    const/high16 v17, 0x30000000

    .line 82
    .line 83
    or-int v16, v16, v17

    .line 84
    .line 85
    shr-int/lit8 v2, v14, 0x3

    .line 86
    .line 87
    and-int/lit16 v2, v2, 0x1c00

    .line 88
    .line 89
    or-int v2, v16, v2

    .line 90
    .line 91
    shr-int/lit8 v16, v14, 0x3

    .line 92
    .line 93
    .line 94
    const v17, 0xe000

    .line 95
    .line 96
    and-int v16, v16, v17

    .line 97
    .line 98
    or-int v2, v2, v16

    .line 99
    .line 100
    shr-int/lit8 v16, v14, 0x3

    .line 101
    .line 102
    const/high16 v17, 0x70000

    .line 103
    .line 104
    and-int v16, v16, v17

    .line 105
    .line 106
    or-int v2, v2, v16

    .line 107
    .line 108
    shr-int/lit8 v16, v14, 0x3

    .line 109
    .line 110
    const/high16 v17, 0x380000

    .line 111
    .line 112
    and-int v16, v16, v17

    .line 113
    .line 114
    or-int v2, v2, v16

    .line 115
    .line 116
    shr-int/lit8 v16, v14, 0x3

    .line 117
    .line 118
    const/high16 v17, 0x1c00000

    .line 119
    .line 120
    and-int v16, v16, v17

    .line 121
    .line 122
    or-int v2, v2, v16

    .line 123
    .line 124
    const/high16 v16, 0xe000000

    .line 125
    .line 126
    shr-int/lit8 v14, v14, 0x3

    .line 127
    .line 128
    and-int v14, v14, v16

    .line 129
    .line 130
    or-int v16, v2, v14

    .line 131
    .line 132
    const/16 v17, 0x2

    .line 133
    const/4 v2, 0x0

    .line 134
    .line 135
    move-object/from16 v14, p1

    .line 136
    .line 137
    move/from16 v15, v16

    .line 138
    .line 139
    move/from16 v16, v17

    .line 140
    .line 141
    .line 142
    invoke-static/range {v1 .. v16}, Landroidx/compose/material/DrawerKt;->d(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 143
    .line 144
    .line 145
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 146
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
