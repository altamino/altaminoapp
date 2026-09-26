.class final Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$RangeSlider$2;->c(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Float;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $coercedEnd:F

.field final synthetic $onValueChangeState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/l<",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lw7/l0;",
            ">;>;F)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;->$onValueChangeState:Landroidx/compose/runtime/State;

    iput p2, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;->$coercedEnd:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;->invoke(F)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(F)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;->$onValueChangeState:Landroidx/compose/runtime/State;

    .line 2
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le8/l;

    iget v1, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;->$coercedEnd:F

    invoke-static {p1, v1}, Lj8/m;->b(FF)Lj8/e;

    move-result-object p1

    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
