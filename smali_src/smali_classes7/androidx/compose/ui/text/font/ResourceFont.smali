.class public final Landroidx/compose/ui/text/font/ResourceFont;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/font/Font;


# instance fields
.field private final loadingStrategy:I

.field private final resId:I

.field private final style:I

.field private final weight:Landroidx/compose/ui/text/font/FontWeight;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILandroidx/compose/ui/text/font/FontWeight;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    iput-object p2, p0, Landroidx/compose/ui/text/font/ResourceFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iput p3, p0, Landroidx/compose/ui/text/font/ResourceFont;->style:I

    iput p4, p0, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/ui/text/font/FontWeight;IIILkotlin/jvm/internal/k;)V
    .locals 6

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 3
    sget-object p2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->d()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    move-result p3

    :cond_1
    move v3, p3

    and-int/lit8 p2, p5, 0x8

    if-eqz p2, :cond_2

    .line 5
    sget-object p2, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->a()I

    move-result p4

    :cond_2
    move v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 6
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(ILandroidx/compose/ui/text/font/FontWeight;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/ui/text/font/FontWeight;IILkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(ILandroidx/compose/ui/text/font/FontWeight;II)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    return v0
.end method

.method public b()Landroidx/compose/ui/text/font/FontWeight;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->style:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    return v0
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
    instance-of v1, p1, Landroidx/compose/ui/text/font/ResourceFont;

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
    iget v1, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/text/font/ResourceFont;

    .line 15
    .line 16
    iget v3, p1, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 17
    .line 18
    if-eq v1, v3, :cond_2

    .line 19
    return v2

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/ResourceFont;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    return v2

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->c()I

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/ResourceFont;->c()I

    .line 42
    move-result v3

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v3}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_4

    .line 49
    return v2

    .line 50
    .line 51
    .line 52
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->a()I

    .line 53
    move-result v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/ResourceFont;->a()I

    .line 57
    move-result p1

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p1}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->f(II)Z

    .line 61
    move-result p1

    .line 62
    .line 63
    if-nez p1, :cond_5

    .line 64
    return v2

    .line 65
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight;->hashCode()I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    .line 15
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->c()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontStyle;->g(I)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->a()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->g(I)I

    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
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
    const-string v1, "ResourceFont(resId="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", weight="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, ", style="

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->c()I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontStyle;->h(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, ", loadingStrategy="

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->a()I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->h(I)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const/16 v1, 0x29

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method
