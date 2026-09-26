.class final Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->u()Landroidx/compose/runtime/ScopeUpdateScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/runtime/Applier<",
        "*>;",
        "Landroidx/compose/runtime/SlotWriter;",
        "Landroidx/compose/runtime/RememberManager;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $it:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/runtime/Composition;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Le8/l;Landroidx/compose/runtime/ComposerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/runtime/Composition;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/ComposerImpl;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;->$it:Le8/l;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/RememberManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "<anonymous parameter 1>"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "<anonymous parameter 2>"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;->$it:Le8/l;

    .line 18
    .line 19
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->C0()Landroidx/compose/runtime/ControlledComposition;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Applier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/SlotWriter;

    .line 5
    .line 6
    check-cast p3, Landroidx/compose/runtime/RememberManager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;->a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 10
    .line 11
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 12
    return-object p1
.end method
