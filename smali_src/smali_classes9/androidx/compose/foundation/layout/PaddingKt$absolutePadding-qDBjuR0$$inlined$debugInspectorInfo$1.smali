.class public final Landroidx/compose/foundation/layout/PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInspectableValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1\n+ 2 Padding.kt\nandroidx/compose/foundation/layout/PaddingKt\n*L\n1#1,170:1\n179#2,6:171\n*E\n"
.end annotation


# instance fields
.field final synthetic $bottom$inlined:F

.field final synthetic $left$inlined:F

.field final synthetic $right$inlined:F

.field final synthetic $top$inlined:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1;->$left$inlined:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1;->$top$inlined:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1;->$right$inlined:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1;->$bottom$inlined:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/platform/InspectorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "absolutePadding"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1;->$left$inlined:F

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "left"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1;->$top$inlined:F

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-string v2, "top"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1;->$right$inlined:F

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    const-string v2, "right"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1;->$bottom$inlined:F

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    const-string v1, "bottom"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1;->a(Landroidx/compose/ui/platform/InspectorInfo;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
