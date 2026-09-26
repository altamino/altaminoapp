.class final Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ScaffoldKt;->b(ZILe8/p;Le8/q;Le8/p;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

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

.field final synthetic $fab:Le8/p;
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

.field final synthetic $fabPosition:I

.field final synthetic $isFabDocked:Z

.field final synthetic $snackbar:Le8/p;
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
.method constructor <init>(Le8/p;Le8/p;Le8/p;IZLe8/p;ILe8/q;)V
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
            ">;IZ",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$topBar:Le8/p;

    iput-object p2, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$snackbar:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$fab:Le8/p;

    iput p4, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$fabPosition:I

    iput-boolean p5, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$isFabDocked:Z

    iput-object p6, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$bottomBar:Le8/p;

    iput p7, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$$dirty:I

    iput-object p8, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$content:Le8/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20
    .param p1    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "$this$SubcomposeLayout"

    .line 5
    .line 6
    move-object/from16 v15, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v15, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 17
    move-result v16

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    .line 23
    const/16 v8, 0xa

    .line 24
    const/4 v9, 0x0

    .line 25
    .line 26
    move-wide/from16 v2, p2

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 30
    move-result-wide v11

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    new-instance v18, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;

    .line 35
    .line 36
    iget-object v4, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$topBar:Le8/p;

    .line 37
    .line 38
    iget-object v5, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$snackbar:Le8/p;

    .line 39
    .line 40
    iget-object v6, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$fab:Le8/p;

    .line 41
    .line 42
    iget v7, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$fabPosition:I

    .line 43
    .line 44
    iget-boolean v9, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$isFabDocked:Z

    .line 45
    .line 46
    iget-object v13, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$bottomBar:Le8/p;

    .line 47
    .line 48
    iget v14, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$$dirty:I

    .line 49
    .line 50
    iget-object v10, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->$content:Le8/q;

    .line 51
    .line 52
    move-object/from16 v2, v18

    .line 53
    .line 54
    move-object/from16 v3, p1

    .line 55
    move v8, v1

    .line 56
    .line 57
    move-object/from16 v19, v10

    .line 58
    .line 59
    move/from16 v10, v16

    .line 60
    .line 61
    move-object/from16 v15, v19

    .line 62
    .line 63
    .line 64
    invoke-direct/range {v2 .. v15}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;-><init>(Landroidx/compose/ui/layout/SubcomposeMeasureScope;Le8/p;Le8/p;Le8/p;IIZIJLe8/p;ILe8/q;)V

    .line 65
    const/4 v7, 0x4

    .line 66
    const/4 v8, 0x0

    .line 67
    .line 68
    move-object/from16 v2, p1

    .line 69
    move v3, v1

    .line 70
    .line 71
    move/from16 v4, v16

    .line 72
    .line 73
    move-object/from16 v5, v17

    .line 74
    .line 75
    move-object/from16 v6, v18

    .line 76
    .line 77
    .line 78
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 79
    move-result-object v1

    .line 80
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->t()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;->a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
