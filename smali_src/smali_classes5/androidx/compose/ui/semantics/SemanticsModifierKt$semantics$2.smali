.class final Landroidx/compose/ui/semantics/SemanticsModifierKt$semantics$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLe8/l;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nSemanticsModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsModifier.kt\nandroidx/compose/ui/semantics/SemanticsModifierKt$semantics$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,149:1\n25#2:150\n1057#3,6:151\n*S KotlinDebug\n*F\n+ 1 SemanticsModifier.kt\nandroidx/compose/ui/semantics/SemanticsModifierKt$semantics$2\n*L\n119#1:150\n119#1:151,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $mergeDescendants:Z

.field final synthetic $properties:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLe8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/semantics/SemanticsModifierKt$semantics$2;->$mergeDescendants:Z

    iput-object p2, p0, Landroidx/compose/ui/semantics/SemanticsModifierKt$semantics$2;->$properties:Le8/l;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

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
    const p1, -0x85fd940

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
    .line 31
    sget-object p1, Landroidx/compose/ui/semantics/SemanticsModifierCore;->Companion:Landroidx/compose/ui/semantics/SemanticsModifierCore$Companion;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsModifierCore$Companion;->a()I

    .line 35
    move-result p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 46
    .line 47
    check-cast p1, Ljava/lang/Number;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 51
    move-result p1

    .line 52
    .line 53
    new-instance p3, Landroidx/compose/ui/semantics/SemanticsModifierCore;

    .line 54
    .line 55
    iget-boolean v0, p0, Landroidx/compose/ui/semantics/SemanticsModifierKt$semantics$2;->$mergeDescendants:Z

    .line 56
    const/4 v1, 0x0

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/compose/ui/semantics/SemanticsModifierKt$semantics$2;->$properties:Le8/l;

    .line 59
    .line 60
    .line 61
    invoke-direct {p3, p1, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierCore;-><init>(IZZLe8/l;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 65
    return-object p3
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/semantics/SemanticsModifierKt$semantics$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
