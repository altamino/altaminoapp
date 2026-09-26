.class public final Landroidx/compose/foundation/HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/HoverableKt$hoverable$2$1;->a(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 Hoverable.kt\nandroidx/compose/foundation/HoverableKt$hoverable$2$1\n*L\n1#1,483:1\n84#2:484\n*E\n"
.end annotation


# instance fields
.field final synthetic $hoverInteraction$delegate$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1;->$hoverInteraction$delegate$inlined:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

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
    iget-object v0, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1;->$hoverInteraction$delegate$inlined:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->c(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 8
    return-void
.end method
