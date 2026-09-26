.class public final Landroidx/compose/ui/text/ParagraphInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bottom:F

.field private final endIndex:I

.field private endLineIndex:I

.field private final paragraph:Landroidx/compose/ui/text/Paragraph;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final startIndex:I

.field private startLineIndex:I

.field private top:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/Paragraph;IIIIFF)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/Paragraph;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paragraph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/Paragraph;

    iput p2, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    iput p3, p0, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    iput p4, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    iput p5, p0, Landroidx/compose/ui/text/ParagraphInfo;->endLineIndex:I

    iput p6, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    iput p7, p0, Landroidx/compose/ui/text/ParagraphInfo;->bottom:F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/Paragraph;IIIIFFILkotlin/jvm/internal/k;)V
    .locals 10

    and-int/lit8 v0, p8, 0x8

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_3

    move v9, v1

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 2
    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/text/ParagraphInfo;-><init>(Landroidx/compose/ui/text/Paragraph;IIIIFF)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->bottom:F

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->endLineIndex:I

    return v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final e()Landroidx/compose/ui/text/Paragraph;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/Paragraph;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/ParagraphInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/Paragraph;

    iget-object v3, p1, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/Paragraph;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    iget v3, p1, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    iget v3, p1, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    iget v3, p1, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->endLineIndex:I

    iget v3, p1, Landroidx/compose/ui/text/ParagraphInfo;->endLineIndex:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->bottom:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->bottom:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    return v0
.end method

.method public final h()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/Paragraph;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->endLineIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->bottom:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 2
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/geometry/Rect;->t(J)Landroidx/compose/ui/geometry/Rect;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final j(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/Path;->d(J)V

    .line 16
    return-object p1
.end method

.method public final k(J)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/ParagraphInfo;->l(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphInfo;->l(I)I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 20
    move-result-wide p1

    .line 21
    return-wide p1
.end method

.method public final l(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final m(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final n(F)F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    add-float/2addr p1, v0

    return p1
.end method

.method public final o(J)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 8
    move-result p1

    .line 9
    .line 10
    iget p2, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    .line 11
    sub-float/2addr p1, p2

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 15
    move-result-wide p1

    .line 16
    return-wide p1
.end method

.method public final p(I)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lj8/m;->n(III)I

    .line 8
    move-result p1

    .line 9
    .line 10
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 11
    sub-int/2addr p1, v0

    .line 12
    return p1
.end method

.method public final q(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final r(F)F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    sub-float/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParagraphInfo(paragraph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/Paragraph;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startLineIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endLineIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->endLineIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
