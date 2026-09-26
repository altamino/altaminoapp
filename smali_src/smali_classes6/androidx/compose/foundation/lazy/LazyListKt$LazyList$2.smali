.class final Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;Landroidx/compose/runtime/Composer;III)V
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
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $userScrollEnabled:Z

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lw7/l0;",
            ">;III)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$reverseLayout:Z

    iput-boolean p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$isVertical:Z

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$userScrollEnabled:Z

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$content:Le8/l;

    iput p13, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$changed:I

    iput p14, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$changed1:I

    iput p15, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$reverseLayout:Z

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$isVertical:Z

    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$userScrollEnabled:Z

    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v9, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$content:Le8/l;

    iget v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$changed:I

    or-int/lit8 v14, v13, 0x1

    iget v15, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$changed1:I

    iget v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$default:I

    move/from16 v16, v13

    move-object/from16 v13, p1

    invoke-static/range {v1 .. v16}, Landroidx/compose/foundation/lazy/LazyListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
