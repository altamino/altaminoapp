.class final Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/ColorSpaces;
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


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$1;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$1;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(D)Ljava/lang/Double;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide v10, 0x4003333333333333L    # 2.4

    .line 26
    move-wide v0, p1

    .line 27
    .line 28
    .line 29
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->a(DDDDDD)D

    .line 30
    move-result-wide p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 34
    move-result-object p1

    .line 35
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
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$1;->a(D)Ljava/lang/Double;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
