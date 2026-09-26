.class Lcom/narvii/list/refresh/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/refresh/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleDiameter:I

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/narvii/list/refresh/CircleImageView;


# direct methods
.method public constructor <init>(Lcom/narvii/list/refresh/CircleImageView;II)V
    .locals 8

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->this$0:Lcom/narvii/list/refresh/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/narvii/list/refresh/CircleImageView;->b(Lcom/narvii/list/refresh/CircleImageView;I)V

    .line 16
    .line 17
    iput p3, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    .line 18
    .line 19
    new-instance p2, Landroid/graphics/RadialGradient;

    .line 20
    .line 21
    iget p3, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    .line 22
    .line 23
    div-int/lit8 v0, p3, 0x2

    .line 24
    int-to-float v2, v0

    .line 25
    .line 26
    div-int/lit8 p3, p3, 0x2

    .line 27
    int-to-float v3, p3

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/list/refresh/CircleImageView;->a(Lcom/narvii/list/refresh/CircleImageView;)I

    .line 31
    move-result p1

    .line 32
    int-to-float v4, p1

    .line 33
    .line 34
    const/high16 p1, 0x3d000000    # 0.03125f

    .line 35
    const/4 p3, 0x0

    .line 36
    .line 37
    .line 38
    filled-new-array {p1, p3}, [I

    .line 39
    move-result-object v5

    .line 40
    const/4 v6, 0x0

    .line 41
    .line 42
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 43
    move-object v1, p2

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 47
    .line 48
    iput-object p2, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 54
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->this$0:Lcom/narvii/list/refresh/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->this$0:Lcom/narvii/list/refresh/CircleImageView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v1

    .line 13
    .line 14
    div-int/lit8 v0, v0, 0x2

    .line 15
    int-to-float v0, v0

    .line 16
    .line 17
    div-int/lit8 v1, v1, 0x2

    .line 18
    int-to-float v1, v1

    .line 19
    .line 20
    iget v2, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    .line 21
    .line 22
    div-int/lit8 v2, v2, 0x2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->this$0:Lcom/narvii/list/refresh/CircleImageView;

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Lcom/narvii/list/refresh/CircleImageView;->a(Lcom/narvii/list/refresh/CircleImageView;)I

    .line 28
    move-result v3

    .line 29
    add-int/2addr v2, v3

    .line 30
    int-to-float v2, v2

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    .line 37
    iget v2, p0, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    .line 38
    .line 39
    div-int/lit8 v2, v2, 0x2

    .line 40
    int-to-float v2, v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 44
    return-void
.end method
