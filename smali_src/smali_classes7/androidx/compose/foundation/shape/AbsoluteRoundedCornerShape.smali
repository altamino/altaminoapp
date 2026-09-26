.class public final Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
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
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;->j(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;
    .locals 15
    .param p7    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move/from16 v0, p3

    .line 3
    .line 4
    move/from16 v1, p4

    .line 5
    .line 6
    move/from16 v2, p5

    .line 7
    .line 8
    move/from16 v3, p6

    .line 9
    .line 10
    const-string v4, "layoutDirection"

    .line 11
    .line 12
    move-object/from16 v5, p7

    .line 13
    .line 14
    .line 15
    invoke-static {v5, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    add-float v4, v0, v1

    .line 18
    add-float/2addr v4, v2

    .line 19
    add-float/2addr v4, v3

    .line 20
    const/4 v5, 0x0

    .line 21
    .line 22
    cmpg-float v4, v4, v5

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 27
    .line 28
    .line 29
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/SizeKt;->c(J)Landroidx/compose/ui/geometry/Rect;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    new-instance v4, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 37
    .line 38
    .line 39
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/SizeKt;->c(J)Landroidx/compose/ui/geometry/Rect;

    .line 40
    move-result-object v6

    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v8, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v5, v7, v8}, Landroidx/compose/ui/geometry/CornerRadiusKt;->b(FFILjava/lang/Object;)J

    .line 46
    move-result-wide v9

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v5, v7, v8}, Landroidx/compose/ui/geometry/CornerRadiusKt;->b(FFILjava/lang/Object;)J

    .line 50
    move-result-wide v0

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v5, v7, v8}, Landroidx/compose/ui/geometry/CornerRadiusKt;->b(FFILjava/lang/Object;)J

    .line 54
    move-result-wide v11

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v5, v7, v8}, Landroidx/compose/ui/geometry/CornerRadiusKt;->b(FFILjava/lang/Object;)J

    .line 58
    move-result-wide v13

    .line 59
    move-wide v7, v9

    .line 60
    move-wide v9, v0

    .line 61
    .line 62
    .line 63
    invoke-static/range {v6 .. v14}, Landroidx/compose/ui/geometry/RoundRectKt;->b(Landroidx/compose/ui/geometry/Rect;JJJJ)Landroidx/compose/ui/geometry/RoundRect;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, v0}, Landroidx/compose/ui/graphics/Outline$Rounded;-><init>(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 68
    move-object v0, v4

    .line 69
    :goto_0
    return-object v0
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
    instance-of v1, p1, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

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
    check-cast p1, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

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

.method public j(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
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
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

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
    const-string v1, "AbsoluteRoundedCornerShape(topLeft = "

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
