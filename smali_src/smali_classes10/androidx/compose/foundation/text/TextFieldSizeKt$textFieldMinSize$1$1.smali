.class final Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $minSizeState:Landroidx/compose/foundation/text/TextFieldSize;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldSize;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;->$minSizeState:Landroidx/compose/foundation/text/TextFieldSize;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    const-string v1, "$this$layout"

    .line 5
    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v1, "measurable"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v5, v5, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 23
    .line 24
    move-object/from16 v1, p0

    .line 25
    .line 26
    iget-object v3, v1, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;->$minSizeState:Landroidx/compose/foundation/text/TextFieldSize;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldSize;->b()J

    .line 30
    move-result-wide v3

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 34
    move-result v5

    .line 35
    .line 36
    .line 37
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 38
    move-result v6

    .line 39
    .line 40
    .line 41
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 42
    move-result v7

    .line 43
    .line 44
    .line 45
    invoke-static {v5, v6, v7}, Lj8/m;->n(III)I

    .line 46
    move-result v10

    .line 47
    const/4 v11, 0x0

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 51
    move-result v3

    .line 52
    .line 53
    .line 54
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 55
    move-result v4

    .line 56
    .line 57
    .line 58
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 59
    move-result v5

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v4, v5}, Lj8/m;->n(III)I

    .line 63
    move-result v12

    .line 64
    const/4 v13, 0x0

    .line 65
    .line 66
    const/16 v14, 0xa

    .line 67
    const/4 v15, 0x0

    .line 68
    .line 69
    move-wide/from16 v8, p3

    .line 70
    .line 71
    .line 72
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 73
    move-result-wide v3

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 81
    move-result v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 85
    move-result v4

    .line 86
    const/4 v5, 0x0

    .line 87
    .line 88
    new-instance v6, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1$1;

    .line 89
    .line 90
    .line 91
    invoke-direct {v6, v0}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 92
    const/4 v7, 0x4

    .line 93
    const/4 v8, 0x0

    .line 94
    .line 95
    .line 96
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 5
    .line 6
    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->t()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;->a(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
