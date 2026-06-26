.class public final Lcom/narvii/widget/shader/LinearGradientDelegate;
.super Ljava/lang/Object;
.source "LinearGradientDelegate.kt"


# instance fields
.field private color0:I

.field private color1:I

.field private gradient:Landroid/graphics/LinearGradient;

.field private tile:Landroid/graphics/Shader$TileMode;

.field private x0:F

.field private x1:F

.field private y0:F

.field private y1:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/narvii/widget/shader/LinearGradientDelegate;->tile:Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public final getShade()Landroid/graphics/LinearGradient;
    .locals 9

    .line 34
    iget-object v0, p0, Lcom/narvii/widget/shader/LinearGradientDelegate;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    :goto_0
    return-object v0
.end method

.method public final setShade(FFFFIILandroid/graphics/Shader$TileMode;)V
    .locals 10

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    const-string v1, "tile"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->x0:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->y0:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_0

    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->x1:F

    cmpg-float v1, v1, v4

    if-nez v1, :cond_0

    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->y1:F

    cmpg-float v1, v1, v5

    if-nez v1, :cond_0

    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->color0:I

    if-ne v1, v6, :cond_0

    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->color1:I

    if-ne v1, v7, :cond_0

    iget-object v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->tile:Landroid/graphics/Shader$TileMode;

    if-eq v1, v8, :cond_1

    .line 23
    :cond_0
    iput v2, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->x0:F

    .line 24
    iput v3, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->y0:F

    .line 25
    iput v4, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->x1:F

    .line 26
    iput v5, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->y1:F

    .line 27
    iput v6, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->color0:I

    .line 28
    iput v7, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->color1:I

    .line 29
    iput-object v8, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->tile:Landroid/graphics/Shader$TileMode;

    .line 30
    new-instance v9, Landroid/graphics/LinearGradient;

    move-object v1, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->gradient:Landroid/graphics/LinearGradient;

    :cond_1
    return-void
.end method
