.class public final Lcoil/compose/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncoil/compose/UtilsKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,92:1\n76#2:93\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncoil/compose/UtilsKt\n*L\n26#1:93\n*E\n"
.end annotation


# static fields
.field private static final ZeroConstraints:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/unit/Constraints$Companion;->c(II)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    sput-wide v0, Lcoil/compose/j;->ZeroConstraints:J

    .line 10
    return-void
.end method

.method public static final a(JF)F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 9
    move-result p0

    .line 10
    int-to-float p0, p0

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0, p0}, Lj8/m;->m(FFF)F

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static final b(JF)F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 9
    move-result p0

    .line 10
    int-to-float p0, p0

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0, p0}, Lj8/m;->m(FFF)F

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static final c()J
    .locals 2

    .line 1
    sget-wide v0, Lcoil/compose/j;->ZeroConstraints:J

    return-wide v0
.end method

.method public static final d(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Lcoil/request/h;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ReadOnlyComposable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    const-string v1, "coil.compose.requestOf (Utils.kt:21)"

    .line 10
    .line 11
    .line 12
    const v2, 0x44a78b4a

    .line 13
    .line 14
    .line 15
    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->Z(IIILjava/lang/String;)V

    .line 16
    .line 17
    :cond_0
    instance-of p2, p0, Lcoil/request/h;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    check-cast p0, Lcoil/request/h;

    .line 22
    return-object p0

    .line 23
    .line 24
    :cond_1
    new-instance p2, Lcoil/request/h$a;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->g()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p1}, Lcoil/request/h$a;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Lcoil/request/h$a;->b(Ljava/lang/Object;)Lcoil/request/h$a;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcoil/request/h$a;->a()Lcoil/request/h;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static final e(J)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lg8/a;->c(F)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 12
    move-result p0

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lg8/a;->c(F)I

    .line 16
    move-result p0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 20
    move-result-wide p0

    .line 21
    return-wide p0
.end method

.method public static final f(Landroidx/compose/ui/layout/ContentScale;)Lcoil/size/h;
    .locals 2
    .param p0    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/layout/ContentScale$Companion;->b()Landroidx/compose/ui/layout/ContentScale;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/layout/ContentScale$Companion;->c()Landroidx/compose/ui/layout/ContentScale;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    :goto_0
    sget-object p0, Lcoil/size/h;->FIT:Lcoil/size/h;

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    sget-object p0, Lcoil/size/h;->FILL:Lcoil/size/h;

    .line 29
    :goto_1
    return-object p0
.end method
