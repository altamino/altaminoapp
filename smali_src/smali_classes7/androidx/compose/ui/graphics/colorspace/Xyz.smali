.class public final Landroidx/compose/ui/graphics/colorspace/Xyz;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->c()J

    .line 11
    move-result-wide v3

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move v5, p2

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/k;)V

    .line 19
    return-void
.end method

.method private final j(F)F
    .locals 2

    .line 1
    .line 2
    const/high16 v0, -0x40000000    # -2.0f

    .line 3
    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lj8/m;->m(FFF)F

    .line 8
    move-result p1

    .line 9
    return p1
.end method


# virtual methods
.method public a([F)[F
    .locals 2
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "v"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    aget v1, p1, v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/colorspace/Xyz;->j(F)F

    .line 12
    move-result v1

    .line 13
    .line 14
    aput v1, p1, v0

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    aget v1, p1, v0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/colorspace/Xyz;->j(F)F

    .line 21
    move-result v1

    .line 22
    .line 23
    aput v1, p1, v0

    .line 24
    const/4 v0, 0x2

    .line 25
    .line 26
    aget v1, p1, v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/colorspace/Xyz;->j(F)F

    .line 30
    move-result v1

    .line 31
    .line 32
    aput v1, p1, v0

    .line 33
    return-object p1
.end method

.method public d(I)F
    .locals 0

    .line 1
    const/high16 p1, 0x40000000    # 2.0f

    return p1
.end method

.method public e(I)F
    .locals 0

    .line 1
    const/high16 p1, -0x40000000    # -2.0f

    return p1
.end method

.method public i([F)[F
    .locals 2
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "v"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    aget v1, p1, v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/colorspace/Xyz;->j(F)F

    .line 12
    move-result v1

    .line 13
    .line 14
    aput v1, p1, v0

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    aget v1, p1, v0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/colorspace/Xyz;->j(F)F

    .line 21
    move-result v1

    .line 22
    .line 23
    aput v1, p1, v0

    .line 24
    const/4 v0, 0x2

    .line 25
    .line 26
    aget v1, p1, v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/colorspace/Xyz;->j(F)F

    .line 30
    move-result v1

    .line 31
    .line 32
    aput v1, p1, v0

    .line 33
    return-object p1
.end method
