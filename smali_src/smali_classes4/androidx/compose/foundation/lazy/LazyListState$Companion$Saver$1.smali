.class final Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/LazyListState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/lazy/LazyListState;)Ljava/util/List;
    .locals 2
    .param p1    # Landroidx/compose/runtime/saveable/SaverScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaverScope;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$listSaver"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 p1, 0x2

    .line 12
    .line 13
    new-array p1, p1, [Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/LazyListState;->j()I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    aput-object v0, p1, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/LazyListState;->k()I

    .line 28
    move-result p2

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x1

    .line 34
    .line 35
    aput-object p2, p1, v0

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/foundation/lazy/LazyListState;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;->a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/lazy/LazyListState;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
