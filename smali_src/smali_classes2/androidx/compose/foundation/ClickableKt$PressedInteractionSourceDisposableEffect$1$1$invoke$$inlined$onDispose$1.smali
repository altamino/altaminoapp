.class public final Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$1;->a(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 Clickable.kt\nandroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$1\n*L\n1#1,483:1\n388#2,6:484\n*E\n"
.end annotation


# instance fields
.field final synthetic $interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $pressedInteraction$inlined:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$1$invoke$$inlined$onDispose$1;->$pressedInteraction$inlined:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public t()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$1$invoke$$inlined$onDispose$1;->$pressedInteraction$inlined:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->a(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$1$invoke$$inlined$onDispose$1;->$pressedInteraction$inlined:Landroidx/compose/runtime/MutableState;

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method
