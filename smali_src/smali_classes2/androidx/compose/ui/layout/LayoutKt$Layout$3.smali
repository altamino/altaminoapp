.class final Landroidx/compose/ui/layout/LayoutKt$Layout$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutKt;->a(Le8/p;Le8/q;Le8/q;Le8/q;Le8/q;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $content:Le8/p;
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

.field final synthetic $maxIntrinsicHeightMeasureBlock:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $maxIntrinsicWidthMeasureBlock:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $measureBlock:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $minIntrinsicHeightMeasureBlock:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $minIntrinsicWidthMeasureBlock:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;


# direct methods
.method constructor <init>(Le8/p;Le8/q;Le8/q;Le8/q;Le8/q;Landroidx/compose/ui/Modifier;Le8/q;II)V
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
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$content:Le8/p;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$minIntrinsicWidthMeasureBlock:Le8/q;

    iput-object p3, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$minIntrinsicHeightMeasureBlock:Le8/q;

    iput-object p4, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$maxIntrinsicWidthMeasureBlock:Le8/q;

    iput-object p5, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$maxIntrinsicHeightMeasureBlock:Le8/q;

    iput-object p6, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p7, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$measureBlock:Le8/q;

    iput p8, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$$changed:I

    iput p9, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$content:Le8/p;

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$minIntrinsicWidthMeasureBlock:Le8/q;

    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$minIntrinsicHeightMeasureBlock:Le8/q;

    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$maxIntrinsicWidthMeasureBlock:Le8/q;

    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$maxIntrinsicHeightMeasureBlock:Le8/q;

    iget-object v5, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$measureBlock:Le8/q;

    iget p2, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$$changed:I

    or-int/lit8 v8, p2, 0x1

    iget v9, p0, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->$$default:I

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/layout/LayoutKt;->a(Le8/p;Le8/q;Le8/q;Le8/q;Le8/q;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/LayoutKt$Layout$3;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
