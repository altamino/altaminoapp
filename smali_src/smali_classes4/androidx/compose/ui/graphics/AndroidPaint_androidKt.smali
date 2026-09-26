.class public final Landroidx/compose/ui/graphics/AndroidPaint_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/AndroidPaint_androidKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>()V

    .line 6
    return-object v0
.end method

.method public static final b(Landroid/graphics/Paint;)F
    .locals 1
    .param p0    # Landroid/graphics/Paint;
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
    .line 8
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    .line 9
    move-result p0

    .line 10
    int-to-float p0, p0

    .line 11
    .line 12
    const/high16 v0, 0x437f0000    # 255.0f

    .line 13
    div-float/2addr p0, v0

    .line 14
    return p0
.end method

.method public static final c(Landroid/graphics/Paint;)J
    .locals 2
    .param p0    # Landroid/graphics/Paint;
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
    .line 8
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    .line 9
    move-result p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public static final d(Landroid/graphics/Paint;)I
    .locals 1
    .param p0    # Landroid/graphics/Paint;
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
    .line 8
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 9
    move-result p0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    sget-object p0, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/FilterQuality$Companion;->b()I

    .line 17
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/FilterQuality$Companion;->a()I

    .line 24
    move-result p0

    .line 25
    :goto_0
    return p0
.end method

.method public static final e(Landroid/graphics/Paint;)I
    .locals 1
    .param p0    # Landroid/graphics/Paint;
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
    .line 8
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 p0, -0x1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/AndroidPaint_androidKt$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result p0

    .line 20
    .line 21
    aget p0, v0, p0

    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    .line 24
    if-eq p0, v0, :cond_3

    .line 25
    const/4 v0, 0x2

    .line 26
    .line 27
    if-eq p0, v0, :cond_2

    .line 28
    const/4 v0, 0x3

    .line 29
    .line 30
    if-eq p0, v0, :cond_1

    .line 31
    .line 32
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->a()I

    .line 36
    move-result p0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->c()I

    .line 43
    move-result p0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_2
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->b()I

    .line 50
    move-result p0

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_3
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->a()I

    .line 57
    move-result p0

    .line 58
    :goto_1
    return p0
.end method

.method public static final f(Landroid/graphics/Paint;)I
    .locals 1
    .param p0    # Landroid/graphics/Paint;
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
    .line 8
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 p0, -0x1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/AndroidPaint_androidKt$WhenMappings;->$EnumSwitchMapping$2:[I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result p0

    .line 20
    .line 21
    aget p0, v0, p0

    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    .line 24
    if-eq p0, v0, :cond_3

    .line 25
    const/4 v0, 0x2

    .line 26
    .line 27
    if-eq p0, v0, :cond_2

    .line 28
    const/4 v0, 0x3

    .line 29
    .line 30
    if-eq p0, v0, :cond_1

    .line 31
    .line 32
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->b()I

    .line 36
    move-result p0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->c()I

    .line 43
    move-result p0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_2
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->a()I

    .line 50
    move-result p0

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_3
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->b()I

    .line 57
    move-result p0

    .line 58
    :goto_1
    return p0
.end method

.method public static final g(Landroid/graphics/Paint;)F
    .locals 1
    .param p0    # Landroid/graphics/Paint;
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
    .line 8
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final h(Landroid/graphics/Paint;)F
    .locals 1
    .param p0    # Landroid/graphics/Paint;
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
    .line 8
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final i()Landroid/graphics/Paint;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    const/4 v1, 0x7

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public static final j(Landroid/graphics/Paint;F)V
    .locals 2
    .param p0    # Landroid/graphics/Paint;
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
    const/high16 v0, 0x437f0000    # 255.0f

    .line 8
    mul-float/2addr p1, v0

    .line 9
    float-to-double v0, p1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    .line 13
    move-result-wide v0

    .line 14
    double-to-float p1, v0

    .line 15
    float-to-int p1, p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 19
    return-void
.end method

.method public static final k(Landroid/graphics/Paint;I)V
    .locals 2
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setNativeBlendMode"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;->INSTANCE:Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;->a(Landroid/graphics/Paint;I)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidBlendMode_androidKt;->b(I)Landroid/graphics/PorterDuff$Mode;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 30
    :goto_0
    return-void
.end method

.method public static final l(Landroid/graphics/Paint;J)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setNativeColor"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    return-void
.end method

.method public static final m(Landroid/graphics/Paint;Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidColorFilter_androidKt;->b(Landroidx/compose/ui/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 17
    return-void
.end method

.method public static final n(Landroid/graphics/Paint;I)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setNativeFilterQuality"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/FilterQuality$Companion;->b()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/FilterQuality;->e(II)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    xor-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 21
    return-void
.end method

.method public static final o(Landroid/graphics/Paint;Landroidx/compose/ui/graphics/PathEffect;)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/PathEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    check-cast p1, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPathEffect;->a()Landroid/graphics/PathEffect;

    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 19
    return-void
.end method

.method public static final p(Landroid/graphics/Paint;Landroid/graphics/Shader;)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Shader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .line 8
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9
    return-void
.end method

.method public static final q(Landroid/graphics/Paint;I)V
    .locals 2
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setNativeStrokeCap"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->c()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeCap;->g(II)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->b()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeCap;->g(II)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->a()I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/StrokeCap;->g(II)Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 52
    return-void
.end method

.method public static final r(Landroid/graphics/Paint;I)V
    .locals 2
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setNativeStrokeJoin"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->b()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeJoin;->g(II)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->a()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeJoin;->g(II)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->c()I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/StrokeJoin;->g(II)Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 52
    return-void
.end method

.method public static final s(Landroid/graphics/Paint;F)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
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
    .line 8
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 9
    return-void
.end method

.method public static final t(Landroid/graphics/Paint;F)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
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
    .line 8
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    return-void
.end method

.method public static final u(Landroid/graphics/Paint;I)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setNativeStyle"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->b()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/PaintingStyle;->e(II)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    return-void
.end method
