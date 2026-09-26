.class public final Landroidx/compose/ui/BiasAlignment$Horizontal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/Alignment$Horizontal;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/BiasAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Horizontal"
.end annotation


# instance fields
.field private final bias:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 6
    return-void
.end method


# virtual methods
.method public a(IILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 1
    .param p3    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutDirection"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sub-int/2addr p2, p1

    .line 7
    int-to-float p1, p2

    .line 8
    .line 9
    const/high16 p2, 0x40000000    # 2.0f

    .line 10
    div-float/2addr p1, p2

    .line 11
    .line 12
    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    .line 14
    if-ne p3, p2, :cond_0

    .line 15
    .line 16
    iget p2, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, -0x1

    .line 19
    int-to-float p2, p2

    .line 20
    .line 21
    iget p3, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 22
    mul-float/2addr p2, p3

    .line 23
    :goto_0
    const/4 p3, 0x1

    .line 24
    int-to-float p3, p3

    .line 25
    add-float/2addr p3, p2

    .line 26
    mul-float/2addr p1, p3

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/BiasAlignment$Horizontal;

    iget v1, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p1, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Horizontal(bias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
