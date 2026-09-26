.class final Landroidx/compose/material/DefaultTextFieldColors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material/TextFieldColors;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldDefaults.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldDefaults.kt\nandroidx/compose/material/DefaultTextFieldColors\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,854:1\n76#2:855\n76#2:856\n*S KotlinDebug\n*F\n+ 1 TextFieldDefaults.kt\nandroidx/compose/material/DefaultTextFieldColors\n*L\n725#1:855\n756#1:856\n*E\n"
.end annotation


# instance fields
.field private final backgroundColor:J

.field private final cursorColor:J

.field private final disabledIndicatorColor:J

.field private final disabledLabelColor:J

.field private final disabledLeadingIconColor:J

.field private final disabledPlaceholderColor:J

.field private final disabledTextColor:J

.field private final disabledTrailingIconColor:J

.field private final errorCursorColor:J

.field private final errorIndicatorColor:J

.field private final errorLabelColor:J

.field private final errorLeadingIconColor:J

.field private final errorTrailingIconColor:J

.field private final focusedIndicatorColor:J

.field private final focusedLabelColor:J

.field private final leadingIconColor:J

.field private final placeholderColor:J

.field private final textColor:J

.field private final trailingIconColor:J

.field private final unfocusedIndicatorColor:J

.field private final unfocusedLabelColor:J


# direct methods
.method private constructor <init>(JJJJJJJJJJJJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->textColor:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTextColor:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->cursorColor:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->errorCursorColor:J

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->focusedIndicatorColor:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedIndicatorColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->errorIndicatorColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledIndicatorColor:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->leadingIconColor:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLeadingIconColor:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->errorLeadingIconColor:J

    move-wide/from16 v1, p23

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->trailingIconColor:J

    move-wide/from16 v1, p25

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTrailingIconColor:J

    move-wide/from16 v1, p27

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->errorTrailingIconColor:J

    move-wide/from16 v1, p29

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->backgroundColor:J

    move-wide/from16 v1, p31

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->focusedLabelColor:J

    move-wide/from16 v1, p33

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedLabelColor:J

    move-wide/from16 v1, p35

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLabelColor:J

    move-wide/from16 v1, p37

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->errorLabelColor:J

    move-wide/from16 v1, p39

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->placeholderColor:J

    move-wide/from16 v1, p41

    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledPlaceholderColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p42}, Landroidx/compose/material/DefaultTextFieldColors;-><init>(JJJJJJJJJJJJJJJJJJJJJ)V

    return-void
.end method

.method private static final k(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final l(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public a(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p1, -0x54df94fd

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->backgroundColor:J

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 12
    move-result-object p1

    .line 13
    const/4 p3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 21
    return-object p1
.end method

.method public b(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p4, 0x3c918b3c

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLeadingIconColor:J

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLeadingIconColor:J

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->leadingIconColor:J

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 31
    return-object p1
.end method

.method public d(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 8
    .param p3    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "interactionSource"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x3b86960b

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    const/4 v0, 0x6

    .line 13
    shr-int/2addr p5, v0

    .line 14
    .line 15
    and-int/lit8 p5, p5, 0xe

    .line 16
    .line 17
    .line 18
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-wide p2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledIndicatorColor:J

    .line 24
    :goto_0
    move-wide v1, p2

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iget-wide p2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorIndicatorColor:J

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p3}, Landroidx/compose/material/DefaultTextFieldColors;->k(Landroidx/compose/runtime/State;)Z

    .line 34
    move-result p2

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-wide p2, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedIndicatorColor:J

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    iget-wide p2, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedIndicatorColor:J

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    const/4 p2, 0x0

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    .line 48
    const p1, -0x7a70755a

    .line 49
    .line 50
    .line 51
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 52
    .line 53
    const/16 p1, 0x96

    .line 54
    const/4 p3, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2, p3, v0, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 58
    move-result-object v3

    .line 59
    const/4 v4, 0x0

    .line 60
    .line 61
    const/16 v6, 0x30

    .line 62
    const/4 v7, 0x4

    .line 63
    move-object v5, p4

    .line 64
    .line 65
    .line 66
    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/SingleValueAnimationKt;->a(JLandroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 71
    goto :goto_2

    .line 72
    .line 73
    .line 74
    :cond_3
    const p1, -0x7a7074f1

    .line 75
    .line 76
    .line 77
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p4, p2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 92
    return-object p1
.end method

.method public e(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p4, 0xd6d2e2e

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTrailingIconColor:J

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorTrailingIconColor:J

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->trailingIconColor:J

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 31
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_17

    .line 8
    .line 9
    const-class v2, Landroidx/compose/material/DefaultTextFieldColors;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    check-cast p1, Landroidx/compose/material/DefaultTextFieldColors;

    .line 32
    .line 33
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->textColor:J

    .line 34
    .line 35
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->textColor:J

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    return v1

    .line 43
    .line 44
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTextColor:J

    .line 45
    .line 46
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledTextColor:J

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    return v1

    .line 54
    .line 55
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->cursorColor:J

    .line 56
    .line 57
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->cursorColor:J

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-nez v2, :cond_4

    .line 64
    return v1

    .line 65
    .line 66
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorCursorColor:J

    .line 67
    .line 68
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->errorCursorColor:J

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 72
    move-result v2

    .line 73
    .line 74
    if-nez v2, :cond_5

    .line 75
    return v1

    .line 76
    .line 77
    :cond_5
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedIndicatorColor:J

    .line 78
    .line 79
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->focusedIndicatorColor:J

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 83
    move-result v2

    .line 84
    .line 85
    if-nez v2, :cond_6

    .line 86
    return v1

    .line 87
    .line 88
    :cond_6
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedIndicatorColor:J

    .line 89
    .line 90
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedIndicatorColor:J

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 94
    move-result v2

    .line 95
    .line 96
    if-nez v2, :cond_7

    .line 97
    return v1

    .line 98
    .line 99
    :cond_7
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorIndicatorColor:J

    .line 100
    .line 101
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->errorIndicatorColor:J

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 105
    move-result v2

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    return v1

    .line 109
    .line 110
    :cond_8
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledIndicatorColor:J

    .line 111
    .line 112
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledIndicatorColor:J

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 116
    move-result v2

    .line 117
    .line 118
    if-nez v2, :cond_9

    .line 119
    return v1

    .line 120
    .line 121
    :cond_9
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->leadingIconColor:J

    .line 122
    .line 123
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->leadingIconColor:J

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 127
    move-result v2

    .line 128
    .line 129
    if-nez v2, :cond_a

    .line 130
    return v1

    .line 131
    .line 132
    :cond_a
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLeadingIconColor:J

    .line 133
    .line 134
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledLeadingIconColor:J

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 138
    move-result v2

    .line 139
    .line 140
    if-nez v2, :cond_b

    .line 141
    return v1

    .line 142
    .line 143
    :cond_b
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLeadingIconColor:J

    .line 144
    .line 145
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->errorLeadingIconColor:J

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 149
    move-result v2

    .line 150
    .line 151
    if-nez v2, :cond_c

    .line 152
    return v1

    .line 153
    .line 154
    :cond_c
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->trailingIconColor:J

    .line 155
    .line 156
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->trailingIconColor:J

    .line 157
    .line 158
    .line 159
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 160
    move-result v2

    .line 161
    .line 162
    if-nez v2, :cond_d

    .line 163
    return v1

    .line 164
    .line 165
    :cond_d
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTrailingIconColor:J

    .line 166
    .line 167
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledTrailingIconColor:J

    .line 168
    .line 169
    .line 170
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 171
    move-result v2

    .line 172
    .line 173
    if-nez v2, :cond_e

    .line 174
    return v1

    .line 175
    .line 176
    :cond_e
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorTrailingIconColor:J

    .line 177
    .line 178
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->errorTrailingIconColor:J

    .line 179
    .line 180
    .line 181
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 182
    move-result v2

    .line 183
    .line 184
    if-nez v2, :cond_f

    .line 185
    return v1

    .line 186
    .line 187
    :cond_f
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->backgroundColor:J

    .line 188
    .line 189
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->backgroundColor:J

    .line 190
    .line 191
    .line 192
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 193
    move-result v2

    .line 194
    .line 195
    if-nez v2, :cond_10

    .line 196
    return v1

    .line 197
    .line 198
    :cond_10
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedLabelColor:J

    .line 199
    .line 200
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->focusedLabelColor:J

    .line 201
    .line 202
    .line 203
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 204
    move-result v2

    .line 205
    .line 206
    if-nez v2, :cond_11

    .line 207
    return v1

    .line 208
    .line 209
    :cond_11
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedLabelColor:J

    .line 210
    .line 211
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedLabelColor:J

    .line 212
    .line 213
    .line 214
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 215
    move-result v2

    .line 216
    .line 217
    if-nez v2, :cond_12

    .line 218
    return v1

    .line 219
    .line 220
    :cond_12
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLabelColor:J

    .line 221
    .line 222
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledLabelColor:J

    .line 223
    .line 224
    .line 225
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 226
    move-result v2

    .line 227
    .line 228
    if-nez v2, :cond_13

    .line 229
    return v1

    .line 230
    .line 231
    :cond_13
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLabelColor:J

    .line 232
    .line 233
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->errorLabelColor:J

    .line 234
    .line 235
    .line 236
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 237
    move-result v2

    .line 238
    .line 239
    if-nez v2, :cond_14

    .line 240
    return v1

    .line 241
    .line 242
    :cond_14
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->placeholderColor:J

    .line 243
    .line 244
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->placeholderColor:J

    .line 245
    .line 246
    .line 247
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 248
    move-result v2

    .line 249
    .line 250
    if-nez v2, :cond_15

    .line 251
    return v1

    .line 252
    .line 253
    :cond_15
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledPlaceholderColor:J

    .line 254
    .line 255
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledPlaceholderColor:J

    .line 256
    .line 257
    .line 258
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 259
    move-result p1

    .line 260
    .line 261
    if-nez p1, :cond_16

    .line 262
    return v1

    .line 263
    :cond_16
    return v0

    .line 264
    :cond_17
    :goto_0
    return v1
.end method

.method public f(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0xfc885ec

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->placeholderColor:J

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledPlaceholderColor:J

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 17
    move-result-object p1

    .line 18
    const/4 p3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 26
    return-object p1
.end method

.method public g(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 1
    .param p3    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "interactionSource"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x2b568ab0

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    shr-int/lit8 p5, p5, 0x6

    .line 14
    .line 15
    and-int/lit8 p5, p5, 0xe

    .line 16
    .line 17
    .line 18
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLabelColor:J

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLabelColor:J

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {p3}, Landroidx/compose/material/DefaultTextFieldColors;->l(Landroidx/compose/runtime/State;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedLabelColor:J

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_2
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedLabelColor:J

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p4, p2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 53
    return-object p1
.end method

.method public h(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x959a82

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->textColor:J

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTextColor:J

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 17
    move-result-object p1

    .line 18
    const/4 p3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 26
    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->textColor:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTextColor:J

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->cursorColor:J

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorCursorColor:J

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedIndicatorColor:J

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedIndicatorColor:J

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorIndicatorColor:J

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledIndicatorColor:J

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->leadingIconColor:J

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 81
    .line 82
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLeadingIconColor:J

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    .line 89
    mul-int/lit8 v0, v0, 0x1f

    .line 90
    .line 91
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLeadingIconColor:J

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    .line 98
    mul-int/lit8 v0, v0, 0x1f

    .line 99
    .line 100
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->trailingIconColor:J

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    .line 107
    mul-int/lit8 v0, v0, 0x1f

    .line 108
    .line 109
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTrailingIconColor:J

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorTrailingIconColor:J

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 122
    move-result v1

    .line 123
    add-int/2addr v0, v1

    .line 124
    .line 125
    mul-int/lit8 v0, v0, 0x1f

    .line 126
    .line 127
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->backgroundColor:J

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 131
    move-result v1

    .line 132
    add-int/2addr v0, v1

    .line 133
    .line 134
    mul-int/lit8 v0, v0, 0x1f

    .line 135
    .line 136
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedLabelColor:J

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 140
    move-result v1

    .line 141
    add-int/2addr v0, v1

    .line 142
    .line 143
    mul-int/lit8 v0, v0, 0x1f

    .line 144
    .line 145
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedLabelColor:J

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 149
    move-result v1

    .line 150
    add-int/2addr v0, v1

    .line 151
    .line 152
    mul-int/lit8 v0, v0, 0x1f

    .line 153
    .line 154
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLabelColor:J

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    .line 161
    mul-int/lit8 v0, v0, 0x1f

    .line 162
    .line 163
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLabelColor:J

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 167
    move-result v1

    .line 168
    add-int/2addr v0, v1

    .line 169
    .line 170
    mul-int/lit8 v0, v0, 0x1f

    .line 171
    .line 172
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->placeholderColor:J

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 176
    move-result v1

    .line 177
    add-int/2addr v0, v1

    .line 178
    .line 179
    mul-int/lit8 v0, v0, 0x1f

    .line 180
    .line 181
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledPlaceholderColor:J

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 185
    move-result v1

    .line 186
    add-int/2addr v0, v1

    .line 187
    return v0
.end method

.method public i(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, -0x5636a7d5

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorCursorColor:J

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->cursorColor:J

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 17
    move-result-object p1

    .line 18
    const/4 p3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 26
    return-object p1
.end method
