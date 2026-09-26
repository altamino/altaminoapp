.class public final Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/draw/PainterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    value = "SMAP\nInspectableValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1\n+ 2 PainterModifier.kt\nandroidx/compose/ui/draw/PainterModifierKt\n*L\n1#1,170:1\n73#2,8:171\n*E\n"
.end annotation


# instance fields
.field final synthetic $alignment$inlined:Landroidx/compose/ui/Alignment;

.field final synthetic $alpha$inlined:F

.field final synthetic $colorFilter$inlined:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic $contentScale$inlined:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic $painter$inlined:Landroidx/compose/ui/graphics/painter/Painter;

.field final synthetic $sizeToIntrinsics$inlined:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$painter$inlined:Landroidx/compose/ui/graphics/painter/Painter;

    iput-boolean p2, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$sizeToIntrinsics$inlined:Z

    iput-object p3, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$alignment$inlined:Landroidx/compose/ui/Alignment;

    iput-object p4, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$contentScale$inlined:Landroidx/compose/ui/layout/ContentScale;

    iput p5, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$alpha$inlined:F

    iput-object p6, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$colorFilter$inlined:Landroidx/compose/ui/graphics/ColorFilter;

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
    const-string v0, "paint"

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
    const-string v1, "painter"

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$painter$inlined:Landroidx/compose/ui/graphics/painter/Painter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-boolean v1, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$sizeToIntrinsics$inlined:Z

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    const-string v2, "sizeToIntrinsics"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "alignment"

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$alignment$inlined:Landroidx/compose/ui/Alignment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const-string v1, "contentScale"

    .line 54
    .line 55
    iget-object v2, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$contentScale$inlined:Landroidx/compose/ui/layout/ContentScale;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iget v1, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$alpha$inlined:F

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "alpha"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    const-string v0, "colorFilter"

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$colorFilter$inlined:Landroidx/compose/ui/graphics/ColorFilter;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
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
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->a(Landroidx/compose/ui/platform/InspectorInfo;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
