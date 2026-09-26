.class final Landroidx/navigation/NavController$popBackStackInternal$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavController;->S(IZZ)Z
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
.field final synthetic $popped:Lkotlin/jvm/internal/k0;

.field final synthetic $receivedPop:Lkotlin/jvm/internal/k0;

.field final synthetic $saveState:Z

.field final synthetic $savedState:Lkotlin/collections/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/k<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/k0;Lkotlin/jvm/internal/k0;Landroidx/navigation/NavController;ZLkotlin/collections/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/k0;",
            "Lkotlin/jvm/internal/k0;",
            "Landroidx/navigation/NavController;",
            "Z",
            "Lkotlin/collections/k<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/NavController$popBackStackInternal$2;->$receivedPop:Lkotlin/jvm/internal/k0;

    iput-object p2, p0, Landroidx/navigation/NavController$popBackStackInternal$2;->$popped:Lkotlin/jvm/internal/k0;

    iput-object p3, p0, Landroidx/navigation/NavController$popBackStackInternal$2;->this$0:Landroidx/navigation/NavController;

    iput-boolean p4, p0, Landroidx/navigation/NavController$popBackStackInternal$2;->$saveState:Z

    iput-object p5, p0, Landroidx/navigation/NavController$popBackStackInternal$2;->$savedState:Lkotlin/collections/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/navigation/NavBackStackEntry;)V
    .locals 3
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
    iget-object v0, p0, Landroidx/navigation/NavController$popBackStackInternal$2;->$receivedPop:Lkotlin/jvm/internal/k0;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/navigation/NavController$popBackStackInternal$2;->$popped:Lkotlin/jvm/internal/k0;

    .line 13
    .line 14
    iput-boolean v1, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/navigation/NavController$popBackStackInternal$2;->this$0:Landroidx/navigation/NavController;

    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/navigation/NavController$popBackStackInternal$2;->$saveState:Z

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/navigation/NavController$popBackStackInternal$2;->$savedState:Lkotlin/collections/k;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1, v1, v2}, Landroidx/navigation/NavController;->m(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/k;)V

    .line 24
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
    invoke-virtual {p0, p1}, Landroidx/navigation/NavController$popBackStackInternal$2;->a(Landroidx/navigation/NavBackStackEntry;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
