.class public final Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListBeyondBoundsInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListBeyondBoundsInfo.kt\nandroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,126:1\n1182#2:127\n1161#2,2:128\n460#3,11:130\n460#3,11:141\n*S KotlinDebug\n*F\n+ 1 LazyListBeyondBoundsInfo.kt\nandroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo\n*L\n51#1:127\n51#1:128,2\n87#1:130,11\n102#1:141,11\n*E\n"
.end annotation


# instance fields
.field private final beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    new-array v1, v1, [Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(II)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;-><init>(II)V

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 11
    return-object v0
.end method

.method public final b()I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->l()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->a()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-lez v2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    :cond_0
    aget-object v4, v1, v3

    .line 28
    .line 29
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->a()I

    .line 33
    move-result v5

    .line 34
    .line 35
    if-le v5, v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->a()I

    .line 39
    move-result v0

    .line 40
    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    if-lt v3, v2, :cond_0

    .line 44
    :cond_2
    return v0
.end method

.method public final c()I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->l()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->b()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-lez v2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    :cond_0
    aget-object v4, v1, v3

    .line 28
    .line 29
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->b()I

    .line 33
    move-result v5

    .line 34
    .line 35
    if-ge v5, v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->b()I

    .line 39
    move-result v0

    .line 40
    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    if-lt v3, v2, :cond_0

    .line 44
    .line 45
    :cond_2
    if-ltz v0, :cond_3

    .line 46
    return v0

    .line 47
    .line 48
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v1, "Failed requirement."

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->q()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "interval"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->s(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method
