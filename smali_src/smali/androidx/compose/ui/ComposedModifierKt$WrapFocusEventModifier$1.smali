.class final Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/ComposedModifierKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/focus/FocusEventModifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/focus/FocusEventModifierLocal;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposedModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposedModifier.kt\nandroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,324:1\n36#2:325\n1057#3,6:326\n*S KotlinDebug\n*F\n+ 1 ComposedModifier.kt\nandroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1\n*L\n310#1:325\n310#1:326,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1;

    invoke-direct {v0}, Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1;->INSTANCE:Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/focus/FocusEventModifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/focus/FocusEventModifierLocal;
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusEventModifier;
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
    const-string p3, "mod"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, -0x6aba573a

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p3, 0x44faf204

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 21
    move-result p3

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    if-ne v0, p3, :cond_1

    .line 36
    .line 37
    :cond_0
    new-instance v0, Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 38
    .line 39
    new-instance p3, Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1$modifier$1$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {p3, p1}, Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1$modifier$1$1;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p3}, Landroidx/compose/ui/focus/FocusEventModifierLocal;-><init>(Le8/l;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 52
    .line 53
    check-cast v0, Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 54
    .line 55
    new-instance p1, Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1$1;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, v0}, Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1$1;-><init>(Landroidx/compose/ui/focus/FocusEventModifierLocal;)V

    .line 59
    const/4 p3, 0x0

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 66
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/focus/FocusEventModifier;

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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/ComposedModifierKt$WrapFocusEventModifier$1;->a(Landroidx/compose/ui/focus/FocusEventModifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
