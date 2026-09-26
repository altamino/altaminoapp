.class final Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ExposedDropdownMenuKt;->a(ZLe8/l;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $expanded:Z

.field final synthetic $onExpandedChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/l;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1;->$onExpandedChange:Le8/l;

    iput-boolean p2, p0, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1;->$expanded:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1;->$onExpandedChange:Le8/l;

    iget-boolean v1, p0, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1;->$expanded:Z

    xor-int/lit8 v1, v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
