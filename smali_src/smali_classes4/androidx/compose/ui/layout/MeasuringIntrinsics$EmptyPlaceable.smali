.class final Landroidx/compose/ui/layout/MeasuringIntrinsics$EmptyPlaceable;
.super Landroidx/compose/ui/layout/Placeable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/MeasuringIntrinsics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyPlaceable"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 7
    move-result-wide p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->T0(J)V

    .line 11
    return-void
.end method


# virtual methods
.method protected R0(JFLe8/l;)V
    .locals 0
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c0(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/AlignmentLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "alignmentLine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p1, -0x80000000

    return p1
.end method
