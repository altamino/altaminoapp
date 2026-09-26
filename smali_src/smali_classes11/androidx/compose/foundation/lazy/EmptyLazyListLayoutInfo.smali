.class final Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListLayoutInfo;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final afterContentPadding:I

.field private static final beforeContentPadding:I

.field private static final orientation:Landroidx/compose/foundation/gestures/Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final reverseLayout:Z

.field private static final totalItemsCount:I

.field private static final viewportEndOffset:I

.field private static final viewportSize:J

.field private static final viewportStartOffset:I

.field private static final visibleItemsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->INSTANCE:Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->visibleItemsInfo:Ljava/util/List;

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    sput-wide v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->viewportSize:J

    .line 22
    .line 23
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 24
    .line 25
    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->totalItemsCount:I

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->visibleItemsInfo:Ljava/util/List;

    return-object v0
.end method
