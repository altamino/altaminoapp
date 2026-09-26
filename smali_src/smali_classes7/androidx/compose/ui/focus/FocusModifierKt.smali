.class public final Landroidx/compose/ui/focus/FocusModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusModifier.kt\nandroidx/compose/ui/focus/FocusModifierKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,282:1\n135#2:283\n135#2:284\n*S KotlinDebug\n*F\n+ 1 FocusModifier.kt\nandroidx/compose/ui/focus/FocusModifierKt\n*L\n195#1:283\n210#1:284\n*E\n"
.end annotation


# static fields
.field private static final ModifierLocalParentFocusModifier:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ResetFocusModifierLocals:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusModifierKt$ModifierLocalParentFocusModifier$1;->INSTANCE:Landroidx/compose/ui/focus/FocusModifierKt$ModifierLocalParentFocusModifier$1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->a(Le8/a;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/focus/FocusModifierKt;->ModifierLocalParentFocusModifier:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$1;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Companion;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    new-instance v1, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$2;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    new-instance v1, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$3;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$3;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sput-object v0, Landroidx/compose/ui/focus/FocusModifierKt;->ResetFocusModifierLocals:Landroidx/compose/ui/Modifier;

    .line 40
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
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
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/ui/focus/FocusModifierKt$focusTarget$$inlined$debugInspectorInfo$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusModifierKt$focusTarget$$inlined$debugInspectorInfo$1;-><init>()V

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
    sget-object v1, Landroidx/compose/ui/focus/FocusModifierKt$focusTarget$2;->INSTANCE:Landroidx/compose/ui/focus/FocusModifierKt$focusTarget$2;

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/focus/FocusModifier;
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
    const-string v0, "focusModifier"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    sget-object p1, Landroidx/compose/ui/focus/FocusModifierKt;->ResetFocusModifierLocals:Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static final c()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusModifierKt;->ModifierLocalParentFocusModifier:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method
