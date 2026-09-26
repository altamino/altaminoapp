.class public final synthetic Landroidx/compose/ui/platform/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/compose/ui/platform/ViewConfiguration;)J
    .locals 2

    .line 1
    .line 2
    const/16 p0, 0x30

    .line 3
    int-to-float p0, p0

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 11
    move-result p0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/DpKt;->b(FF)J

    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method
