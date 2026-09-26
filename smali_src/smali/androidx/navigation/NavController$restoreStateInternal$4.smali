.class final Landroidx/navigation/NavController$restoreStateInternal$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavController;->Z(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/navigation/NavBackStackEntry;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $args:Landroid/os/Bundle;

.field final synthetic $entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastNavigatedIndex:Lkotlin/jvm/internal/n0;

.field final synthetic $navigated:Lkotlin/jvm/internal/k0;

.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/k0;Ljava/util/List;Lkotlin/jvm/internal/n0;Landroidx/navigation/NavController;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/k0;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Lkotlin/jvm/internal/n0;",
            "Landroidx/navigation/NavController;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->$navigated:Lkotlin/jvm/internal/k0;

    iput-object p2, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->$entries:Ljava/util/List;

    iput-object p3, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->$lastNavigatedIndex:Lkotlin/jvm/internal/n0;

    iput-object p4, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->this$0:Landroidx/navigation/NavController;

    iput-object p5, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->$args:Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/navigation/NavBackStackEntry;)V
    .locals 4
    .param p1    # Landroidx/navigation/NavBackStackEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "entry"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->$navigated:Lkotlin/jvm/internal/k0;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->$entries:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 16
    move-result v0

    .line 17
    const/4 v2, -0x1

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->$entries:Ljava/util/List;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->$lastNavigatedIndex:Lkotlin/jvm/internal/n0;

    .line 24
    .line 25
    iget v3, v3, Lkotlin/jvm/internal/n0;->element:I

    .line 26
    add-int/2addr v0, v1

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->$lastNavigatedIndex:Lkotlin/jvm/internal/n0;

    .line 33
    .line 34
    iput v0, v2, Lkotlin/jvm/internal/n0;->element:I

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->this$0:Landroidx/navigation/NavController;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/navigation/NavController$restoreStateInternal$4;->$args:Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2, v3, p1, v1}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/navigation/NavController$restoreStateInternal$4;->a(Landroidx/navigation/NavBackStackEntry;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
