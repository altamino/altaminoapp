.class final Landroidx/compose/ui/node/LayoutNode$layoutChildren$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$layoutChildren$1\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,1687:1\n460#2,11:1688\n460#2,11:1699\n*S KotlinDebug\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$layoutChildren$1\n*L\n956#1:1688,11\n969#1:1699,11\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$layoutChildren$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode$layoutChildren$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$layoutChildren$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->y(Landroidx/compose/ui/node/LayoutNode;I)V

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$layoutChildren$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    move-result v2

    const v3, 0x7fffffff

    if-lez v2, :cond_2

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    move-result-object v0

    move v4, v1

    .line 6
    :cond_0
    aget-object v5, v0, v4

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 7
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->u0()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/node/LayoutNode;->A(Landroidx/compose/ui/node/LayoutNode;I)V

    .line 8
    invoke-static {v5, v3}, Landroidx/compose/ui/node/LayoutNode;->z(Landroidx/compose/ui/node/LayoutNode;I)V

    .line 9
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->r(Z)V

    .line 10
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->l0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v6, v7, :cond_1

    .line 11
    sget-object v6, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v5, v6}, Landroidx/compose/ui/node/LayoutNode;->q1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_0

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$layoutChildren$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->c0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->y1()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->d()V

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$layoutChildren$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode$layoutChildren$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    move-result v4

    if-lez v4, :cond_5

    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    move-result-object v0

    .line 16
    :cond_3
    aget-object v5, v0, v1

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 17
    invoke-static {v5}, Landroidx/compose/ui/node/LayoutNode;->s(Landroidx/compose/ui/node/LayoutNode;)I

    move-result v6

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->u0()I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 18
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNode;->v(Landroidx/compose/ui/node/LayoutNode;)V

    .line 19
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->H0()V

    .line 20
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->u0()I

    move-result v6

    if-ne v6, v3, :cond_4

    .line 21
    invoke-static {v5}, Landroidx/compose/ui/node/LayoutNode;->u(Landroidx/compose/ui/node/LayoutNode;)V

    .line 22
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    move-result-object v6

    .line 23
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->h()Z

    move-result v5

    .line 24
    invoke-virtual {v6, v5}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->o(Z)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_3

    :cond_5
    return-void
.end method
