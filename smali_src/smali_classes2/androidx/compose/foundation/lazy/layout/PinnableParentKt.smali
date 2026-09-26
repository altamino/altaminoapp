.class public final Landroidx/compose/foundation/lazy/layout/PinnableParentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ModifierLocalPinnableParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
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
    sget-object v0, Landroidx/compose/foundation/lazy/layout/PinnableParentKt$ModifierLocalPinnableParent$1;->INSTANCE:Landroidx/compose/foundation/lazy/layout/PinnableParentKt$ModifierLocalPinnableParent$1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->a(Le8/a;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/foundation/lazy/layout/PinnableParentKt;->ModifierLocalPinnableParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    return-void
.end method

.method public static final a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/lazy/layout/PinnableParentKt;->ModifierLocalPinnableParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method
