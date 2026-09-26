.class public final Landroidx/compose/foundation/layout/PaddingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPadding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Padding.kt\nandroidx/compose/foundation/layout/PaddingKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,436:1\n135#2:437\n135#2:442\n135#2:445\n135#2:446\n135#2:447\n155#3:438\n155#3:439\n155#3:440\n155#3:441\n155#3:443\n155#3:444\n155#3:448\n155#3:449\n155#3:450\n155#3:451\n155#3:452\n155#3:453\n155#3:454\n155#3:455\n155#3:456\n*S KotlinDebug\n*F\n+ 1 Padding.kt\nandroidx/compose/foundation/layout/PaddingKt\n*L\n62#1:437\n95#1:442\n123#1:445\n146#1:446\n178#1:447\n51#1:438\n52#1:439\n53#1:440\n54#1:441\n86#1:443\n87#1:444\n167#1:448\n168#1:449\n169#1:450\n170#1:451\n286#1:452\n296#1:453\n297#1:454\n298#1:455\n299#1:456\n*E\n"
.end annotation


# direct methods
.method public static final a(F)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 7
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move v1, p0

    .line 6
    move v2, p0

    .line 7
    move v3, p0

    .line 8
    move v4, p0

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFFLkotlin/jvm/internal/k;)V

    .line 12
    return-object v6
.end method

.method public static final b(FF)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 7
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move v1, p0

    .line 6
    move v2, p1

    .line 7
    move v3, p0

    .line 8
    move v4, p1

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFFLkotlin/jvm/internal/k;)V

    .line 12
    return-object v6
.end method

.method public static synthetic c(FFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p3, p2, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    int-to-float p0, v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 10
    move-result p0

    .line 11
    .line 12
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    int-to-float p1, v0

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/PaddingKt;->b(FF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final d(FFFF)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 7
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move v1, p0

    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFFLkotlin/jvm/internal/k;)V

    .line 12
    return-object v6
.end method

.method public static synthetic e(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    int-to-float p0, v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 10
    move-result p0

    .line 11
    .line 12
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 13
    .line 14
    if-eqz p5, :cond_1

    .line 15
    int-to-float p1, v0

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 19
    move-result p1

    .line 20
    .line 21
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 22
    .line 23
    if-eqz p5, :cond_2

    .line 24
    int-to-float p2, v0

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 28
    move-result p2

    .line 29
    .line 30
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 31
    .line 32
    if-eqz p4, :cond_3

    .line 33
    int-to-float p3, v0

    .line 34
    .line 35
    .line 36
    invoke-static {p3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 37
    move-result p3

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/PaddingKt;->d(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static final f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1
    .param p0    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 23
    move-result p0

    .line 24
    :goto_0
    return p0
.end method

.method public static final g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1
    .param p0    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 23
    move-result p0

    .line 24
    :goto_0
    return p0
.end method

.method public static final h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "paddingValues"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesModifier;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Landroidx/compose/foundation/layout/PaddingKt$padding$$inlined$debugInspectorInfo$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/PaddingKt$padding$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-direct {v0, p1, v1}, Landroidx/compose/foundation/layout/PaddingValuesModifier;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Le8/l;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static final i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$padding"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/layout/PaddingModifier;

    .line 8
    const/4 v6, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroidx/compose/foundation/layout/PaddingKt$padding-3ABfNKs$$inlined$debugInspectorInfo$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/PaddingKt$padding-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    .line 20
    :goto_0
    move-object v7, v1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    const/4 v8, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v2, p1

    .line 30
    move v3, p1

    .line 31
    move v4, p1

    .line 32
    move v5, p1

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/PaddingModifier;-><init>(FFFFZLe8/l;Lkotlin/jvm/internal/k;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static final j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$padding"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/layout/PaddingModifier;

    .line 8
    const/4 v6, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroidx/compose/foundation/layout/PaddingKt$padding-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p1, p2}, Landroidx/compose/foundation/layout/PaddingKt$padding-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 20
    :goto_0
    move-object v7, v1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    const/4 v8, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v2, p1

    .line 30
    move v3, p2

    .line 31
    move v4, p1

    .line 32
    move v5, p2

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/PaddingModifier;-><init>(FFFFZLe8/l;Lkotlin/jvm/internal/k;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static synthetic k(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    int-to-float p1, v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 10
    move-result p1

    .line 11
    .line 12
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    int-to-float p2, v0

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 19
    move-result p2

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$padding"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/layout/PaddingModifier;

    .line 8
    const/4 v6, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroidx/compose/foundation/layout/PaddingKt$padding-qDBjuR0$$inlined$debugInspectorInfo$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingKt$padding-qDBjuR0$$inlined$debugInspectorInfo$1;-><init>(FFFF)V

    .line 20
    :goto_0
    move-object v7, v1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    const/4 v8, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v2, p1

    .line 30
    move v3, p2

    .line 31
    move v4, p3

    .line 32
    move v5, p4

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/PaddingModifier;-><init>(FFFFZLe8/l;Lkotlin/jvm/internal/k;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static synthetic m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p6, :cond_0

    .line 6
    int-to-float p1, v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 10
    move-result p1

    .line 11
    .line 12
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 13
    .line 14
    if-eqz p6, :cond_1

    .line 15
    int-to-float p2, v0

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 19
    move-result p2

    .line 20
    .line 21
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 22
    .line 23
    if-eqz p6, :cond_2

    .line 24
    int-to-float p3, v0

    .line 25
    .line 26
    .line 27
    invoke-static {p3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 28
    move-result p3

    .line 29
    .line 30
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 31
    .line 32
    if-eqz p5, :cond_3

    .line 33
    int-to-float p4, v0

    .line 34
    .line 35
    .line 36
    invoke-static {p4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 37
    move-result p4

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
