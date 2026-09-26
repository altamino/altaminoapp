.class final Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/CheckboxKt;->b(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $borderColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $boxColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $checkCache:Landroidx/compose/material/CheckDrawingCache;

.field final synthetic $checkCenterGravitationShiftFraction$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $checkColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $checkDrawFraction$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material/CheckDrawingCache;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/CheckDrawingCache;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkCache:Landroidx/compose/material/CheckDrawingCache;

    iput-object p2, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$boxColor$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$borderColor$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkColor$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkDrawFraction$delegate:Landroidx/compose/runtime/State;

    iput-object p6, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkCenterGravitationShiftFraction$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 9
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$Canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/material/CheckboxKt;->r()F

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 13
    move-result v0

    .line 14
    float-to-double v0, v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 18
    move-result-wide v0

    .line 19
    double-to-float v0, v0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$boxColor$delegate:Landroidx/compose/runtime/State;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/material/CheckboxKt;->n(Landroidx/compose/runtime/State;)J

    .line 25
    move-result-wide v3

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$borderColor$delegate:Landroidx/compose/runtime/State;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroidx/compose/material/CheckboxKt;->j(Landroidx/compose/runtime/State;)J

    .line 31
    move-result-wide v5

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/material/CheckboxKt;->q()F

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 39
    move-result v7

    .line 40
    move-object v2, p1

    .line 41
    move v8, v0

    .line 42
    .line 43
    .line 44
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/CheckboxKt;->o(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkColor$delegate:Landroidx/compose/runtime/State;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroidx/compose/material/CheckboxKt;->m(Landroidx/compose/runtime/State;)J

    .line 50
    move-result-wide v3

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkDrawFraction$delegate:Landroidx/compose/runtime/State;

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Landroidx/compose/material/CheckboxKt;->k(Landroidx/compose/runtime/State;)F

    .line 56
    move-result v5

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkCenterGravitationShiftFraction$delegate:Landroidx/compose/runtime/State;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Landroidx/compose/material/CheckboxKt;->l(Landroidx/compose/runtime/State;)F

    .line 62
    move-result v6

    .line 63
    .line 64
    iget-object v8, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkCache:Landroidx/compose/material/CheckDrawingCache;

    .line 65
    move v7, v0

    .line 66
    .line 67
    .line 68
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/CheckboxKt;->p(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material/CheckDrawingCache;)V

    .line 69
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
