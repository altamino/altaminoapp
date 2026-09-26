.class public final Landroidx/compose/ui/focus/FocusRequesterModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusRequesterModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRequesterModifier.kt\nandroidx/compose/ui/focus/FocusRequesterModifierKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,140:1\n135#2:141\n*S KotlinDebug\n*F\n+ 1 FocusRequesterModifier.kt\nandroidx/compose/ui/focus/FocusRequesterModifierKt\n*L\n132#1:141\n*E\n"
.end annotation


# static fields
.field private static final ModifierLocalFocusRequester:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/focus/FocusRequesterModifierLocal;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusRequesterModifierKt$ModifierLocalFocusRequester$1;->INSTANCE:Landroidx/compose/ui/focus/FocusRequesterModifierKt$ModifierLocalFocusRequester$1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->a(Le8/a;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->ModifierLocalFocusRequester:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
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
    const-string v0, "focusRequester"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$debugInspectorInfo$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    :goto_0
    new-instance v1, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$2;-><init>(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static final b()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/focus/FocusRequesterModifierLocal;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->ModifierLocalFocusRequester:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method
