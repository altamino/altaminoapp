.class final Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Le8/p;Le8/p;Le8/q;Le8/p;IZLe8/q;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLe8/q;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $backgroundColor:J

.field final synthetic $bottomBar:Le8/p;
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

.field final synthetic $contentColor:J

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

.field final synthetic $isFloatingActionButtonDocked:Z

.field final synthetic $scaffoldState:Landroidx/compose/material/ScaffoldState;

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
.method constructor <init>(JJIZILe8/p;Le8/q;Le8/p;Le8/p;ILe8/q;Landroidx/compose/material/ScaffoldState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIZI",
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
            "Landroidx/compose/material/SnackbarHostState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/material/ScaffoldState;",
            ")V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$backgroundColor:J

    iput-wide p3, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$contentColor:J

    iput p5, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$$dirty1:I

    iput-boolean p6, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$isFloatingActionButtonDocked:Z

    iput p7, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$floatingActionButtonPosition:I

    iput-object p8, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$topBar:Le8/p;

    iput-object p9, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$content:Le8/q;

    iput-object p10, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$floatingActionButton:Le8/p;

    iput-object p11, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$bottomBar:Le8/p;

    iput p12, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$$dirty:I

    iput-object p13, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$snackbarHost:Le8/q;

    iput-object p14, p0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$scaffoldState:Landroidx/compose/material/ScaffoldState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
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
    move-object/from16 v10, p2

    .line 7
    .line 8
    const-string v2, "childModifier"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    and-int/lit8 v2, p3, 0xe

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x2

    .line 25
    .line 26
    :goto_0
    or-int v2, p3, v2

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    move/from16 v2, p3

    .line 30
    .line 31
    :goto_1
    and-int/lit8 v3, v2, 0x5b

    .line 32
    .line 33
    const/16 v4, 0x12

    .line 34
    .line 35
    if-ne v3, v4, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 39
    move-result v3

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 46
    goto :goto_3

    .line 47
    .line 48
    :cond_3
    :goto_2
    iget-wide v4, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$backgroundColor:J

    .line 49
    .line 50
    iget-wide v6, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$contentColor:J

    .line 51
    .line 52
    new-instance v15, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1$1;

    .line 53
    .line 54
    iget-boolean v12, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$isFloatingActionButtonDocked:Z

    .line 55
    .line 56
    iget v13, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$floatingActionButtonPosition:I

    .line 57
    .line 58
    iget-object v14, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$topBar:Le8/p;

    .line 59
    .line 60
    iget-object v11, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$content:Le8/q;

    .line 61
    .line 62
    iget-object v9, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$floatingActionButton:Le8/p;

    .line 63
    .line 64
    iget-object v8, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$bottomBar:Le8/p;

    .line 65
    .line 66
    iget v3, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$$dirty:I

    .line 67
    .line 68
    iget v1, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$$dirty1:I

    .line 69
    .line 70
    move-wide/from16 v22, v6

    .line 71
    .line 72
    iget-object v6, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$snackbarHost:Le8/q;

    .line 73
    .line 74
    iget-object v7, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$scaffoldState:Landroidx/compose/material/ScaffoldState;

    .line 75
    .line 76
    move-object/from16 v16, v11

    .line 77
    move-object v11, v15

    .line 78
    .line 79
    move-wide/from16 v24, v4

    .line 80
    move-object v4, v15

    .line 81
    .line 82
    move-object/from16 v15, v16

    .line 83
    .line 84
    move-object/from16 v16, v9

    .line 85
    .line 86
    move-object/from16 v17, v8

    .line 87
    .line 88
    move/from16 v18, v3

    .line 89
    .line 90
    move/from16 v19, v1

    .line 91
    .line 92
    move-object/from16 v20, v6

    .line 93
    .line 94
    move-object/from16 v21, v7

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v11 .. v21}, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1$1;-><init>(ZILe8/p;Le8/q;Le8/p;Le8/p;IILe8/q;Landroidx/compose/material/ScaffoldState;)V

    .line 98
    .line 99
    .line 100
    const v1, -0x434af050

    .line 101
    const/4 v3, 0x1

    .line 102
    .line 103
    .line 104
    invoke-static {v10, v1, v3, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 105
    move-result-object v9

    .line 106
    .line 107
    const/high16 v1, 0x180000

    .line 108
    .line 109
    and-int/lit8 v2, v2, 0xe

    .line 110
    or-int/2addr v1, v2

    .line 111
    .line 112
    iget v2, v0, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->$$dirty1:I

    .line 113
    .line 114
    shr-int/lit8 v3, v2, 0x9

    .line 115
    .line 116
    and-int/lit16 v3, v3, 0x380

    .line 117
    or-int/2addr v1, v3

    .line 118
    .line 119
    shr-int/lit8 v2, v2, 0x9

    .line 120
    .line 121
    and-int/lit16 v2, v2, 0x1c00

    .line 122
    .line 123
    or-int v11, v1, v2

    .line 124
    .line 125
    const/16 v12, 0x32

    .line 126
    .line 127
    move-object/from16 v1, p1

    .line 128
    const/4 v2, 0x0

    .line 129
    .line 130
    move-wide/from16 v3, v24

    .line 131
    .line 132
    move-wide/from16 v5, v22

    .line 133
    const/4 v7, 0x0

    .line 134
    const/4 v8, 0x0

    .line 135
    .line 136
    move-object/from16 v10, p2

    .line 137
    .line 138
    .line 139
    invoke-static/range {v1 .. v12}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 140
    :goto_3
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
