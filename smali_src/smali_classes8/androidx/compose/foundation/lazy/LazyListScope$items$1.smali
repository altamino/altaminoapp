.class final Landroidx/compose/foundation/lazy/LazyListScope$items$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/LazyListScope$items$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListScope$items$1;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/LazyListScope$items$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListScope$items$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListScope$items$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(I)Ljava/lang/Void;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListScope$items$1;->b(I)Ljava/lang/Void;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
