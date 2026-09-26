.class public final Landroidx/compose/ui/platform/RenderNodeLayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;
.implements Landroidx/compose/ui/layout/GraphicLayerInfo;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;,
        Landroidx/compose/ui/platform/RenderNodeLayer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderNodeLayer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNodeLayer.android.kt\nandroidx/compose/ui/platform/RenderNodeLayer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,363:1\n1#2:364\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/platform/RenderNodeLayer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final getMatrix:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/ui/platform/DeviceRenderNode;",
            "Landroid/graphics/Matrix;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private drawBlock:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private drawnWithZ:Z

.field private invalidateParentLayer:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isDestroyed:Z

.field private isDirty:Z

.field private final matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/platform/LayerMatrixCache<",
            "Landroidx/compose/ui/platform/DeviceRenderNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transformOrigin:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/RenderNodeLayer$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer;->Companion:Landroidx/compose/ui/platform/RenderNodeLayer$Companion;

    sget-object v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer;->getMatrix:Le8/p;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Le8/l;Le8/a;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/platform/AndroidComposeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AndroidComposeView;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ownerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "drawBlock"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "invalidateParentLayer"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Le8/l;

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Le8/a;

    .line 25
    .line 26
    new-instance p2, Landroidx/compose/ui/platform/OutlineResolver;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p3}, Landroidx/compose/ui/platform/OutlineResolver;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 34
    .line 35
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 36
    .line 37
    new-instance p2, Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 38
    .line 39
    sget-object p3, Landroidx/compose/ui/platform/RenderNodeLayer;->getMatrix:Le8/p;

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, p3}, Landroidx/compose/ui/platform/LayerMatrixCache;-><init>(Le8/p;)V

    .line 43
    .line 44
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 45
    .line 46
    new-instance p2, Landroidx/compose/ui/graphics/CanvasHolder;

    .line 47
    .line 48
    .line 49
    invoke-direct {p2}, Landroidx/compose/ui/graphics/CanvasHolder;-><init>()V

    .line 50
    .line 51
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 52
    .line 53
    sget-object p2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->a()J

    .line 57
    move-result-wide p2

    .line 58
    .line 59
    iput-wide p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 60
    .line 61
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 62
    .line 63
    const/16 p3, 0x1d

    .line 64
    .line 65
    if-lt p2, p3, :cond_0

    .line 66
    .line 67
    new-instance p2, Landroidx/compose/ui/platform/RenderNodeApi29;

    .line 68
    .line 69
    .line 70
    invoke-direct {p2, p1}, Landroidx/compose/ui/platform/RenderNodeApi29;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_0
    new-instance p2, Landroidx/compose/ui/platform/RenderNodeApi23;

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p1}, Landroidx/compose/ui/platform/RenderNodeApi23;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 77
    :goto_0
    const/4 p1, 0x1

    .line 78
    .line 79
    .line 80
    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->t(Z)Z

    .line 81
    .line 82
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 83
    return-void
.end method

.method private final j(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->s()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->D()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/OutlineResolver;->a(Landroidx/compose/ui/graphics/Canvas;)V

    .line 22
    :cond_1
    return-void
.end method

.method private final k(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->a0(Landroidx/compose/ui/node/OwnedLayer;Z)V

    .line 12
    :cond_0
    return-void
.end method

.method private final l()V
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;->a(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 1
    .param p1    # Landroidx/compose/ui/geometry/MutableRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "rect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->a(Ljava/lang/Object;)[F

    .line 15
    move-result-object p2

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, p2, p2, p2}, Landroidx/compose/ui/geometry/MutableRect;->g(FFFF)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->g([FLandroidx/compose/ui/geometry/MutableRect;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->b(Ljava/lang/Object;)[F

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->g([FLandroidx/compose/ui/geometry/MutableRect;)V

    .line 38
    :goto_0
    return-void
.end method

.method public b(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->c(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 13
    move-result v0

    .line 14
    const/4 v7, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->i()V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->I()F

    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    cmpl-float v0, v0, v2

    .line 29
    .line 30
    if-lez v0, :cond_0

    .line 31
    const/4 v7, 0x1

    .line 32
    .line 33
    :cond_0
    iput-boolean v7, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    .line 34
    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->o()V

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->j(Landroid/graphics/Canvas;)V

    .line 44
    .line 45
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->h()V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->c()I

    .line 57
    move-result v0

    .line 58
    int-to-float v0, v0

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->E()I

    .line 64
    move-result v2

    .line 65
    int-to-float v8, v2

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->a()I

    .line 71
    move-result v2

    .line 72
    int-to-float v4, v2

    .line 73
    .line 74
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 75
    .line 76
    .line 77
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->w()I

    .line 78
    move-result v2

    .line 79
    int-to-float v5, v2

    .line 80
    .line 81
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 82
    .line 83
    .line 84
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->e()F

    .line 85
    move-result v2

    .line 86
    .line 87
    const/high16 v3, 0x3f800000    # 1.0f

    .line 88
    .line 89
    cmpg-float v2, v2, v3

    .line 90
    .line 91
    if-gez v2, :cond_4

    .line 92
    .line 93
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 94
    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/Paint;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    iput-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 102
    .line 103
    :cond_3
    iget-object v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 104
    .line 105
    .line 106
    invoke-interface {v3}, Landroidx/compose/ui/platform/DeviceRenderNode;->e()F

    .line 107
    move-result v3

    .line 108
    .line 109
    .line 110
    invoke-interface {v2, v3}, Landroidx/compose/ui/graphics/Paint;->b(F)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Paint;->m()Landroid/graphics/Paint;

    .line 114
    move-result-object v6

    .line 115
    move v2, v0

    .line 116
    move v3, v8

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 120
    goto :goto_0

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-interface {p1, v0, v8}, Landroidx/compose/ui/graphics/Canvas;->b(FF)V

    .line 127
    .line 128
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 129
    .line 130
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/LayerMatrixCache;->b(Ljava/lang/Object;)[F

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/Canvas;->s([F)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/RenderNodeLayer;->j(Landroidx/compose/ui/graphics/Canvas;)V

    .line 141
    .line 142
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Le8/l;

    .line 143
    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    .line 147
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :cond_5
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, v7}, Landroidx/compose/ui/platform/RenderNodeLayer;->k(Z)V

    .line 154
    :cond_6
    :goto_1
    return-void
.end method

.method public c(Le8/l;Le8/a;)V
    .locals 2
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "drawBlock"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "invalidateParentLayer"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->k(Z)V

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    .line 19
    .line 20
    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->a()J

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    iput-wide v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Le8/l;

    .line 29
    .line 30
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Le8/a;

    .line 31
    return-void
.end method

.method public d(JZ)J
    .locals 1

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    iget-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->a(Ljava/lang/Object;)[F

    .line 10
    move-result-object p3

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->f([FJ)J

    .line 16
    move-result-wide p1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->a()J

    .line 23
    move-result-wide p1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->b(Ljava/lang/Object;)[F

    .line 32
    move-result-object p3

    .line 33
    .line 34
    .line 35
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->f([FJ)J

    .line 36
    move-result-wide p1

    .line 37
    :goto_0
    return-wide p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->r()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->C()V

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Le8/l;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Le8/a;

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->k(Z)V

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->g0()V

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->e0(Landroidx/compose/ui/node/OwnedLayer;)Z

    .line 36
    return-void
.end method

.method public e(J)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 8
    move-result p1

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 11
    .line 12
    iget-wide v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->f(J)F

    .line 16
    move-result v1

    .line 17
    int-to-float v2, v0

    .line 18
    mul-float/2addr v1, v2

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->x(F)V

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 24
    .line 25
    iget-wide v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->g(J)F

    .line 29
    move-result v1

    .line 30
    int-to-float v3, p1

    .line 31
    mul-float/2addr v1, v3

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->y(F)V

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 37
    .line 38
    .line 39
    invoke-interface {p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->c()I

    .line 40
    move-result v1

    .line 41
    .line 42
    iget-object v4, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 43
    .line 44
    .line 45
    invoke-interface {v4}, Landroidx/compose/ui/platform/DeviceRenderNode;->E()I

    .line 46
    move-result v4

    .line 47
    .line 48
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 49
    .line 50
    .line 51
    invoke-interface {v5}, Landroidx/compose/ui/platform/DeviceRenderNode;->c()I

    .line 52
    move-result v5

    .line 53
    add-int/2addr v5, v0

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->E()I

    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, p1

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v1, v4, v5, v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->B(IIII)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 72
    move-result-wide v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/OutlineResolver;->h(J)V

    .line 76
    .line 77
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 78
    .line 79
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Landroidx/compose/ui/platform/OutlineResolver;->c()Landroid/graphics/Outline;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->z(Landroid/graphics/Outline;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidate()V

    .line 90
    .line 91
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->c()V

    .line 95
    :cond_0
    return-void
.end method

.method public f(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V
    .locals 12
    .param p13    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Landroidx/compose/ui/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p21    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p13

    const-string v2, "shape"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "layoutDirection"

    move-object/from16 v3, p20

    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "density"

    move-object/from16 v4, p21

    invoke-static {v4, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v5, p11

    iput-wide v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 1
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->s()Z

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/OutlineResolver;->d()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move v10, p1

    .line 2
    invoke-interface {v9, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->k(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move v10, p2

    .line 3
    invoke-interface {v9, p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->n(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move v10, p3

    .line 4
    invoke-interface {v9, p3}, Landroidx/compose/ui/platform/DeviceRenderNode;->b(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p4

    .line 5
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->o(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p5

    .line 6
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->d(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p6

    .line 7
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->p(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 8
    invoke-static/range {p16 .. p17}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    move-result v10

    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->F(I)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 9
    invoke-static/range {p18 .. p19}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    move-result v10

    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->H(I)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p9

    .line 10
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->i(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p7

    .line 11
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->g(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p8

    .line 12
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->h(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p10

    .line 13
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->f(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 14
    invoke-static/range {p11 .. p12}, Landroidx/compose/ui/graphics/TransformOrigin;->f(J)F

    move-result v10

    iget-object v11, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v11}, Landroidx/compose/ui/platform/DeviceRenderNode;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->x(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 15
    invoke-static/range {p11 .. p12}, Landroidx/compose/ui/graphics/TransformOrigin;->g(J)F

    move-result v5

    iget-object v6, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-interface {v9, v5}, Landroidx/compose/ui/platform/DeviceRenderNode;->y(F)V

    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    if-eqz p14, :cond_1

    .line 16
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    if-eq v1, v6, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->A(Z)V

    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    if-eqz p14, :cond_2

    .line 17
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    if-ne v1, v6, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->m(Z)V

    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move-object/from16 v6, p15

    .line 18
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->l(Landroidx/compose/ui/graphics/RenderEffect;)V

    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    iget-object v6, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 19
    invoke-interface {v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->e()F

    move-result v6

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 20
    invoke-interface {v9}, Landroidx/compose/ui/platform/DeviceRenderNode;->s()Z

    move-result v9

    iget-object v10, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 21
    invoke-interface {v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->I()F

    move-result v10

    move-object p1, v5

    move-object/from16 p2, p13

    move p3, v6

    move/from16 p4, v9

    move/from16 p5, v10

    move-object/from16 p6, p20

    move-object/from16 p7, p21

    .line 22
    invoke-virtual/range {p1 .. p7}, Landroidx/compose/ui/platform/OutlineResolver;->g(Landroidx/compose/ui/graphics/Shape;FZFLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Z

    move-result v1

    iget-object v3, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-object v4, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 23
    invoke-virtual {v4}, Landroidx/compose/ui/platform/OutlineResolver;->c()Landroid/graphics/Outline;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/compose/ui/platform/DeviceRenderNode;->z(Landroid/graphics/Outline;)V

    iget-object v3, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 24
    invoke-interface {v3}, Landroidx/compose/ui/platform/DeviceRenderNode;->s()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/OutlineResolver;->d()Z

    move-result v3

    if-nez v3, :cond_3

    move v7, v8

    :cond_3
    if-ne v2, v7, :cond_5

    if-eqz v7, :cond_4

    if-eqz v1, :cond_4

    goto :goto_3

    .line 25
    :cond_4
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->l()V

    goto :goto_4

    .line 26
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidate()V

    :goto_4
    iget-boolean v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 27
    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->I()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Le8/a;

    if-eqz v1, :cond_6

    .line 28
    invoke-interface {v1}, Le8/a;->invoke()Ljava/lang/Object;

    :cond_6
    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/platform/LayerMatrixCache;->c()V

    return-void
.end method

.method public g(J)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 11
    .line 12
    .line 13
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->D()Z

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    cmpg-float p2, p1, v0

    .line 21
    .line 22
    if-gtz p2, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getWidth()I

    .line 28
    move-result p2

    .line 29
    int-to-float p2, p2

    .line 30
    .line 31
    cmpg-float p2, v0, p2

    .line 32
    .line 33
    if-gez p2, :cond_0

    .line 34
    .line 35
    cmpg-float p1, p1, v1

    .line 36
    .line 37
    if-gtz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHeight()I

    .line 43
    move-result p1

    .line 44
    int-to-float p1, p1

    .line 45
    .line 46
    cmpg-float p1, v1, p1

    .line 47
    .line 48
    if-gez p1, :cond_0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v3, 0x0

    .line 51
    :goto_0
    return v3

    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->s()Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/OutlineResolver;->e(J)Z

    .line 65
    move-result p1

    .line 66
    return p1

    .line 67
    :cond_2
    return v3
.end method

.method public h(J)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->c()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->E()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 20
    move-result p1

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    if-eq v1, p1, :cond_1

    .line 25
    .line 26
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 27
    sub-int/2addr v2, v0

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->v(I)V

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 33
    sub-int/2addr p1, v1

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->q(I)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->l()V

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->c()V

    .line 45
    :cond_1
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->r()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->k(Z)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->s()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->d()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->b()Landroidx/compose/ui/graphics/Path;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    .line 42
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Le8/l;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 47
    .line 48
    iget-object v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v3, v0, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->G(Landroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/Path;Le8/l;)V

    .line 52
    :cond_2
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->k(Z)V

    .line 18
    :cond_0
    return-void
.end method
