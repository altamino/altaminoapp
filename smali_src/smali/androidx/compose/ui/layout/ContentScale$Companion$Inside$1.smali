.class public final Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/ContentScale;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/ContentScale$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 8
    move-result v1

    .line 9
    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 20
    move-result v1

    .line 21
    .line 22
    cmpg-float v0, v0, v1

    .line 23
    .line 24
    if-gtz v0, :cond_0

    .line 25
    .line 26
    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p1}, Landroidx/compose/ui/layout/ScaleFactorKt;->a(FF)J

    .line 30
    move-result-wide p1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/ContentScaleKt;->c(JJ)F

    .line 35
    move-result p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p1}, Landroidx/compose/ui/layout/ScaleFactorKt;->a(FF)J

    .line 39
    move-result-wide p1

    .line 40
    :goto_0
    return-wide p1
.end method
