.class public final Landroidx/compose/animation/core/AnimationVector3D;
.super Landroidx/compose/animation/core/AnimationVector;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final size:I

.field private v1:F

.field private v2:F

.field private v3:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/compose/animation/core/AnimationVector;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    .line 6
    iput p1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    .line 7
    .line 8
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    .line 9
    .line 10
    iput p3, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    .line 11
    const/4 p1, 0x3

    .line 12
    .line 13
    iput p1, p0, Landroidx/compose/animation/core/AnimationVector3D;->size:I

    .line 14
    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/animation/core/AnimationVector3D;->size:I

    return v0
.end method

.method public bridge synthetic c()Landroidx/compose/animation/core/AnimationVector;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector3D;->f()Landroidx/compose/animation/core/AnimationVector3D;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    return-void
.end method

.method public e(IF)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    goto :goto_0

    :cond_1
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    goto :goto_0

    :cond_2
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/animation/core/AnimationVector3D;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/animation/core/AnimationVector3D;

    .line 7
    .line 8
    iget v0, p1, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    .line 11
    .line 12
    cmpg-float v0, v0, v1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget v0, p1, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    .line 19
    .line 20
    cmpg-float v0, v0, v1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    .line 25
    .line 26
    iget v0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    .line 27
    .line 28
    cmpg-float p1, p1, v0

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method public f()Landroidx/compose/animation/core/AnimationVector3D;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/animation/core/AnimationVector3D;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v1}, Landroidx/compose/animation/core/AnimationVector3D;-><init>(FFF)V

    .line 7
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
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
    const-string v1, "AnimationVector3D: v1 = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", v2 = "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", v3 = "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
