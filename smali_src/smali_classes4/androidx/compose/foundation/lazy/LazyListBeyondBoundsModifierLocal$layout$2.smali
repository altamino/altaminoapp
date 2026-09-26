.class public final Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->a(ILe8/l;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $direction:I

.field final synthetic $interval:Lkotlin/jvm/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;Lkotlin/jvm/internal/p0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;",
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;->this$0:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;->$interval:Lkotlin/jvm/internal/p0;

    .line 5
    .line 6
    iput p3, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;->$direction:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;->this$0:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;->$interval:Lkotlin/jvm/internal/p0;

    .line 5
    .line 6
    iget-object v1, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 9
    .line 10
    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;->$direction:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->b(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method
