.class final Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldCursorKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/graphics/Brush;Z)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldCursor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldCursor.kt\nandroidx/compose/foundation/text/TextFieldCursorKt$cursor$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,89:1\n25#2:90\n1057#3,6:91\n660#4:97\n*S KotlinDebug\n*F\n+ 1 TextFieldCursor.kt\nandroidx/compose/foundation/text/TextFieldCursorKt$cursor$1\n*L\n45#1:90\n45#1:91,6\n46#1:97\n*E\n"
.end annotation


# instance fields
.field final synthetic $cursorBrush:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iput-object p3, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p4, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "$this$composed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x6169e59c

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p3, -0x1d58f75c

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    if-ne p3, v0, :cond_0

    .line 31
    const/4 p3, 0x0

    .line 32
    const/4 v0, 0x2

    .line 33
    .line 34
    const/high16 v2, 0x3f800000    # 1.0f

    .line 35
    .line 36
    .line 37
    invoke-static {v2, p3, v0, v1}, Landroidx/compose/animation/core/AnimatableKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 45
    move-object v3, p3

    .line 46
    .line 47
    check-cast v3, Landroidx/compose/animation/core/Animatable;

    .line 48
    .line 49
    iget-object p3, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 50
    .line 51
    instance-of v0, p3, Landroidx/compose/ui/graphics/SolidColor;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    check-cast p3, Landroidx/compose/ui/graphics/SolidColor;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/SolidColor;->c()J

    .line 59
    move-result-wide v4

    .line 60
    .line 61
    sget-object p3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 65
    move-result-wide v6

    .line 66
    .line 67
    cmp-long p3, v4, v6

    .line 68
    .line 69
    if-nez p3, :cond_1

    .line 70
    const/4 p3, 0x0

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 p3, 0x1

    .line 73
    .line 74
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->d()Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 86
    move-result-wide v4

    .line 87
    .line 88
    .line 89
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    if-eqz p3, :cond_2

    .line 95
    .line 96
    iget-object v4, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 97
    .line 98
    iget-object p3, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Landroidx/compose/ui/text/input/TextFieldValue;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 102
    move-result-object v5

    .line 103
    .line 104
    iget-object p3, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 108
    move-result-wide v6

    .line 109
    .line 110
    .line 111
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->b(J)Landroidx/compose/ui/text/TextRange;

    .line 112
    move-result-object v6

    .line 113
    .line 114
    new-instance v7, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$1;

    .line 115
    .line 116
    .line 117
    invoke-direct {v7, v3, v1}, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/d;)V

    .line 118
    const/4 v9, 0x0

    .line 119
    move-object v8, p2

    .line 120
    .line 121
    .line 122
    invoke-static/range {v4 .. v9}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 123
    .line 124
    new-instance p3, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$2;

    .line 125
    .line 126
    iget-object v4, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 127
    .line 128
    iget-object v5, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 129
    .line 130
    iget-object v6, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 131
    .line 132
    iget-object v7, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 133
    move-object v2, p3

    .line 134
    .line 135
    .line 136
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$2;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/graphics/Brush;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1, p3}, Landroidx/compose/ui/draw/DrawModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 140
    move-result-object p1

    .line 141
    goto :goto_1

    .line 142
    .line 143
    :cond_2
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 144
    .line 145
    .line 146
    :goto_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 147
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
