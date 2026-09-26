.class final Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $content:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $reverseLayout:Z

.field final synthetic $slotSizesSums:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $userScrollEnabled:Z

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lw7/l0;",
            ">;III)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$slotSizesSums:Le8/p;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$reverseLayout:Z

    iput-boolean p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$isVertical:Z

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$userScrollEnabled:Z

    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$content:Le8/l;

    iput p12, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$$changed:I

    iput p13, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$$changed1:I

    iput p14, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$slotSizesSums:Le8/p;

    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$reverseLayout:Z

    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$isVertical:Z

    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$userScrollEnabled:Z

    iget-object v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$content:Le8/l;

    iget v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$$changed:I

    or-int/lit8 v13, v12, 0x1

    iget v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$$changed1:I

    iget v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->$$default:I

    move-object/from16 v12, p1

    invoke-static/range {v1 .. v15}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
