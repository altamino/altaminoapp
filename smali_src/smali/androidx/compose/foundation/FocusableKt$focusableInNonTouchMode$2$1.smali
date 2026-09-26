.class final Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $inputModeManager:Landroidx/compose/ui/input/InputModeManager;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/InputModeManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2$1;->$inputModeManager:Landroidx/compose/ui/input/InputModeManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/focus/FocusProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$focusProperties"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2$1;->$inputModeManager:Landroidx/compose/ui/input/InputModeManager;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/input/InputModeManager;->a()I

    .line 11
    move-result v0

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/ui/input/InputMode;->Companion:Landroidx/compose/ui/input/InputMode$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/compose/ui/input/InputMode$Companion;->b()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/compose/ui/input/InputMode;->f(II)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    xor-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusProperties;->g(Z)V

    .line 27
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/focus/FocusProperties;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2$1;->a(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
