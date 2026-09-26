.class public final Landroidx/core/util/RangeKt$toClosedRange$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj8/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj8/f<",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $this_toClosedRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# virtual methods
.method public c()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/util/RangeKt$toClosedRange$1;->$this_toClosedRange:Landroid/util/Range;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStart()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/util/RangeKt$toClosedRange$1;->$this_toClosedRange:Landroid/util/Range;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lj8/f$a;->a(Lj8/f;)Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method
