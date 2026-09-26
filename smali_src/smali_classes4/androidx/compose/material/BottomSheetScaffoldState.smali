.class public final Landroidx/compose/material/BottomSheetScaffoldState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation


# instance fields
.field private final bottomSheetState:Landroidx/compose/material/BottomSheetState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final drawerState:Landroidx/compose/material/DrawerState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final snackbarHostState:Landroidx/compose/material/SnackbarHostState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/material/DrawerState;Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;)V
    .locals 1
    .param p1    # Landroidx/compose/material/DrawerState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/BottomSheetState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/material/SnackbarHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "drawerState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "bottomSheetState"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "snackbarHostState"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/material/BottomSheetScaffoldState;->drawerState:Landroidx/compose/material/DrawerState;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/material/BottomSheetScaffoldState;->bottomSheetState:Landroidx/compose/material/BottomSheetState;

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/compose/material/BottomSheetScaffoldState;->snackbarHostState:Landroidx/compose/material/SnackbarHostState;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/material/BottomSheetState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/BottomSheetScaffoldState;->bottomSheetState:Landroidx/compose/material/BottomSheetState;

    return-object v0
.end method

.method public final b()Landroidx/compose/material/DrawerState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/BottomSheetScaffoldState;->drawerState:Landroidx/compose/material/DrawerState;

    return-object v0
.end method

.method public final c()Landroidx/compose/material/SnackbarHostState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/BottomSheetScaffoldState;->snackbarHostState:Landroidx/compose/material/SnackbarHostState;

    return-object v0
.end method
