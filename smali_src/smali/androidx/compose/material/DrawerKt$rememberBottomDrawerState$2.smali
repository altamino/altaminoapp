.class final Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt;->n(Landroidx/compose/material/BottomDrawerValue;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroidx/compose/material/BottomDrawerState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $confirmStateChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $initialValue:Landroidx/compose/material/BottomDrawerValue;


# direct methods
.method constructor <init>(Landroidx/compose/material/BottomDrawerValue;Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2;->$initialValue:Landroidx/compose/material/BottomDrawerValue;

    iput-object p2, p0, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2;->$confirmStateChange:Le8/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/compose/material/BottomDrawerState;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/BottomDrawerState;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2;->$initialValue:Landroidx/compose/material/BottomDrawerValue;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2;->$confirmStateChange:Le8/l;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/BottomDrawerState;-><init>(Landroidx/compose/material/BottomDrawerValue;Le8/l;)V

    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2;->b()Landroidx/compose/material/BottomDrawerState;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
