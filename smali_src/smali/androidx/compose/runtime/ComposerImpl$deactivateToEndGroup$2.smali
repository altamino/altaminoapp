.class final Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $group:I

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->$group:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 6
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/compose/runtime/RememberObserver;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->Y(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget v4, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->$group:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotReader;->N(I)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 21
    .line 22
    new-instance v4, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2$1;

    .line 23
    .line 24
    iget v5, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->$group:I

    .line 25
    .line 26
    .line 27
    invoke-direct {v4, p2, v5, p1}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2$1;-><init>(Ljava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2, v4, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->q1(Landroidx/compose/runtime/ComposerImpl;ZLe8/q;ILjava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    instance-of v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    move-object v0, p2

    .line 37
    .line 38
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->l()Landroidx/compose/runtime/CompositionImpl;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/CompositionImpl;->H(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->x()V

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->Y(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget v4, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->$group:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotReader;->N(I)V

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 64
    .line 65
    new-instance v4, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2$2;

    .line 66
    .line 67
    iget v5, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->$group:I

    .line 68
    .line 69
    .line 70
    invoke-direct {v4, p2, v5, p1}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2$2;-><init>(Ljava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2, v4, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->q1(Landroidx/compose/runtime/ComposerImpl;ZLe8/q;ILjava/lang/Object;)V

    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->a(ILjava/lang/Object;)V

    .line 10
    .line 11
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 12
    return-object p1
.end method
