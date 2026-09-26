.class public final Landroidx/compose/ui/ComposedModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final WrapFocusEventModifier:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/ui/focus/FocusEventModifier;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/Modifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WrapFocusRequesterModifier:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/ui/focus/FocusRequesterModifier;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/Modifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1;->INSTANCE:Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1;

    sput-object v0, Landroidx/compose/ui/ComposedModifierKt;->WrapFocusEventModifier:Le8/q;

    sget-object v0, Landroidx/compose/ui/ComposedModifierKt$WrapFocusRequesterModifier$1;->INSTANCE:Landroidx/compose/ui/ComposedModifierKt$WrapFocusRequesterModifier$1;

    sput-object v0, Landroidx/compose/ui/ComposedModifierKt;->WrapFocusRequesterModifier:Le8/q;

    return-void
.end method

.method public static final synthetic a()Le8/q;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/ComposedModifierKt;->WrapFocusEventModifier:Le8/q;

    return-object v0
.end method

.method public static final synthetic b()Le8/q;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/ComposedModifierKt;->WrapFocusRequesterModifier:Le8/q;

    return-object v0
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/Modifier;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/ui/Modifier;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
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
    const-string v0, "inspectorInfo"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "factory"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/ComposedModifier;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/ComposedModifier;-><init>(Le8/l;Le8/q;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final e(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "modifier"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/ComposedModifierKt$materialize$1;->INSTANCE:Landroidx/compose/ui/ComposedModifierKt$materialize$1;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->d0(Le8/l;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    return-object p1

    .line 20
    .line 21
    .line 22
    :cond_0
    const v0, 0x48ae8da7

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 26
    .line 27
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 28
    .line 29
    new-instance v1, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;-><init>(Landroidx/compose/runtime/Composer;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/Modifier;->a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 42
    return-object p1
.end method
