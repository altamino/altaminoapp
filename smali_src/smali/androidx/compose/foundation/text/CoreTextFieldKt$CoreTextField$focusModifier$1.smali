.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/CoreTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Le8/l;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLe8/q;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/focus/FocusState;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/o0;

.field final synthetic $imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field final synthetic $offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;

.field final synthetic $textInputService:Landroidx/compose/ui/text/input/TextInputService;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/o0;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$textInputService:Landroidx/compose/ui/text/input/TextInputService;

    iput-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    iput-object p5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p6, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$coroutineScope:Lkotlinx/coroutines/o0;

    iput-object p7, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iput-object p8, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/focus/FocusState;)V
    .locals 12
    .param p1    # Landroidx/compose/ui/focus/FocusState;
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
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->d()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->a()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->a()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/TextFieldState;->s(Z)V

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt;->g(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->a()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 52
    move-result-object v5

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$coroutineScope:Lkotlinx/coroutines/o0;

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 59
    .line 60
    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 61
    .line 62
    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 63
    .line 64
    iget-object v6, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    .line 68
    new-instance v10, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1;

    .line 69
    const/4 v7, 0x0

    .line 70
    move-object v1, v10

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/d;)V

    .line 74
    const/4 v1, 0x3

    .line 75
    const/4 v11, 0x0

    .line 76
    move-object v6, v0

    .line 77
    move-object v7, v8

    .line 78
    move-object v8, v9

    .line 79
    move-object v9, v10

    .line 80
    move v10, v1

    .line 81
    .line 82
    .line 83
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->a()Z

    .line 87
    move-result p1

    .line 88
    .line 89
    if-nez p1, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 92
    const/4 v0, 0x1

    .line 93
    const/4 v1, 0x0

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v1, v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->q(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;ILjava/lang/Object;)V

    .line 97
    :cond_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->a(Landroidx/compose/ui/focus/FocusState;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
