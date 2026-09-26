.class final Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJ)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $ambientColor:J

.field final synthetic $clip:Z

.field final synthetic $elevation:F

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $spotColor:J


# direct methods
.method constructor <init>(FLandroidx/compose/ui/graphics/Shape;ZJJ)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->$elevation:F

    iput-object p2, p0, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-boolean p3, p0, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->$clip:Z

    iput-wide p4, p0, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->$ambientColor:J

    iput-wide p6, p0, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->$spotColor:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$graphicsLayer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->$elevation:F

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->A(F)V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->R(Landroidx/compose/ui/graphics/Shape;)V

    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->$clip:Z

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->y(Z)V

    .line 25
    .line 26
    iget-wide v0, p0, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->$ambientColor:J

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->h0(J)V

    .line 30
    .line 31
    iget-wide v0, p0, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->$spotColor:J

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->k0(J)V

    .line 35
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;->a(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
