.class final Landroidx/compose/ui/graphics/colorspace/Rgb$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V
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
.field final synthetic $function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$3;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(D)Ljava/lang/Double;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$3;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a()D

    .line 6
    move-result-wide v3

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$3;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b()D

    .line 12
    move-result-wide v5

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$3;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c()D

    .line 18
    move-result-wide v7

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$3;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d()D

    .line 24
    move-result-wide v9

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$3;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->g()D

    .line 30
    move-result-wide v11

    .line 31
    move-wide v1, p1

    .line 32
    .line 33
    .line 34
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->p(DDDDDD)D

    .line 35
    move-result-wide p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    move-result-object p1

    .line 40
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
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$3;->a(D)Ljava/lang/Double;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
