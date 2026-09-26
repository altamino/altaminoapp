.class public final Lcoil/compose/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncImagePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainterKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n*L\n1#1,414:1\n25#2:415\n1057#3,6:416\n76#4:422\n1#5:423\n159#6:424\n*S KotlinDebug\n*F\n+ 1 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainterKt\n*L\n143#1:415\n143#1:416,6\n148#1:422\n402#1:424\n*E\n"
.end annotation


# static fields
.field private static final FakeTransitionTarget:Lcoil/compose/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcoil/compose/c$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcoil/compose/c$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcoil/compose/c;->FakeTransitionTarget:Lcoil/compose/c$a;

    .line 8
    return-void
.end method

.method public static final synthetic a()Lcoil/compose/c$a;
    .locals 1

    .line 1
    sget-object v0, Lcoil/compose/c;->FakeTransitionTarget:Lcoil/compose/c$a;

    return-object v0
.end method

.method public static final synthetic b(J)Lcoil/size/i;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcoil/compose/c;->e(J)Lcoil/size/i;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(J)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    .line 7
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 8
    .line 9
    cmpl-double v0, v0, v2

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 15
    move-result p0

    .line 16
    float-to-double p0, p0

    .line 17
    .line 18
    cmpl-double p0, p0, v2

    .line 19
    .line 20
    if-ltz p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public static final d(Ljava/lang/Object;Lcoil/e;Le8/l;Le8/l;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/b;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcoil/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcoil/e;",
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "+",
            "Lcoil/compose/b$c;",
            ">;",
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "I",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lcoil/compose/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, -0x78701fba

    .line 4
    .line 5
    .line 6
    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    and-int/lit8 v1, p8, 0x4

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object p2, Lcoil/compose/b;->Companion:Lcoil/compose/b$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcoil/compose/b$b;->a()Le8/l;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    :cond_0
    and-int/lit8 v1, p8, 0x8

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    const/4 p3, 0x0

    .line 22
    .line 23
    :cond_1
    and-int/lit8 v1, p8, 0x10

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    sget-object p4, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4}, Landroidx/compose/ui/layout/ContentScale$Companion;->b()Landroidx/compose/ui/layout/ContentScale;

    .line 31
    move-result-object p4

    .line 32
    .line 33
    :cond_2
    and-int/lit8 p8, p8, 0x20

    .line 34
    .line 35
    if-eqz p8, :cond_3

    .line 36
    .line 37
    sget-object p5, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b()I

    .line 41
    move-result p5

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    .line 45
    move-result p8

    .line 46
    .line 47
    if-eqz p8, :cond_4

    .line 48
    const/4 p8, -0x1

    .line 49
    .line 50
    const-string v1, "coil.compose.rememberAsyncImagePainter (AsyncImagePainter.kt:131)"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p7, p8, v1}, Landroidx/compose/runtime/ComposerKt;->Z(IIILjava/lang/String;)V

    .line 54
    .line 55
    :cond_4
    const/16 p7, 0x8

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p6, p7}, Lcoil/compose/j;->d(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Lcoil/request/h;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lcoil/compose/c;->h(Lcoil/request/h;)V

    .line 63
    .line 64
    .line 65
    const p7, -0x1d58f75c

    .line 66
    .line 67
    .line 68
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 72
    move-result-object p7

    .line 73
    .line 74
    sget-object p8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p8}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 78
    move-result-object p8

    .line 79
    .line 80
    if-ne p7, p8, :cond_5

    .line 81
    .line 82
    new-instance p7, Lcoil/compose/b;

    .line 83
    .line 84
    .line 85
    invoke-direct {p7, p0, p1}, Lcoil/compose/b;-><init>(Lcoil/request/h;Lcoil/e;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 92
    .line 93
    check-cast p7, Lcoil/compose/b;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p7, p2}, Lcoil/compose/b;->K(Le8/l;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p7, p3}, Lcoil/compose/b;->F(Le8/l;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p7, p4}, Lcoil/compose/b;->C(Landroidx/compose/ui/layout/ContentScale;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p7, p5}, Lcoil/compose/b;->D(I)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Landroidx/compose/ui/platform/InspectionModeKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    .line 112
    invoke-interface {p6, p2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    check-cast p2, Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    move-result p2

    .line 120
    .line 121
    .line 122
    invoke-virtual {p7, p2}, Lcoil/compose/b;->H(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p7, p1}, Lcoil/compose/b;->E(Lcoil/e;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p7, p0}, Lcoil/compose/b;->I(Lcoil/request/h;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p7}, Lcoil/compose/b;->b()V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    .line 135
    move-result p0

    .line 136
    .line 137
    if-eqz p0, :cond_6

    .line 138
    .line 139
    .line 140
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->Y()V

    .line 141
    .line 142
    .line 143
    :cond_6
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 144
    return-object p7
.end method

.method private static final e(J)Lcoil/size/i;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    cmp-long v0, p0, v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcoil/size/i;->ORIGINAL:Lcoil/size/i;

    .line 13
    goto :goto_2

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0, p1}, Lcoil/compose/c;->c(J)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    new-instance v0, Lcoil/size/i;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcoil/size/a;->a(I)Lcoil/size/c$a;

    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    sget-object v1, Lcoil/size/c$b;->INSTANCE:Lcoil/size/c$b;

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 56
    move-result v2

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 60
    move-result v3

    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 66
    move-result v2

    .line 67
    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 72
    move-result p0

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Lg8/a;->c(F)I

    .line 76
    move-result p0

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Lcoil/size/a;->a(I)Lcoil/size/c$a;

    .line 80
    move-result-object p0

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_2
    sget-object p0, Lcoil/size/c$b;->INSTANCE:Lcoil/size/c$b;

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-direct {v0, v1, p0}, Lcoil/size/i;-><init>(Lcoil/size/c;Lcoil/size/c;)V

    .line 87
    move-object p0, v0

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const/4 p0, 0x0

    .line 90
    :goto_2
    return-object p0
.end method

.method private static final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Unsupported type: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p0, ". "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0
.end method

.method static synthetic g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x2

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string p2, "If you wish to display this "

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p2, ", use androidx.compose.foundation.Image."

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {p0, p1}, Lcoil/compose/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private static final h(Lcoil/request/h;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/request/h;->m()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcoil/request/h$a;

    .line 7
    .line 8
    if-nez v1, :cond_4

    .line 9
    .line 10
    instance-of v1, v0, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-nez v1, :cond_3

    .line 15
    .line 16
    instance-of v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    instance-of v0, v0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcoil/request/h;->M()Lf0/a;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    if-nez p0, :cond_0

    .line 29
    return-void

    .line 30
    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v0, "request.target must be null."

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0

    .line 43
    .line 44
    :cond_1
    const-string p0, "Painter"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v3, v2, v3}, Lcoil/compose/c;->g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 48
    .line 49
    new-instance p0, Lw7/i;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 53
    throw p0

    .line 54
    .line 55
    :cond_2
    const-string p0, "ImageVector"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v3, v2, v3}, Lcoil/compose/c;->g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 59
    .line 60
    new-instance p0, Lw7/i;

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 64
    throw p0

    .line 65
    .line 66
    :cond_3
    const-string p0, "ImageBitmap"

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v3, v2, v3}, Lcoil/compose/c;->g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 70
    .line 71
    new-instance p0, Lw7/i;

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 75
    throw p0

    .line 76
    .line 77
    :cond_4
    const-string p0, "ImageRequest.Builder"

    .line 78
    .line 79
    const-string v0, "Did you forget to call ImageRequest.Builder.build()?"

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v0}, Lcoil/compose/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    .line 83
    .line 84
    new-instance p0, Lw7/i;

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 88
    throw p0
.end method
