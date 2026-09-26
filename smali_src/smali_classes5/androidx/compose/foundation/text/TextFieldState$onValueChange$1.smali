.class final Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldState;-><init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/TextFieldState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->this$0:Landroidx/compose/foundation/text/TextFieldState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->this$0:Landroidx/compose/foundation/text/TextFieldState;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextFieldState;->q()Landroidx/compose/foundation/text/TextDelegate;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextDelegate;->k()Landroidx/compose/ui/text/AnnotatedString;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->this$0:Landroidx/compose/foundation/text/TextFieldState;

    .line 32
    .line 33
    sget-object v1, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/TextFieldState;->r(Landroidx/compose/foundation/text/HandleState;)V

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->this$0:Landroidx/compose/foundation/text/TextFieldState;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroidx/compose/foundation/text/TextFieldState;->b(Landroidx/compose/foundation/text/TextFieldState;)Le8/l;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->this$0:Landroidx/compose/foundation/text/TextFieldState;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->k()Landroidx/compose/runtime/RecomposeScope;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Landroidx/compose/runtime/RecomposeScope;->invalidate()V

    .line 55
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->a(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
