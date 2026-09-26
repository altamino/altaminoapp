.class final Landroidx/compose/foundation/IndicationKt$indication$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/IndicationKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nIndication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indication.kt\nandroidx/compose/foundation/IndicationKt$indication$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,186:1\n36#2:187\n1057#3,6:188\n*S KotlinDebug\n*F\n+ 1 Indication.kt\nandroidx/compose/foundation/IndicationKt$indication$2\n*L\n111#1:187\n111#1:188,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $indication:Landroidx/compose/foundation/Indication;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/Indication;Landroidx/compose/foundation/interaction/InteractionSource;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$indication:Landroidx/compose/foundation/Indication;

    iput-object p2, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

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
    const p1, -0x15193045

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$indication:Landroidx/compose/foundation/Indication;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/foundation/NoIndication;->INSTANCE:Landroidx/compose/foundation/NoIndication;

    .line 18
    .line 19
    :cond_0
    iget-object p3, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p3, p2, v0}, Landroidx/compose/foundation/Indication;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/IndicationInstance;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    const p3, 0x44faf204

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 34
    move-result p3

    .line 35
    .line 36
    .line 37
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-nez p3, :cond_1

    .line 41
    .line 42
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    if-ne v0, p3, :cond_2

    .line 49
    .line 50
    :cond_1
    new-instance v0, Landroidx/compose/foundation/IndicationModifier;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p1}, Landroidx/compose/foundation/IndicationModifier;-><init>(Landroidx/compose/foundation/IndicationInstance;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 60
    .line 61
    check-cast v0, Landroidx/compose/foundation/IndicationModifier;

    .line 62
    .line 63
    .line 64
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 65
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/IndicationKt$indication$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
