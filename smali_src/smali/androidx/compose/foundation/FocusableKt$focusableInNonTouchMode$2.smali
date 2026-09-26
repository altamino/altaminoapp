.class final Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/FocusableKt;->e(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nFocusable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Focusable.kt\nandroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,266:1\n76#2:267\n*S KotlinDebug\n*F\n+ 1 Focusable.kt\nandroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2\n*L\n219#1:267\n*E\n"
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2;->$enabled:Z

    iput-object p2, p0, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

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
    const p1, -0x24e46b7d

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->i()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroidx/compose/ui/input/InputModeManager;

    .line 22
    .line 23
    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1}, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2$1;-><init>(Landroidx/compose/ui/input/InputModeManager;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p3, v0}, Landroidx/compose/ui/focus/FocusPropertiesKt;->b(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-boolean p3, p0, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2;->$enabled:Z

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p3, v0}, Landroidx/compose/foundation/FocusableKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 44
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/FocusableKt$focusableInNonTouchMode$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
