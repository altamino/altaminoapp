.class public final Landroidx/compose/ui/graphics/SolidColor;
.super Landroidx/compose/ui/graphics/Brush;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation


# instance fields
.field private final value:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/Brush;-><init>(Lkotlin/jvm/internal/k;)V

    iput-wide p1, p0, Landroidx/compose/ui/graphics/SolidColor;->value:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(JLandroidx/compose/ui/graphics/Paint;F)V
    .locals 8
    .param p3    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p1, "p"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, p1}, Landroidx/compose/ui/graphics/Paint;->b(F)V

    .line 11
    .line 12
    cmpg-float p1, p4, p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-wide p1, p0, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 23
    move-result p1

    .line 24
    .line 25
    mul-float v2, p1, p4

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    .line 30
    const/16 v6, 0xe

    .line 31
    const/4 v7, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 35
    move-result-wide p1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/graphics/Paint;->j(J)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->n()Landroid/graphics/Shader;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    const/4 p1, 0x0

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p1}, Landroidx/compose/ui/graphics/Paint;->x(Landroid/graphics/Shader;)V

    .line 49
    :cond_1
    return-void
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SolidColor;->value:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/SolidColor;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    iget-wide v3, p0, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/graphics/SolidColor;

    .line 15
    .line 16
    iget-wide v5, p1, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "SolidColor(value="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->u(J)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const/16 v1, 0x29

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
