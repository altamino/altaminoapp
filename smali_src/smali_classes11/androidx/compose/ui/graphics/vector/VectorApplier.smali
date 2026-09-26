.class public final Landroidx/compose/ui/graphics/vector/VectorApplier;
.super Landroidx/compose/runtime/AbstractApplier;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/runtime/AbstractApplier<",
        "Landroidx/compose/ui/graphics/vector/VNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorCompose.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorCompose.kt\nandroidx/compose/ui/graphics/vector/VectorApplier\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,126:1\n1#2:127\n*E\n"
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/vector/VNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/vector/VNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "root"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/compose/runtime/AbstractApplier;-><init>(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method private final m(Landroidx/compose/ui/graphics/vector/VNode;)Landroidx/compose/ui/graphics/vector/GroupComponent;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v0, "Cannot only insert VNode into Group"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1
.end method


# virtual methods
.method public b(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->a()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/ui/graphics/vector/VNode;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->m(Landroidx/compose/ui/graphics/vector/VNode;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/GroupComponent;->j(II)V

    .line 14
    return-void
.end method

.method public e(III)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->a()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/ui/graphics/vector/VNode;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->m(Landroidx/compose/ui/graphics/vector/VNode;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/graphics/vector/GroupComponent;->i(III)V

    .line 14
    return-void
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Landroidx/compose/ui/graphics/vector/VNode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorApplier;->o(ILandroidx/compose/ui/graphics/vector/VNode;)V

    .line 6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Landroidx/compose/ui/graphics/vector/VNode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorApplier;->n(ILandroidx/compose/ui/graphics/vector/VNode;)V

    .line 6
    return-void
.end method

.method protected k()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->j()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/ui/graphics/vector/VNode;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->m(Landroidx/compose/ui/graphics/vector/VNode;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->f()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->j(II)V

    .line 19
    return-void
.end method

.method public n(ILandroidx/compose/ui/graphics/vector/VNode;)V
    .locals 0
    .param p2    # Landroidx/compose/ui/graphics/vector/VNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "instance"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public o(ILandroidx/compose/ui/graphics/vector/VNode;)V
    .locals 1
    .param p2    # Landroidx/compose/ui/graphics/vector/VNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "instance"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->a()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/ui/graphics/vector/VNode;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorApplier;->m(Landroidx/compose/ui/graphics/vector/VNode;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/GroupComponent;->h(ILandroidx/compose/ui/graphics/vector/VNode;)V

    .line 19
    return-void
.end method
