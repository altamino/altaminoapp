.class final Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
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
    value = "SMAP\nFocusModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusModifier.kt\nandroidx/compose/ui/focus/FocusModifierKt$focusModifier$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,282:1\n25#2:283\n1057#3,6:284\n*S KotlinDebug\n*F\n+ 1 FocusModifier.kt\nandroidx/compose/ui/focus/FocusModifierKt$focusModifier$2\n*L\n211#1:283\n211#1:284,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2;->INSTANCE:Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 3
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
    const p3, -0x6bea8fc1

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
    .line 29
    if-ne p3, v0, :cond_0

    .line 30
    .line 31
    new-instance p3, Landroidx/compose/ui/focus/FocusModifier;

    .line 32
    .line 33
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 34
    const/4 v1, 0x2

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-direct {p3, v0, v2, v1, v2}, Landroidx/compose/ui/focus/FocusModifier;-><init>(Landroidx/compose/ui/focus/FocusStateImpl;Le8/l;ILkotlin/jvm/internal/k;)V

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
    .line 46
    check-cast p3, Landroidx/compose/ui/focus/FocusModifier;

    .line 47
    .line 48
    new-instance v0, Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2$1;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p3}, Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2$1;-><init>(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 52
    const/4 v1, 0x0

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p2, v1}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p3}, Landroidx/compose/ui/focus/FocusModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/Modifier;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 63
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
