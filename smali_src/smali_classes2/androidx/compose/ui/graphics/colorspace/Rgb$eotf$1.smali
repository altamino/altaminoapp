.class final Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLe8/l;Le8/l;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/graphics/colorspace/Rgb;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;->this$0:Landroidx/compose/ui/graphics/colorspace/Rgb;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(D)Ljava/lang/Double;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;->this$0:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->m()Le8/l;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;->this$0:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->k(Landroidx/compose/ui/graphics/colorspace/Rgb;)F

    .line 12
    move-result v1

    .line 13
    float-to-double v4, v1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;->this$0:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->j(Landroidx/compose/ui/graphics/colorspace/Rgb;)F

    .line 19
    move-result v1

    .line 20
    float-to-double v6, v1

    .line 21
    move-wide v2, p1

    .line 22
    .line 23
    .line 24
    invoke-static/range {v2 .. v7}, Lj8/m;->l(DDD)D

    .line 25
    move-result-wide p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Ljava/lang/Double;

    .line 36
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;->a(D)Ljava/lang/Double;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
