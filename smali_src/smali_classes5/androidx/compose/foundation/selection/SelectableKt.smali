.class public final Landroidx/compose/foundation/selection/SelectableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Selectable.kt\nandroidx/compose/foundation/selection/SelectableKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,134:1\n135#2:135\n135#2:136\n146#2:137\n*S KotlinDebug\n*F\n+ 1 Selectable.kt\nandroidx/compose/foundation/selection/SelectableKt\n*L\n61#1:135\n114#1:136\n113#1:137\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;
    .locals 13
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/Indication;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/semantics/Role;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Landroidx/compose/ui/semantics/Role;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    const-string v1, "$this$selectable"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v1, "interactionSource"

    .line 9
    move-object v9, p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v1, "onClick"

    .line 15
    .line 16
    move-object/from16 v10, p6

    .line 17
    .line 18
    .line 19
    invoke-static {v10, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Landroidx/compose/foundation/selection/SelectableKt$selectable-O2vRcR0$$inlined$debugInspectorInfo$1;

    .line 28
    move-object v2, v1

    .line 29
    move v3, p1

    .line 30
    move-object v4, p2

    .line 31
    .line 32
    move-object/from16 v5, p3

    .line 33
    .line 34
    move/from16 v6, p4

    .line 35
    .line 36
    move-object/from16 v7, p5

    .line 37
    .line 38
    move-object/from16 v8, p6

    .line 39
    .line 40
    .line 41
    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/selection/SelectableKt$selectable-O2vRcR0$$inlined$debugInspectorInfo$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/a;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    :goto_0
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 49
    const/4 v6, 0x0

    .line 50
    .line 51
    const/16 v11, 0x8

    .line 52
    const/4 v12, 0x0

    .line 53
    move-object v3, p2

    .line 54
    .line 55
    move-object/from16 v4, p3

    .line 56
    .line 57
    move/from16 v5, p4

    .line 58
    .line 59
    move-object/from16 v7, p5

    .line 60
    .line 61
    move-object/from16 v8, p6

    .line 62
    move v9, v11

    .line 63
    move-object v10, v12

    .line 64
    .line 65
    .line 66
    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/ClickableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    new-instance v3, Landroidx/compose/foundation/selection/SelectableKt$selectable$4$1;

    .line 70
    move v4, p1

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, p1}, Landroidx/compose/foundation/selection/SelectableKt$selectable$4$1;-><init>(Z)V

    .line 74
    const/4 v4, 0x1

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v6, v3, v4, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v1, v2}, Landroidx/compose/ui/platform/InspectableValueKt;->b(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
