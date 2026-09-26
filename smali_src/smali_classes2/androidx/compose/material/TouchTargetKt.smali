.class public final Landroidx/compose/material/TouchTargetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchTarget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchTarget.kt\nandroidx/compose/material/TouchTargetKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,96:1\n135#2:97\n*S KotlinDebug\n*F\n+ 1 TouchTarget.kt\nandroidx/compose/material/TouchTargetKt\n*L\n36#1:97\n*E\n"
.end annotation


# static fields
.field private static final LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
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
    sget-object v0, Landroidx/compose/material/TouchTargetKt$LocalMinimumTouchTargetEnforcement$1;->INSTANCE:Landroidx/compose/material/TouchTargetKt$LocalMinimumTouchTargetEnforcement$1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->e(Le8/a;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/material/TouchTargetKt;->LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 9
    return-void
.end method

.method public static final a()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/TouchTargetKt;->LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/material/TouchTargetKt$minimumTouchTargetSize$$inlined$debugInspectorInfo$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Landroidx/compose/material/TouchTargetKt$minimumTouchTargetSize$$inlined$debugInspectorInfo$1;-><init>()V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    :goto_0
    sget-object v1, Landroidx/compose/material/TouchTargetKt$minimumTouchTargetSize$2;->INSTANCE:Landroidx/compose/material/TouchTargetKt$minimumTouchTargetSize$2;

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
