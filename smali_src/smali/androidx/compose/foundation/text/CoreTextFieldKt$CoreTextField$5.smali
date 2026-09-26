.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


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
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty1:I

.field final synthetic $bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field final synthetic $cursorModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $decorationBox:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $drawModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $magnifierModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field final synthetic $maxLines:I

.field final synthetic $onPositionedModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onTextLayout:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $readOnly:Z

.field final synthetic $scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

.field final synthetic $showHandleAndMagnifier:Z

.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;

.field final synthetic $textStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(Le8/q;IILandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLe8/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;II",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/TextFieldScrollerPosition;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
            "Landroidx/compose/foundation/text/TextFieldState;",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "ZZ",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$decorationBox:Le8/q;

    move v1, p2

    iput v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$$dirty1:I

    move v1, p3

    iput v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$maxLines:I

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$cursorModifier:Landroidx/compose/ui/Modifier;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$drawModifier:Landroidx/compose/ui/Modifier;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$onPositionedModifier:Landroidx/compose/ui/Modifier;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$magnifierModifier:Landroidx/compose/ui/Modifier;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$state:Landroidx/compose/foundation/text/TextFieldState;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move/from16 v1, p15

    iput-boolean v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$showHandleAndMagnifier:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$readOnly:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$onTextLayout:Le8/l;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    and-int/lit8 v2, p2, 0xb

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    if-ne v2, v3, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 20
    move-object v1, v0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$decorationBox:Le8/q;

    .line 24
    .line 25
    new-instance v15, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;

    .line 26
    .line 27
    iget v4, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$maxLines:I

    .line 28
    .line 29
    iget-object v5, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    .line 30
    .line 31
    iget-object v6, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 32
    .line 33
    iget-object v7, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 34
    .line 35
    iget-object v8, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 36
    .line 37
    iget-object v9, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$cursorModifier:Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    iget-object v10, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$drawModifier:Landroidx/compose/ui/Modifier;

    .line 40
    .line 41
    iget-object v11, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$onPositionedModifier:Landroidx/compose/ui/Modifier;

    .line 42
    .line 43
    iget-object v12, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$magnifierModifier:Landroidx/compose/ui/Modifier;

    .line 44
    .line 45
    iget-object v13, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 46
    .line 47
    iget-object v14, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 50
    .line 51
    move-object/from16 p2, v2

    .line 52
    .line 53
    iget-boolean v2, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$showHandleAndMagnifier:Z

    .line 54
    .line 55
    iget-boolean v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$readOnly:Z

    .line 56
    .line 57
    move/from16 v17, v1

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$onTextLayout:Le8/l;

    .line 60
    .line 61
    move-object/from16 v16, v3

    .line 62
    move-object v3, v15

    .line 63
    move-object v0, v15

    .line 64
    .line 65
    move-object/from16 v15, v16

    .line 66
    .line 67
    move/from16 v16, v2

    .line 68
    .line 69
    move-object/from16 v18, v1

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v3 .. v18}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;-><init>(ILandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLe8/l;)V

    .line 73
    .line 74
    .line 75
    const v1, 0xc5d5e1e

    .line 76
    const/4 v2, 0x1

    .line 77
    .line 78
    move-object/from16 v3, p1

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    move-object/from16 v1, p0

    .line 85
    .line 86
    iget v2, v1, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->$$dirty1:I

    .line 87
    .line 88
    shr-int/lit8 v2, v2, 0x9

    .line 89
    .line 90
    and-int/lit8 v2, v2, 0x70

    .line 91
    .line 92
    or-int/lit8 v2, v2, 0x6

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    move-object/from16 v4, p2

    .line 99
    .line 100
    .line 101
    invoke-interface {v4, v0, v3, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
