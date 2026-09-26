.class final Landroidx/compose/material/SliderKt$RangeSlider$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->b(Lj8/e;Le8/l;Landroidx/compose/ui/Modifier;ZLj8/e;ILe8/a;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $colors:Landroidx/compose/material/SliderColors;

.field final synthetic $enabled:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeFinished:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $steps:I

.field final synthetic $valueRange:Lj8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $values:Lj8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj8/e;Le8/l;Landroidx/compose/ui/Modifier;ZLj8/e;ILe8/a;Landroidx/compose/material/SliderColors;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/l<",
            "-",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;I",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$values:Lj8/e;

    iput-object p2, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$onValueChange:Le8/l;

    iput-object p3, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$enabled:Z

    iput-object p5, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$valueRange:Lj8/e;

    iput p6, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$steps:I

    iput-object p7, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$onValueChangeFinished:Le8/a;

    iput-object p8, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$colors:Landroidx/compose/material/SliderColors;

    iput p9, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$$changed:I

    iput p10, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 11
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$values:Lj8/e;

    iget-object v1, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$onValueChange:Le8/l;

    iget-object v2, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$enabled:Z

    iget-object v4, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$valueRange:Lj8/e;

    iget v5, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$steps:I

    iget-object v6, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$onValueChangeFinished:Le8/a;

    iget-object v7, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$colors:Landroidx/compose/material/SliderColors;

    iget p2, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$$changed:I

    or-int/lit8 v9, p2, 0x1

    iget v10, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$$default:I

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/material/SliderKt;->b(Lj8/e;Le8/l;Landroidx/compose/ui/Modifier;ZLj8/e;ILe8/a;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$RangeSlider$3;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
