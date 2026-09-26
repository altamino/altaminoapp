.class final Landroidx/compose/ui/graphics/colorspace/Rgb$4;
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

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$4;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(D)Ljava/lang/Double;
    .locals 18
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb$4;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a()D

    .line 8
    move-result-wide v4

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb$4;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b()D

    .line 14
    move-result-wide v6

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb$4;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c()D

    .line 20
    move-result-wide v8

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb$4;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d()D

    .line 26
    move-result-wide v10

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb$4;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e()D

    .line 32
    move-result-wide v12

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb$4;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f()D

    .line 38
    move-result-wide v14

    .line 39
    .line 40
    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb$4;->$function:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->g()D

    .line 44
    move-result-wide v16

    .line 45
    .line 46
    move-wide/from16 v2, p1

    .line 47
    .line 48
    .line 49
    invoke-static/range {v2 .. v17}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->q(DDDDDDDD)D

    .line 50
    move-result-wide v1

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 54
    move-result-object v1

    .line 55
    return-object v1
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
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$4;->a(D)Ljava/lang/Double;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
