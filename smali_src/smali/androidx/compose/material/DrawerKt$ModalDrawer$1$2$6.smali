.class final Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt$ModalDrawer$1;->a(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $drawerState:Landroidx/compose/material/DrawerState;

.field final synthetic $navigationMenu:Ljava/lang/String;

.field final synthetic $scope:Lkotlinx/coroutines/o0;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/compose/material/DrawerState;Lkotlinx/coroutines/o0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;->$navigationMenu:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;->$drawerState:Landroidx/compose/material/DrawerState;

    iput-object p3, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;->$scope:Lkotlinx/coroutines/o0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$semantics"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;->$navigationMenu:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->M(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;->$drawerState:Landroidx/compose/material/DrawerState;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/material/DrawerState;->f()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;->$drawerState:Landroidx/compose/material/DrawerState;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;->$scope:Lkotlinx/coroutines/o0;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;-><init>(Landroidx/compose/material/DrawerState;Lkotlinx/coroutines/o0;)V

    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->j(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Le8/a;ILjava/lang/Object;)V

    .line 33
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
