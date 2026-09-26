.class final Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/OutlinedTextFieldKt;->j(Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutlinedTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,831:1\n221#2:832\n261#2,11:833\n*S KotlinDebug\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1\n*L\n813#1:832\n813#1:833,11\n*E\n"
.end annotation


# instance fields
.field final synthetic $labelSize:J

.field final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method constructor <init>(JLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->$labelSize:J

    iput-object p3, p0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 13
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$drawWithContent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-wide v0, p0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->$labelSize:J

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    cmpl-float v2, v0, v1

    .line 15
    .line 16
    if-lez v2, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroidx/compose/material/OutlinedTextFieldKt;->f()F

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 24
    move-result v2

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    invoke-interface {v3, v4}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v3}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 38
    move-result v3

    .line 39
    sub-float/2addr v3, v2

    .line 40
    add-float/2addr v0, v3

    .line 41
    const/4 v4, 0x2

    .line 42
    int-to-float v4, v4

    .line 43
    mul-float/2addr v2, v4

    .line 44
    add-float/2addr v0, v2

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    sget-object v5, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 54
    move-result v2

    .line 55
    .line 56
    aget v2, v5, v2

    .line 57
    const/4 v6, 0x1

    .line 58
    .line 59
    if-ne v2, v6, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 63
    move-result-wide v7

    .line 64
    .line 65
    .line 66
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 67
    move-result v2

    .line 68
    sub-float/2addr v2, v0

    .line 69
    :goto_0
    move v8, v2

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-static {v3, v1}, Lj8/m;->d(FF)F

    .line 74
    move-result v2

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 83
    move-result v2

    .line 84
    .line 85
    aget v2, v5, v2

    .line 86
    .line 87
    if-ne v2, v6, :cond_1

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 91
    move-result-wide v5

    .line 92
    .line 93
    .line 94
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 95
    move-result v0

    .line 96
    .line 97
    .line 98
    invoke-static {v3, v1}, Lj8/m;->d(FF)F

    .line 99
    move-result v1

    .line 100
    sub-float/2addr v0, v1

    .line 101
    :cond_1
    move v10, v0

    .line 102
    .line 103
    iget-wide v0, p0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->$labelSize:J

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 107
    move-result v0

    .line 108
    neg-float v1, v0

    .line 109
    .line 110
    div-float v9, v1, v4

    .line 111
    .line 112
    div-float v11, v0, v4

    .line 113
    .line 114
    sget-object v0, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ClipOp$Companion;->a()I

    .line 118
    move-result v12

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->c()J

    .line 126
    move-result-wide v1

    .line 127
    .line 128
    .line 129
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    .line 133
    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 134
    .line 135
    .line 136
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 137
    move-result-object v7

    .line 138
    .line 139
    .line 140
    invoke-interface/range {v7 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->a(FFFFI)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->Z()V

    .line 144
    .line 145
    .line 146
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->b(J)V

    .line 154
    goto :goto_2

    .line 155
    .line 156
    .line 157
    :cond_2
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->Z()V

    .line 158
    :goto_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
