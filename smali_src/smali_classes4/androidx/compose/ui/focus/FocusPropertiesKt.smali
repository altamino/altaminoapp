.class public final Landroidx/compose/ui/focus/FocusPropertiesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusProperties.kt\nandroidx/compose/ui/focus/FocusPropertiesKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,255:1\n135#2:256\n*S KotlinDebug\n*F\n+ 1 FocusProperties.kt\nandroidx/compose/ui/focus/FocusPropertiesKt\n*L\n178#1:256\n*E\n"
.end annotation


# static fields
.field private static final ModifierLocalFocusProperties:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/focus/FocusPropertiesModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusPropertiesKt$ModifierLocalFocusProperties$1;->INSTANCE:Landroidx/compose/ui/focus/FocusPropertiesKt$ModifierLocalFocusProperties$1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->a(Le8/a;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/focus/FocusPropertiesKt;->ModifierLocalFocusProperties:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    return-void
.end method

.method public static final a(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 2
    .param p0    # Landroidx/compose/ui/focus/FocusProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/FocusProperties;->g(Z)V

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusProperties;->q(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusProperties;->l(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusProperties;->e(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusProperties;->h(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusProperties;->n(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusProperties;->o(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusProperties;->i(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/FocusProperties;->m(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 68
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusProperties;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "scope"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Landroidx/compose/ui/focus/FocusPropertiesKt$focusProperties$$inlined$debugInspectorInfo$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroidx/compose/ui/focus/FocusPropertiesKt$focusProperties$$inlined$debugInspectorInfo$1;-><init>(Le8/l;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/focus/FocusPropertiesModifier;-><init>(Le8/l;Le8/l;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static final c()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/focus/FocusPropertiesModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusPropertiesKt;->ModifierLocalFocusProperties:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method

.method public static final d(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 3
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->l()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusPropertiesKt;->a(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    sget-object v1, Landroidx/compose/ui/focus/FocusModifier;->Companion:Landroidx/compose/ui/focus/FocusModifier$Companion;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusModifier$Companion;->a()Le8/l;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    new-instance v2, Landroidx/compose/ui/focus/FocusPropertiesKt$refreshFocusProperties$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, p0}, Landroidx/compose/ui/focus/FocusPropertiesKt$refreshFocusProperties$1;-><init>(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0, v1, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->e(Landroidx/compose/ui/node/OwnerScope;Le8/l;Le8/a;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusPropertiesKt;->e(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusProperties;)V

    .line 57
    return-void
.end method

.method public static final e(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 1
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/focus/FocusProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "properties"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusProperties;->p()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->a(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->e(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 24
    :goto_0
    return-void
.end method
