.class final Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionManager;->z()Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/focus/FocusState;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/selection/SelectionManager;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/focus/FocusState;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "focusState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->a()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->y()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->I()V

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->a()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->T(Z)V

    .line 34
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;->a(Landroidx/compose/ui/focus/FocusState;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
