.class final Landroidx/compose/foundation/text/selection/SelectionMode$Horizontal;
.super Landroidx/compose/foundation/text/selection/SelectionMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/selection/SelectionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Horizontal"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/foundation/text/selection/SelectionMode;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method


# virtual methods
.method public b(JLandroidx/compose/ui/geometry/Rect;)I
    .locals 3
    .param p3    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "bounds"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p1, p2}, Landroidx/compose/ui/geometry/Rect;->b(J)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 21
    move-result v1

    .line 22
    .line 23
    cmpg-float v0, v0, v1

    .line 24
    const/4 v1, -0x1

    .line 25
    .line 26
    if-gez v0, :cond_1

    .line 27
    return v1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 35
    move-result v2

    .line 36
    .line 37
    cmpg-float v0, v0, v2

    .line 38
    .line 39
    if-gez v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 43
    move-result p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 47
    move-result p2

    .line 48
    .line 49
    cmpg-float p1, p1, p2

    .line 50
    .line 51
    if-gez p1, :cond_2

    .line 52
    return v1

    .line 53
    :cond_2
    const/4 p1, 0x1

    .line 54
    return p1
.end method
