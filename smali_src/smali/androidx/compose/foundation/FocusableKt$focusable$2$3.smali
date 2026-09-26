.class final Landroidx/compose/foundation/FocusableKt$focusable$2$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/FocusableKt$focusable$2;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $focusRequester:Landroidx/compose/ui/focus/FocusRequester;

.field final synthetic $isFocused$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/focus/FocusRequester;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$3;->$isFocused$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$3;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$semantics"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$3;->$isFocused$delegate:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/foundation/FocusableKt$focusable$2;->c(Landroidx/compose/runtime/MutableState;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->I(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/foundation/FocusableKt$focusable$2$3$1;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$3;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$3;->$isFocused$delegate:Landroidx/compose/runtime/MutableState;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/FocusableKt$focusable$2$3$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;)V

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->z(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Le8/a;ILjava/lang/Object;)V

    .line 29
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableKt$focusable$2$3;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
