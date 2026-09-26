.class public final Landroidx/compose/foundation/FocusableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Focusable.kt\nandroidx/compose/foundation/FocusableKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,266:1\n135#2:267\n135#2:268\n135#2:269\n146#2:270\n135#2:271\n*S KotlinDebug\n*F\n+ 1 Focusable.kt\nandroidx/compose/foundation/FocusableKt\n*L\n68#1:267\n213#1:268\n239#1:269\n238#1:270\n226#1:271\n*E\n"
.end annotation


# static fields
.field private static final focusGroupInspectorInfo:Landroidx/compose/ui/platform/InspectableModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/platform/InspectableModifier;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Landroidx/compose/foundation/FocusableKt$special$$inlined$debugInspectorInfo$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Landroidx/compose/foundation/FocusableKt$special$$inlined$debugInspectorInfo$1;-><init>()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/InspectableModifier;-><init>(Le8/l;)V

    .line 22
    .line 23
    sput-object v0, Landroidx/compose/foundation/FocusableKt;->focusGroupInspectorInfo:Landroidx/compose/ui/platform/InspectableModifier;

    .line 24
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/FocusableKt;->f(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/foundation/FocusableKt;->focusGroupInspectorInfo:Landroidx/compose/ui/platform/InspectableModifier;

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/foundation/FocusableKt$focusGroup$1;->INSTANCE:Landroidx/compose/foundation/FocusableKt$focusGroup$1;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusPropertiesKt;->b(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusModifierKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/foundation/FocusableKt$focusable$$inlined$debugInspectorInfo$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$$inlined$debugInspectorInfo$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    :goto_0
    new-instance v1, Landroidx/compose/foundation/FocusableKt$focusable$2;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p2, p1}, Landroidx/compose/foundation/FocusableKt$focusable$2;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/FocusableKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$$inlined$debugInspectorInfo$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$$inlined$debugInspectorInfo$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    :goto_0
    new-instance v1, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p1, p2}, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private static final f(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;
    .locals 3
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/foundation/FocusableKt$onPinnableParentAvailable$$inlined$debugInspectorInfo$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/compose/foundation/FocusableKt$onPinnableParentAvailable$$inlined$debugInspectorInfo$1;-><init>(Le8/l;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    :goto_0
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 19
    .line 20
    new-instance v2, Landroidx/compose/foundation/PinnableParentConsumer;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, p1}, Landroidx/compose/foundation/PinnableParentConsumer;-><init>(Le8/l;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0, p1}, Landroidx/compose/ui/platform/InspectableValueKt;->b(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
