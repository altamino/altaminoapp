.class public final Lcoil/compose/e$b;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/e;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V
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
    value = "SMAP\nInspectableValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1\n+ 2 ContentPainterModifier.kt\ncoil/compose/ContentPainterModifier\n*L\n1#1,170:1\n40#2,7:171\n*E\n"
.end annotation


# instance fields
.field final synthetic $alignment$inlined:Landroidx/compose/ui/Alignment;

.field final synthetic $alpha$inlined:F

.field final synthetic $colorFilter$inlined:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic $contentScale$inlined:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic $painter$inlined:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lcoil/compose/e$b;->$painter$inlined:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p2, p0, Lcoil/compose/e$b;->$alignment$inlined:Landroidx/compose/ui/Alignment;

    iput-object p3, p0, Lcoil/compose/e$b;->$contentScale$inlined:Landroidx/compose/ui/layout/ContentScale;

    iput p4, p0, Lcoil/compose/e$b;->$alpha$inlined:F

    iput-object p5, p0, Lcoil/compose/e$b;->$colorFilter$inlined:Landroidx/compose/ui/graphics/ColorFilter;

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
    const-string v0, "content"

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
    .line 17
    const-string/jumbo v1, "painter"

    .line 18
    .line 19
    iget-object v2, p0, Lcoil/compose/e$b;->$painter$inlined:Landroidx/compose/ui/graphics/painter/Painter;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "alignment"

    .line 29
    .line 30
    iget-object v2, p0, Lcoil/compose/e$b;->$alignment$inlined:Landroidx/compose/ui/Alignment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "contentScale"

    .line 40
    .line 41
    iget-object v2, p0, Lcoil/compose/e$b;->$contentScale$inlined:Landroidx/compose/ui/layout/ContentScale;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget v1, p0, Lcoil/compose/e$b;->$alpha$inlined:F

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    const-string v2, "alpha"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    const-string v0, "colorFilter"

    .line 66
    .line 67
    iget-object v1, p0, Lcoil/compose/e$b;->$colorFilter$inlined:Landroidx/compose/ui/graphics/ColorFilter;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

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
    invoke-virtual {p0, p1}, Lcoil/compose/e$b;->a(Landroidx/compose/ui/platform/InspectorInfo;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
