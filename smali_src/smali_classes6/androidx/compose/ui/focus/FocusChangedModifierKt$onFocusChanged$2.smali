.class final Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nFocusChangedModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusChangedModifier.kt\nandroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,51:1\n25#2:52\n1057#3,6:53\n*S KotlinDebug\n*F\n+ 1 FocusChangedModifier.kt\nandroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$2\n*L\n43#1:52\n43#1:53,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $onFocusChanged:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/focus/FocusState;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusState;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$2;->$onFocusChanged:Le8/l;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 2
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
    const p1, -0x67d12d20

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p1, -0x1d58f75c

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    if-ne p1, p3, :cond_0

    .line 30
    const/4 p1, 0x2

    .line 31
    const/4 p3, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {p3, p3, p1, p3}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 42
    .line 43
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 44
    .line 45
    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 46
    .line 47
    new-instance v0, Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$2$1;

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$2;->$onFocusChanged:Le8/l;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$2$1;-><init>(Landroidx/compose/runtime/MutableState;Le8/l;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p3, v0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->b(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 60
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
