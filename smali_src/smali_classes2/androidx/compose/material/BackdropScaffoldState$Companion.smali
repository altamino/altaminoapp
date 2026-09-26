.class public final Landroidx/compose/material/BackdropScaffoldState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material/BackdropScaffoldState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/BackdropScaffoldState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/material/SnackbarHostState;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/material/SnackbarHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/BackdropValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/material/SnackbarHostState;",
            ")",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material/BackdropScaffoldState;",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "confirmStateChange"

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
    sget-object v0, Landroidx/compose/material/BackdropScaffoldState$Companion$Saver$1;->INSTANCE:Landroidx/compose/material/BackdropScaffoldState$Companion$Saver$1;

    .line 18
    .line 19
    new-instance v1, Landroidx/compose/material/BackdropScaffoldState$Companion$Saver$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/material/BackdropScaffoldState$Companion$Saver$2;-><init>(Landroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/material/SnackbarHostState;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->a(Le8/p;Le8/l;)Landroidx/compose/runtime/saveable/Saver;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
