.class final Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Le8/a;Landroidx/compose/ui/window/DialogProperties;Le8/p;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $dialog:Landroidx/compose/ui/window/DialogWrapper;

.field final synthetic $layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field final synthetic $onDismissRequest:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $properties:Landroidx/compose/ui/window/DialogProperties;


# direct methods
.method constructor <init>(Landroidx/compose/ui/window/DialogWrapper;Le8/a;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/window/DialogWrapper;",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;->$dialog:Landroidx/compose/ui/window/DialogWrapper;

    iput-object p2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;->$onDismissRequest:Le8/a;

    iput-object p3, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;->$properties:Landroidx/compose/ui/window/DialogProperties;

    iput-object p4, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;->$dialog:Landroidx/compose/ui/window/DialogWrapper;

    iget-object v1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;->$onDismissRequest:Le8/a;

    iget-object v2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;->$properties:Landroidx/compose/ui/window/DialogProperties;

    iget-object v3, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/ui/window/DialogWrapper;->f(Le8/a;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    return-void
.end method
