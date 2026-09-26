.class public final Landroidx/compose/ui/graphics/OffsetEffect;
.super Landroidx/compose/ui/graphics/RenderEffect;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation


# instance fields
.field private final offset:J

.field private final renderEffect:Landroidx/compose/ui/graphics/RenderEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/RenderEffect;J)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/RenderEffect;-><init>(Lkotlin/jvm/internal/k;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    iput-wide p2, p0, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/RenderEffect;JLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/OffsetEffect;-><init>(Landroidx/compose/ui/graphics/RenderEffect;J)V

    return-void
.end method


# virtual methods
.method protected b()Landroid/graphics/RenderEffect;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 5
    .line 6
    iget-wide v2, p0, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;->b(Landroidx/compose/ui/graphics/RenderEffect;J)Landroid/graphics/RenderEffect;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
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
    instance-of v1, p1, Landroidx/compose/ui/graphics/OffsetEffect;

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
    iget-object v1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/graphics/OffsetEffect;

    .line 15
    .line 16
    iget-object v3, p1, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    return v2

    .line 24
    .line 25
    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    .line 26
    .line 27
    iget-wide v5, p1, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-wide v1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->o(J)I

    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
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
    const-string v1, "OffsetEffect(renderEffect="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", offset="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-wide v1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->t(J)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const/16 v1, 0x29

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
