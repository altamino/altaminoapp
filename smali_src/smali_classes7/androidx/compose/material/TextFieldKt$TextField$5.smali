.class final Landroidx/compose/material/TextFieldKt$TextField$5;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Le8/l;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Le8/p;Le8/p;Le8/p;Le8/p;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Le8/p<",
        "-",
        "Landroidx/compose/runtime/Composer;",
        "-",
        "Ljava/lang/Integer;",
        "+",
        "Lw7/l0;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $label:Le8/p;
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

.field final synthetic $leadingIcon:Le8/p;
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

.field final synthetic $placeholder:Le8/p;
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

.field final synthetic $singleLine:Z

.field final synthetic $trailingIcon:Le8/p;
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

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "ZZ",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
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
            ">;",
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
            ">;",
            "Landroidx/compose/material/TextFieldColors;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-boolean p2, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$enabled:Z

    iput-boolean p3, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$singleLine:Z

    iput-object p4, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p5, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p6, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$isError:Z

    iput-object p7, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$label:Le8/p;

    iput-object p8, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$placeholder:Le8/p;

    iput-object p9, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$leadingIcon:Le8/p;

    iput-object p10, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$trailingIcon:Le8/p;

    iput-object p11, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$colors:Landroidx/compose/material/TextFieldColors;

    iput p12, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$$dirty:I

    iput p13, p0, Landroidx/compose/material/TextFieldKt$TextField$5;->$$dirty1:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v3, p1

    .line 5
    .line 6
    const-string v1, "innerTextField"

    .line 7
    .line 8
    .line 9
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    and-int/lit8 v1, p3, 0xe

    .line 12
    .line 13
    move-object/from16 v15, p2

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    const/4 v1, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x2

    .line 25
    .line 26
    :goto_0
    or-int v1, p3, v1

    .line 27
    .line 28
    move/from16 v16, v1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    move/from16 v16, p3

    .line 32
    .line 33
    :goto_1
    and-int/lit8 v1, v16, 0x5b

    .line 34
    .line 35
    const/16 v2, 0x12

    .line 36
    .line 37
    if-ne v1, v2, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    goto :goto_2

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 48
    goto :goto_3

    .line 49
    .line 50
    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    .line 51
    .line 52
    iget-object v2, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    iget-boolean v4, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$enabled:Z

    .line 59
    .line 60
    iget-boolean v5, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$singleLine:Z

    .line 61
    .line 62
    iget-object v6, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 63
    .line 64
    iget-object v7, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 65
    .line 66
    iget-boolean v8, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$isError:Z

    .line 67
    .line 68
    iget-object v9, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$label:Le8/p;

    .line 69
    .line 70
    iget-object v10, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$placeholder:Le8/p;

    .line 71
    .line 72
    iget-object v11, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$leadingIcon:Le8/p;

    .line 73
    .line 74
    iget-object v12, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$trailingIcon:Le8/p;

    .line 75
    .line 76
    iget-object v13, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 77
    const/4 v14, 0x0

    .line 78
    .line 79
    shl-int/lit8 v16, v16, 0x3

    .line 80
    .line 81
    and-int/lit8 v16, v16, 0x70

    .line 82
    .line 83
    iget v14, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$$dirty:I

    .line 84
    .line 85
    shr-int/lit8 v3, v14, 0x3

    .line 86
    .line 87
    and-int/lit16 v3, v3, 0x380

    .line 88
    .line 89
    or-int v3, v16, v3

    .line 90
    .line 91
    iget v15, v0, Landroidx/compose/material/TextFieldKt$TextField$5;->$$dirty1:I

    .line 92
    .line 93
    shr-int/lit8 v0, v15, 0x3

    .line 94
    .line 95
    and-int/lit16 v0, v0, 0x1c00

    .line 96
    or-int/2addr v0, v3

    .line 97
    .line 98
    shl-int/lit8 v3, v15, 0x9

    .line 99
    .line 100
    .line 101
    const v16, 0xe000

    .line 102
    .line 103
    and-int v3, v3, v16

    .line 104
    or-int/2addr v0, v3

    .line 105
    .line 106
    shr-int/lit8 v3, v15, 0x3

    .line 107
    .line 108
    const/high16 v16, 0x70000

    .line 109
    .line 110
    and-int v3, v3, v16

    .line 111
    or-int/2addr v0, v3

    .line 112
    .line 113
    shl-int/lit8 v3, v15, 0x12

    .line 114
    .line 115
    const/high16 v16, 0x380000

    .line 116
    .line 117
    and-int v3, v3, v16

    .line 118
    or-int/2addr v0, v3

    .line 119
    .line 120
    shl-int/lit8 v3, v14, 0x3

    .line 121
    .line 122
    const/high16 v16, 0x1c00000

    .line 123
    .line 124
    and-int v3, v3, v16

    .line 125
    or-int/2addr v0, v3

    .line 126
    .line 127
    shl-int/lit8 v3, v14, 0x3

    .line 128
    .line 129
    const/high16 v16, 0xe000000

    .line 130
    .line 131
    and-int v3, v3, v16

    .line 132
    or-int/2addr v0, v3

    .line 133
    .line 134
    shl-int/lit8 v3, v14, 0x3

    .line 135
    .line 136
    const/high16 v16, 0x70000000

    .line 137
    .line 138
    and-int v3, v3, v16

    .line 139
    .line 140
    or-int v16, v0, v3

    .line 141
    .line 142
    shr-int/lit8 v0, v14, 0x1b

    .line 143
    .line 144
    and-int/lit8 v0, v0, 0xe

    .line 145
    .line 146
    or-int/lit16 v0, v0, 0xc00

    .line 147
    .line 148
    shr-int/lit8 v3, v15, 0x15

    .line 149
    .line 150
    and-int/lit8 v3, v3, 0x70

    .line 151
    .line 152
    or-int v17, v0, v3

    .line 153
    .line 154
    const/16 v18, 0x1000

    .line 155
    .line 156
    move-object/from16 v3, p1

    .line 157
    .line 158
    move-object/from16 v15, p2

    .line 159
    const/4 v14, 0x0

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {v1 .. v18}, Landroidx/compose/material/TextFieldDefaults;->c(Ljava/lang/String;Le8/p;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;III)V

    .line 163
    :goto_3
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Le8/p;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/TextFieldKt$TextField$5;->a(Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
