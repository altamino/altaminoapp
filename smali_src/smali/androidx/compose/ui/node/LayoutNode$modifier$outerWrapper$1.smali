.class final Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->d(Landroidx/compose/ui/Modifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/node/LayoutNodeWrapper;",
        "Landroidx/compose/ui/node/LayoutNodeWrapper;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1687:1\n728#2,2:1688\n1#3:1690\n*S KotlinDebug\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1\n*L\n701#1:1688,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 2
    .param p1    # Landroidx/compose/ui/Modifier$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "mod"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "toWrap"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    instance-of v0, p1, Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    move-object v0, p1

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/RemeasurementModifier;->q0(Landroidx/compose/ui/layout/Remeasurement;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p2, p1}, Landroidx/compose/ui/node/EntityList;->i([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 30
    .line 31
    instance-of v0, p1, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->q0()Landroidx/compose/runtime/collection/MutableVector;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 47
    .line 48
    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/layout/LayoutModifier;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 53
    move-object v1, p1

    .line 54
    .line 55
    check-cast v1, Landroidx/compose/ui/layout/LayoutModifier;

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p2, v1}, Landroidx/compose/ui/node/LayoutNode;->w(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/LayoutModifier;)Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    new-instance v0, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p2, v1}, Landroidx/compose/ui/node/ModifiedLayoutNode;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/LayoutModifier;)V

    .line 67
    :cond_2
    move-object p2, v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroidx/compose/ui/node/ModifiedLayoutNode;->S1()V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p2, p1}, Landroidx/compose/ui/node/EntityList;->h([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 78
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier$Element;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->a(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
