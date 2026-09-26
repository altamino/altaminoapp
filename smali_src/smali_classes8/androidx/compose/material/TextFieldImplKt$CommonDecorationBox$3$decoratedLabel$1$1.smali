.class final Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->a(FJJFLandroidx/compose/runtime/Composer;I)V
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

.field final synthetic $it:Le8/p;
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

.field final synthetic $labelContentColor:J

.field final synthetic $labelProgress:F

.field final synthetic $labelTextStyleColor:J

.field final synthetic $shouldOverrideTextStyleColor:Z


# direct methods
.method constructor <init>(FJLe8/p;IZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FJ",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;IZJ)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelProgress:F

    iput-wide p2, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelContentColor:J

    iput-object p4, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$it:Le8/p;

    iput p5, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$$dirty:I

    iput-boolean p6, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$shouldOverrideTextStyleColor:Z

    iput-wide p7, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelTextStyleColor:J

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 33
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
    move-object/from16 v6, p1

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
    goto :goto_2

    .line 21
    .line 22
    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 23
    const/4 v2, 0x6

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v6, v2}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/compose/material/Typography;->g()Landroidx/compose/ui/text/TextStyle;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v6, v2}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/material/Typography;->d()Landroidx/compose/ui/text/TextStyle;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    iget v4, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelProgress:F

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v1, v4}, Landroidx/compose/ui/text/TextStyleKt;->c(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;F)Landroidx/compose/ui/text/TextStyle;

    .line 45
    move-result-object v7

    .line 46
    .line 47
    iget-boolean v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$shouldOverrideTextStyleColor:Z

    .line 48
    .line 49
    iget-wide v8, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelTextStyleColor:J

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-wide/16 v10, 0x0

    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    .line 59
    const/16 v16, 0x0

    .line 60
    .line 61
    const-wide/16 v17, 0x0

    .line 62
    .line 63
    const/16 v19, 0x0

    .line 64
    .line 65
    const/16 v20, 0x0

    .line 66
    .line 67
    const/16 v21, 0x0

    .line 68
    .line 69
    const-wide/16 v22, 0x0

    .line 70
    .line 71
    const/16 v24, 0x0

    .line 72
    .line 73
    const/16 v25, 0x0

    .line 74
    .line 75
    const/16 v26, 0x0

    .line 76
    .line 77
    const/16 v27, 0x0

    .line 78
    .line 79
    const-wide/16 v28, 0x0

    .line 80
    .line 81
    const/16 v30, 0x0

    .line 82
    .line 83
    .line 84
    const v31, 0x3fffe

    .line 85
    .line 86
    const/16 v32, 0x0

    .line 87
    .line 88
    .line 89
    invoke-static/range {v7 .. v32}, Landroidx/compose/ui/text/TextStyle;->c(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILjava/lang/Object;)Landroidx/compose/ui/text/TextStyle;

    .line 90
    move-result-object v1

    .line 91
    move-object v3, v1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move-object v3, v7

    .line 94
    .line 95
    :goto_1
    iget-wide v4, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelContentColor:J

    .line 96
    const/4 v7, 0x0

    .line 97
    .line 98
    iget-object v8, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$it:Le8/p;

    .line 99
    .line 100
    iget v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$$dirty:I

    .line 101
    shr-int/2addr v1, v2

    .line 102
    .line 103
    and-int/lit8 v1, v1, 0xe

    .line 104
    .line 105
    or-int/lit16 v9, v1, 0x180

    .line 106
    const/4 v10, 0x0

    .line 107
    move-wide v1, v4

    .line 108
    move-object v4, v7

    .line 109
    move-object v5, v8

    .line 110
    .line 111
    move-object/from16 v6, p1

    .line 112
    move v7, v9

    .line 113
    move v8, v10

    .line 114
    .line 115
    .line 116
    invoke-static/range {v1 .. v8}, Landroidx/compose/material/TextFieldImplKt;->b(JLandroidx/compose/ui/text/TextStyle;Ljava/lang/Float;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 117
    :goto_2
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
