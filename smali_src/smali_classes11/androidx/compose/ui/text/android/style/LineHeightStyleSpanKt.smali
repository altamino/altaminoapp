.class public final Landroidx/compose/ui/text/android/style/LineHeightStyleSpanKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .param p0    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 8
    .line 9
    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 10
    sub-int/2addr v0, p0

    .line 11
    return v0
.end method
