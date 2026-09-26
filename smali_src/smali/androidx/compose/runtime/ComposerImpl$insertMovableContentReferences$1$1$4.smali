.class final Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->G0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/runtime/Applier<",
        "*>;",
        "Landroidx/compose/runtime/SlotWriter;",
        "Landroidx/compose/runtime/RememberManager;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4\n+ 2 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4249:1\n32#2,6:4250\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4\n*L\n2979#1:4250,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $from:Landroidx/compose/runtime/MovableContentStateReference;

.field final synthetic $to:Landroidx/compose/runtime/MovableContentStateReference;

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4;->$from:Landroidx/compose/runtime/MovableContentStateReference;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 5
    .param p1    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/RememberManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "slots"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "<anonymous parameter 2>"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/compose/runtime/ComposerImpl;->X(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4;->$from:Landroidx/compose/runtime/MovableContentStateReference;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/CompositionContext;->l(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentState;->a()Landroidx/compose/runtime/SlotTable;

    .line 33
    move-result-object p1

    .line 34
    const/4 p3, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3, p1, p3}, Landroidx/compose/runtime/SlotWriter;->r0(ILandroidx/compose/runtime/SlotTable;I)Ljava/util/List;

    .line 38
    move-result-object p1

    .line 39
    move-object v0, p1

    .line 40
    .line 41
    check-cast v0, Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    move-result v0

    .line 46
    xor-int/2addr p3, v0

    .line 47
    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Landroidx/compose/runtime/MovableContentStateReference;->b()Landroidx/compose/runtime/ControlledComposition;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    check-cast p3, Landroidx/compose/runtime/CompositionImpl;

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x0

    .line 62
    move v2, v1

    .line 63
    .line 64
    :goto_0
    if-ge v2, v0, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    check-cast v3, Landroidx/compose/runtime/Anchor;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v3, v1}, Landroidx/compose/runtime/SlotWriter;->Q0(Landroidx/compose/runtime/Anchor;I)Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    instance-of v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 77
    .line 78
    if-eqz v4, :cond_0

    .line 79
    .line 80
    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    const/4 v3, 0x0

    .line 83
    .line 84
    :goto_1
    if-eqz v3, :cond_1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p3}, Landroidx/compose/runtime/RecomposeScopeImpl;->g(Landroidx/compose/runtime/CompositionImpl;)V

    .line 88
    .line 89
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    return-void

    .line 92
    .line 93
    :cond_3
    const-string p1, "Could not resolve state for movable content"

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 97
    .line 98
    new-instance p1, Lw7/i;

    .line 99
    .line 100
    .line 101
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 102
    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Applier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/SlotWriter;

    .line 5
    .line 6
    check-cast p3, Landroidx/compose/runtime/RememberManager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$4;->a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 10
    .line 11
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 12
    return-object p1
.end method
