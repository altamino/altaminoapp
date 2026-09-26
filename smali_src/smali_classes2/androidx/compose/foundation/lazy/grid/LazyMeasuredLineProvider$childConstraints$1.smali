.class final Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;-><init>(ZLjava/util/List;IIILandroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/unit/Constraints;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $crossAxisSpacing:I

.field final synthetic $slotSizesSums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;


# direct methods
.method constructor <init>(Ljava/util/List;ILandroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->$slotSizesSums:Ljava/util/List;

    iput p2, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->$crossAxisSpacing:I

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(II)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->$slotSizesSums:Ljava/util/List;

    .line 3
    .line 4
    add-int v1, p1, p2

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Number;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->$slotSizesSums:Ljava/util/List;

    .line 23
    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Ljava/lang/Number;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 34
    move-result p1

    .line 35
    :goto_0
    sub-int/2addr v0, p1

    .line 36
    .line 37
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->$crossAxisSpacing:I

    .line 38
    .line 39
    add-int/lit8 p2, p2, -0x1

    .line 40
    mul-int/2addr p1, p2

    .line 41
    add-int/2addr v0, p1

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->a(Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    sget-object p1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->e(I)J

    .line 55
    move-result-wide p1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    sget-object p1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->d(I)J

    .line 62
    move-result-wide p1

    .line 63
    :goto_1
    return-wide p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 6
    move-result p1

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->a(II)J

    .line 16
    move-result-wide p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->b(J)Landroidx/compose/ui/unit/Constraints;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
