.class final Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewResponder;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nBringIntoViewResponder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BringIntoViewResponder.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,301:1\n36#2:302\n1057#3,6:303\n*S KotlinDebug\n*F\n+ 1 BringIntoViewResponder.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2\n*L\n110#1:302\n110#1:303,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2;->$responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 1
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
    const p1, -0x32c94b6f

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/relocation/BringIntoViewParent;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const p3, 0x44faf204

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 26
    move-result p3

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    if-ne v0, p3, :cond_1

    .line 41
    .line 42
    :cond_0
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewParent;)V

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
    check-cast v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2;->$responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->n(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 62
    return-object v0
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
