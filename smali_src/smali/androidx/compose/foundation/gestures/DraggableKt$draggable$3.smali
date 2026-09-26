.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/q;Le8/q;Z)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/foundation/gestures/PointerAwareDraggableState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt$draggable$3\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,485:1\n36#2:486\n1057#3,6:487\n*S KotlinDebug\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt$draggable$3\n*L\n184#1:486\n184#1:487,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $state:Landroidx/compose/foundation/gestures/DraggableState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/DraggableState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;->$state:Landroidx/compose/foundation/gestures/DraggableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/PointerAwareDraggableState;
    .locals 2
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p2, 0x317cf1a2

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;->$state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 9
    .line 10
    .line 11
    const v0, 0x44faf204

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-ne v1, v0, :cond_1

    .line 33
    .line 34
    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/IgnorePointerDraggableState;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p2}, Landroidx/compose/foundation/gestures/IgnorePointerDraggableState;-><init>(Landroidx/compose/foundation/gestures/DraggableState;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 44
    .line 45
    check-cast v1, Landroidx/compose/foundation/gestures/IgnorePointerDraggableState;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 49
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
