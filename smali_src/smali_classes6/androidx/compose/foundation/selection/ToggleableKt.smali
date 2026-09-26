.class public final Landroidx/compose/foundation/selection/ToggleableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToggleable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Toggleable.kt\nandroidx/compose/foundation/selection/ToggleableKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,302:1\n135#2:303\n135#2:304\n146#2:305\n135#2:306\n135#2:307\n146#2:308\n*S KotlinDebug\n*F\n+ 1 Toggleable.kt\nandroidx/compose/foundation/selection/ToggleableKt\n*L\n74#1:303\n123#1:304\n122#1:305\n172#1:306\n224#1:307\n223#1:308\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Le8/a;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/selection/ToggleableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/l;)Landroidx/compose/ui/Modifier;
    .locals 8
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
    .param p6    # Le8/l;
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
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$toggleable"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "interactionSource"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "onValueChange"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;

    .line 24
    move-object v1, v0

    .line 25
    move v2, p1

    .line 26
    move-object v3, p2

    .line 27
    move-object v4, p3

    .line 28
    move v5, p4

    .line 29
    move-object v6, p5

    .line 30
    move-object v7, p6

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/l;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    :goto_0
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Landroidx/compose/ui/state/ToggleableStateKt;->a(Z)Landroidx/compose/ui/state/ToggleableState;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    new-instance v7, Landroidx/compose/foundation/selection/ToggleableKt$toggleable$4$1;

    .line 47
    .line 48
    .line 49
    invoke-direct {v7, p6, p1}, Landroidx/compose/foundation/selection/ToggleableKt$toggleable$4$1;-><init>(Le8/l;Z)V

    .line 50
    move v3, p4

    .line 51
    move-object v4, p5

    .line 52
    move-object v5, p2

    .line 53
    move-object v6, p3

    .line 54
    .line 55
    .line 56
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/selection/ToggleableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0, p1}, Landroidx/compose/ui/platform/InspectableValueKt;->b(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method private static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Le8/a;)Landroidx/compose/ui/Modifier;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Z",
            "Landroidx/compose/ui/semantics/Role;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v7, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;

    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p6

    .line 5
    move v2, p2

    .line 6
    move-object v3, p4

    .line 7
    move-object v4, p5

    .line 8
    move-object v5, p3

    .line 9
    move-object v6, p1

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;-><init>(Le8/a;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Landroidx/compose/ui/semantics/Role;Landroidx/compose/ui/state/ToggleableState;)V

    .line 13
    const/4 p1, 0x1

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p2, v7, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->d(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;
    .locals 8
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/state/ToggleableState;
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
            "Landroidx/compose/ui/state/ToggleableState;",
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
    .line 2
    const-string v0, "$this$triStateToggleable"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "state"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "interactionSource"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "onClick"

    .line 18
    .line 19
    .line 20
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Landroidx/compose/foundation/selection/ToggleableKt$triStateToggleable-O2vRcR0$$inlined$debugInspectorInfo$1;

    .line 29
    move-object v1, v0

    .line 30
    move-object v2, p1

    .line 31
    move v3, p4

    .line 32
    move-object v4, p5

    .line 33
    move-object v5, p2

    .line 34
    move-object v6, p3

    .line 35
    move-object v7, p6

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/selection/ToggleableKt$triStateToggleable-O2vRcR0$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Le8/a;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    :goto_0
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 46
    move-object v2, p1

    .line 47
    move v3, p4

    .line 48
    move-object v4, p5

    .line 49
    move-object v5, p2

    .line 50
    move-object v6, p3

    .line 51
    move-object v7, p6

    .line 52
    .line 53
    .line 54
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/selection/ToggleableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0, p1}, Landroidx/compose/ui/platform/InspectableValueKt;->b(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method
