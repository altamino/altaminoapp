.class final Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $drawerState:Landroidx/compose/material/BottomDrawerState;

.field final synthetic $scope:Lkotlinx/coroutines/o0;


# direct methods
.method constructor <init>(Landroidx/compose/material/BottomDrawerState;Lkotlinx/coroutines/o0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    iput-object p2, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1;->$scope:Lkotlinx/coroutines/o0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Boolean;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/material/SwipeableState;->o()Le8/l;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1;->$scope:Lkotlinx/coroutines/o0;

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    new-instance v4, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1$1;

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    .line 29
    const/4 v5, 0x0

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, v0, v5}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1$1;-><init>(Landroidx/compose/material/BottomDrawerState;Lkotlin/coroutines/d;)V

    .line 33
    const/4 v5, 0x3

    .line 34
    const/4 v6, 0x0

    .line 35
    .line 36
    .line 37
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 38
    .line 39
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4$1;->b()Ljava/lang/Boolean;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
