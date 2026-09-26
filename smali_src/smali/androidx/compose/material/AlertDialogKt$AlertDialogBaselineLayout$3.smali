.class final Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $text:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_AlertDialogBaselineLayout:Landroidx/compose/foundation/layout/ColumnScope;

.field final synthetic $title:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/ColumnScope;Le8/p;Le8/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$3;->$this_AlertDialogBaselineLayout:Landroidx/compose/foundation/layout/ColumnScope;

    iput-object p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$3;->$title:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$3;->$text:Le8/p;

    iput p4, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$3;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$3;->$this_AlertDialogBaselineLayout:Landroidx/compose/foundation/layout/ColumnScope;

    iget-object v0, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$3;->$title:Le8/p;

    iget-object v1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$3;->$text:Le8/p;

    iget v2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$3;->$$changed:I

    or-int/lit8 v2, v2, 0x1

    invoke-static {p2, v0, v1, p1, v2}, Landroidx/compose/material/AlertDialogKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$3;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
