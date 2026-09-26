.class public final Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroidx/navigation/NavBackStackEntry;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraphViewModelLazy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraphViewModelLazy.kt\nandroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2\n*L\n1#1,220:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $navGraphId:I

.field final synthetic $this_navGraphViewModels:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2;->$this_navGraphViewModels:Landroidx/fragment/app/Fragment;

    iput p2, p0, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2;->$navGraphId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/navigation/NavBackStackEntry;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2;->$this_navGraphViewModels:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->a(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v1, p0, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2;->$navGraphId:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->w(I)Landroidx/navigation/NavBackStackEntry;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2;->b()Landroidx/navigation/NavBackStackEntry;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
