.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;->b(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->e()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 26
    move-result p1

    .line 27
    .line 28
    const/high16 v0, 0x41f00000    # 30.0f

    .line 29
    .line 30
    cmpl-float v0, p1, v0

    .line 31
    .line 32
    if-ltz v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    const/high16 p1, 0x42700000    # 60.0f

    .line 36
    .line 37
    .line 38
    :goto_0
    const v0, 0x3b9aca00

    .line 39
    int-to-float v0, v0

    .line 40
    div-float/2addr v0, p1

    .line 41
    float-to-long v0, v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->f(J)V

    .line 45
    :cond_1
    return-void
.end method
