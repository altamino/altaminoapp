.class public final Landroidx/compose/ui/focus/FocusModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/compose/ui/layout/OnPlacedModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusModifier$Companion;,
        Landroidx/compose/ui/focus/FocusModifier$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/platform/InspectorValueInfo;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/ui/focus/FocusModifier;",
        ">;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "Landroidx/compose/ui/layout/OnPlacedModifier;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusModifier.kt\nandroidx/compose/ui/focus/FocusModifier\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,282:1\n1182#2:283\n1161#2,2:284\n1182#2:286\n1161#2,2:287\n*S KotlinDebug\n*F\n+ 1 FocusModifier.kt\nandroidx/compose/ui/focus/FocusModifier\n*L\n75#1:283\n75#1:284,2\n103#1:286\n103#1:287,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/focus/FocusModifier$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RefreshFocusProperties:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private beyondBoundsLayoutParent:Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final children:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final focusProperties:Landroidx/compose/ui/focus/FocusProperties;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private focusPropertiesModifier:Landroidx/compose/ui/focus/FocusPropertiesModifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private focusRequestedOnPlaced:Z

.field private focusRequester:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private focusState:Landroidx/compose/ui/focus/FocusStateImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private focusedChild:Landroidx/compose/ui/focus/FocusModifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final keyInputChildren:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/key/KeyInputModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private keyInputModifier:Landroidx/compose/ui/input/key/KeyInputModifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public modifierLocalReadScope:Landroidx/compose/ui/modifier/ModifierLocalReadScope;

.field private parent:Landroidx/compose/ui/focus/FocusModifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rotaryScrollParent:Landroidx/compose/ui/input/focus/FocusAwareInputModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/input/focus/FocusAwareInputModifier<",
            "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/focus/FocusModifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusModifier$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/focus/FocusModifier;->Companion:Landroidx/compose/ui/focus/FocusModifier$Companion;

    sget-object v0, Landroidx/compose/ui/focus/FocusModifier$Companion$RefreshFocusProperties$1;->INSTANCE:Landroidx/compose/ui/focus/FocusModifier$Companion$RefreshFocusProperties$1;

    sput-object v0, Landroidx/compose/ui/focus/FocusModifier;->RefreshFocusProperties:Le8/l;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/focus/FocusStateImpl;Le8/l;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/focus/FocusStateImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusStateImpl;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initialFocus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    .line 4
    new-instance p2, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/focus/FocusModifier;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusModifier;->children:Landroidx/compose/runtime/collection/MutableVector;

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 5
    new-instance p1, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    invoke-direct {p1}, Landroidx/compose/ui/focus/FocusPropertiesImpl;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    .line 6
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array p2, v0, [Landroidx/compose/ui/input/key/KeyInputModifier;

    invoke-direct {p1, p2, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->keyInputChildren:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/focus/FocusStateImpl;Le8/l;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    move-result-object p2

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/focus/FocusModifier;-><init>(Landroidx/compose/ui/focus/FocusStateImpl;Le8/l;)V

    return-void
.end method

.method public static final synthetic a()Le8/l;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusModifier;->RefreshFocusProperties:Le8/l;

    return-object v0
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->beyondBoundsLayoutParent:Landroidx/compose/ui/layout/BeyondBoundsLayout;

    return-object v0
.end method

.method public final c()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->children:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final d()Landroidx/compose/ui/focus/FocusEventModifierLocal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    return-object v0
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public e(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "coordinates"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    .line 15
    :goto_0
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusPropertiesKt;->d(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 23
    .line 24
    :cond_1
    iget-boolean p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequestedOnPlaced:Z

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iput-boolean v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequestedOnPlaced:Z

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->h(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 32
    :cond_2
    return-void
.end method

.method public final f()Landroidx/compose/ui/focus/FocusProperties;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/focus/FocusPropertiesModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusPropertiesModifier:Landroidx/compose/ui/focus/FocusPropertiesModifier;

    return-object v0
.end method

.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/focus/FocusModifierKt;->c()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->o()Landroidx/compose/ui/focus/FocusModifier;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final h()Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    return-object v0
.end method

.method public final i()Landroidx/compose/ui/focus/FocusModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusedChild:Landroidx/compose/ui/focus/FocusModifier;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/key/KeyInputModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->keyInputChildren:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final k()Landroidx/compose/ui/input/key/KeyInputModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->keyInputModifier:Landroidx/compose/ui/input/key/KeyInputModifier;

    return-object v0
.end method

.method public final l()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    return-object v0
.end method

.method public final n()Landroidx/compose/ui/focus/FocusModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

    return-object v0
.end method

.method public o()Landroidx/compose/ui/focus/FocusModifier;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public final p(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/input/rotary/RotaryScrollEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->rotaryScrollParent:Landroidx/compose/ui/input/focus/FocusAwareInputModifier;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/focus/FocusAwareInputModifier;->c(Landroidx/compose/ui/input/focus/FocusAwareEvent;)Z

    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public final q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequestedOnPlaced:Z

    return-void
.end method

.method public final s(Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusStateImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->k(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 11
    return-void
.end method

.method public final t(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusedChild:Landroidx/compose/ui/focus/FocusModifier;

    return-void
.end method

.method public final u(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/modifier/ModifierLocalReadScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->modifierLocalReadScope:Landroidx/compose/ui/modifier/ModifierLocalReadScope;

    return-void
.end method

.method public z0(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/modifier/ModifierLocalReadScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "scope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusModifier;->u(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/focus/FocusModifierKt;->c()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/ui/focus/FocusModifier;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 31
    .line 32
    sget-object v2, Landroidx/compose/ui/focus/FocusModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    move-result v1

    .line 37
    .line 38
    aget v1, v2, v1

    .line 39
    const/4 v2, 0x1

    .line 40
    .line 41
    if-eq v1, v2, :cond_0

    .line 42
    const/4 v3, 0x2

    .line 43
    .line 44
    if-eq v1, v3, :cond_0

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusManager()Landroidx/compose/ui/focus/FocusManager;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v2}, Landroidx/compose/ui/focus/FocusManager;->b(Z)V

    .line 71
    .line 72
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    iget-object v1, v1, Landroidx/compose/ui/focus/FocusModifier;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 77
    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->s(Ljava/lang/Object;)Z

    .line 82
    .line 83
    :cond_2
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusModifier;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 86
    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 91
    .line 92
    :cond_3
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroidx/compose/ui/focus/FocusEventModifierKt;->a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    check-cast v0, Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    move-result v1

    .line 109
    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 113
    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p0}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->g(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 118
    .line 119
    :cond_4
    if-eqz v0, :cond_5

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p0}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->a(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 123
    .line 124
    :cond_5
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->b()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    check-cast v0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 135
    .line 136
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequester:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    move-result v1

    .line 141
    .line 142
    if-nez v1, :cond_7

    .line 143
    .line 144
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequester:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p0}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->f(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 150
    .line 151
    :cond_6
    if-eqz v0, :cond_7

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p0}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->a(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 155
    .line 156
    :cond_7
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequester:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 157
    .line 158
    .line 159
    invoke-static {}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;->b()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    check-cast v0, Landroidx/compose/ui/input/focus/FocusAwareInputModifier;

    .line 167
    .line 168
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->rotaryScrollParent:Landroidx/compose/ui/input/focus/FocusAwareInputModifier;

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    .line 175
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    check-cast v0, Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 179
    .line 180
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->beyondBoundsLayoutParent:Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 181
    .line 182
    .line 183
    invoke-static {}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    check-cast v0, Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 191
    .line 192
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->keyInputModifier:Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 193
    .line 194
    .line 195
    invoke-static {}, Landroidx/compose/ui/focus/FocusPropertiesKt;->c()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    .line 199
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 200
    move-result-object p1

    .line 201
    .line 202
    check-cast p1, Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 203
    .line 204
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusPropertiesModifier:Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 205
    .line 206
    .line 207
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusPropertiesKt;->d(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 208
    return-void
.end method
