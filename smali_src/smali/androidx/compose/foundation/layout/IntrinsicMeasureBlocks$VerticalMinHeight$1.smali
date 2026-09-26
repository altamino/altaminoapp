.class final Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Ljava/util/List<",
        "+",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;II)Ljava/lang/Integer;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "measurables"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v2, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1$1;

    .line 8
    .line 9
    sget-object v3, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1$2;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1$2;

    .line 10
    .line 11
    sget-object v7, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 12
    move-object v1, p1

    .line 13
    move v4, p2

    .line 14
    move v5, p3

    .line 15
    move-object v6, v7

    .line 16
    .line 17
    .line 18
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->m(Ljava/util/List;Le8/p;Le8/p;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/util/List;

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
    check-cast p3, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result p3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$VerticalMinHeight$1;->a(Ljava/util/List;II)Ljava/lang/Integer;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
