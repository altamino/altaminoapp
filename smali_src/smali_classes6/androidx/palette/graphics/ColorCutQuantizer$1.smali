.class final Landroidx/palette/graphics/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroidx/palette/graphics/ColorCutQuantizer$Vbox;Landroidx/palette/graphics/ColorCutQuantizer$Vbox;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->g()I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->g()I

    .line 8
    move-result p1

    .line 9
    sub-int/2addr p2, p1

    .line 10
    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 3
    .line 4
    check-cast p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/palette/graphics/ColorCutQuantizer$1;->a(Landroidx/palette/graphics/ColorCutQuantizer$Vbox;Landroidx/palette/graphics/ColorCutQuantizer$Vbox;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
