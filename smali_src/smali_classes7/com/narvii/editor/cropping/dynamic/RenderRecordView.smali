.class public final Lcom/narvii/editor/cropping/dynamic/RenderRecordView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/RenderRecordView$Companion;
    }
.end annotation


# static fields
.field private static final COLOR:Ljava/lang/String; = "#F5A623"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/RenderRecordView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RADIUS:F = 4.0f

.field private static final TAG:Ljava/lang/String; = "RenderRecordView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private maxPoint:I

.field private paint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pointsArray:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/RenderRecordView$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->Companion:Lcom/narvii/editor/cropping/dynamic/RenderRecordView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0x64

    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 3
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const-string v0, "#F5A623"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    .line 6
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1, v0, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->radius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0x64

    new-array p2, p1, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 10
    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const-string p2, "#F5A623"

    .line 11
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    .line 13
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, v0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->radius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0x64

    new-array p2, p1, [I

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p1, :cond_0

    .line 17
    aput p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const-string p2, "#F5A623"

    .line 18
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    .line 20
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, p3}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->radius:F

    return-void
.end method


# virtual methods
.method public final addPoint(I)V
    .locals 2

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    aput v1, v0, p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result p1

    .line 21
    .line 22
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    .line 23
    :cond_0
    return-void
.end method

.method public final getMaxPoint()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    .line 14
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    div-float/2addr v1, v2

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    :goto_0
    const/16 v3, 0x64

    .line 19
    .line 20
    if-ge v2, v3, :cond_3

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    .line 23
    .line 24
    aget v3, v3, v2

    .line 25
    .line 26
    if-lez v3, :cond_2

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    rsub-int/lit8 v3, v2, 0x63

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v3, v2

    .line 33
    .line 34
    :goto_1
    if-nez v3, :cond_1

    .line 35
    const/4 v3, 0x1

    .line 36
    .line 37
    :cond_1
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v4

    .line 42
    mul-int/2addr v3, v4

    .line 43
    int-to-float v3, v3

    .line 44
    .line 45
    const/high16 v4, 0x42c80000    # 100.0f

    .line 46
    div-float/2addr v3, v4

    .line 47
    .line 48
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->radius:F

    .line 49
    .line 50
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    .line 55
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    return-void
.end method

.method public final resetPoint(I)V
    .locals 4

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    if-ge p1, v0, :cond_2

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    .line 9
    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    add-int/lit8 v1, p1, 0x1

    .line 13
    .line 14
    if-gt v1, v0, :cond_0

    .line 15
    .line 16
    :goto_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    aput v3, v2, v1

    .line 20
    .line 21
    if-eq v1, v0, :cond_0

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    aput v1, v0, p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    :cond_2
    return-void
.end method

.method public final setMaxPoint(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    return-void
.end method
