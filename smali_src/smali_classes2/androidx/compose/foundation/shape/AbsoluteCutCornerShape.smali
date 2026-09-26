.class public final Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;
.super Landroidx/compose/foundation/shape/CornerBasedShape;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/shape/CornerSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/shape/CornerSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/shape/CornerSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/shape/CornerSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "topLeft"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "topRight"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "bottomRight"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "bottomLeft"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/shape/CornerBasedShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;->j(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;
    .locals 1
    .param p7    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "layoutDirection"

    .line 3
    .line 4
    .line 5
    invoke-static {p7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    add-float p7, p3, p4

    .line 8
    add-float/2addr p7, p6

    .line 9
    add-float/2addr p7, p5

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    cmpg-float p7, p7, v0

    .line 13
    .line 14
    if-nez p7, :cond_0

    .line 15
    .line 16
    new-instance p3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/SizeKt;->c(J)Landroidx/compose/ui/geometry/Rect;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p3, p1}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/Path;

    .line 28
    move-result-object p7

    .line 29
    .line 30
    .line 31
    invoke-interface {p7, v0, p3}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p7, p3, v0}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 38
    move-result p3

    .line 39
    sub-float/2addr p3, p4

    .line 40
    .line 41
    .line 42
    invoke-interface {p7, p3, v0}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 46
    move-result p3

    .line 47
    .line 48
    .line 49
    invoke-interface {p7, p3, p4}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 53
    move-result p3

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 57
    move-result p4

    .line 58
    sub-float/2addr p4, p5

    .line 59
    .line 60
    .line 61
    invoke-interface {p7, p3, p4}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 65
    move-result p3

    .line 66
    sub-float/2addr p3, p5

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 70
    move-result p4

    .line 71
    .line 72
    .line 73
    invoke-interface {p7, p3, p4}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 77
    move-result p3

    .line 78
    .line 79
    .line 80
    invoke-interface {p7, p6, p3}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 84
    move-result p1

    .line 85
    sub-float/2addr p1, p6

    .line 86
    .line 87
    .line 88
    invoke-interface {p7, v0, p1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p7}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 92
    .line 93
    new-instance p3, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 94
    .line 95
    .line 96
    invoke-direct {p3, p7}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    .line 97
    :goto_0
    return-object p3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->i()Landroidx/compose/foundation/shape/CornerSize;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/foundation/shape/CornerBasedShape;->i()Landroidx/compose/foundation/shape/CornerSize;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    return v2

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->h()Landroidx/compose/foundation/shape/CornerSize;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/foundation/shape/CornerBasedShape;->h()Landroidx/compose/foundation/shape/CornerSize;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    return v2

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->f()Landroidx/compose/foundation/shape/CornerSize;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/foundation/shape/CornerBasedShape;->f()Landroidx/compose/foundation/shape/CornerSize;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-nez v1, :cond_4

    .line 57
    return v2

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->g()Landroidx/compose/foundation/shape/CornerSize;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/compose/foundation/shape/CornerBasedShape;->g()Landroidx/compose/foundation/shape/CornerSize;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 70
    .line 71
    if-nez p1, :cond_5

    .line 72
    return v2

    .line 73
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->i()Landroidx/compose/foundation/shape/CornerSize;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v0

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->h()Landroidx/compose/foundation/shape/CornerSize;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->f()Landroidx/compose/foundation/shape/CornerSize;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 29
    move-result v1

    .line 30
    add-int/2addr v0, v1

    .line 31
    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->g()Landroidx/compose/foundation/shape/CornerSize;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    return v0
.end method

.method public j(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;
    .locals 1
    .param p1    # Landroidx/compose/foundation/shape/CornerSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/shape/CornerSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/shape/CornerSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/shape/CornerSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "topStart"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "topEnd"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "bottomEnd"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "bottomStart"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 26
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
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
    const-string v1, "AbsoluteCutCornerShape(topLeft = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->i()Landroidx/compose/foundation/shape/CornerSize;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, ", topRight = "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->h()Landroidx/compose/foundation/shape/CornerSize;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, ", bottomRight = "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->f()Landroidx/compose/foundation/shape/CornerSize;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, ", bottomLeft = "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/CornerBasedShape;->g()Landroidx/compose/foundation/shape/CornerSize;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const/16 v1, 0x29

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
