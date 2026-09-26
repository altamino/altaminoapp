.class public final Landroidx/compose/foundation/ClipScrollableContainerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClipScrollableContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipScrollableContainer.kt\nandroidx/compose/foundation/ClipScrollableContainerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,98:1\n155#2:99\n*S KotlinDebug\n*F\n+ 1 ClipScrollableContainer.kt\nandroidx/compose/foundation/ClipScrollableContainerKt\n*L\n62#1:99\n*E\n"
.end annotation


# static fields
.field private static final HorizontalScrollableClipModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MaxSupportedElevation:F

.field private static final VerticalScrollableClipModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x1e

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 7
    move-result v0

    .line 8
    .line 9
    sput v0, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 12
    .line 13
    new-instance v1, Landroidx/compose/foundation/ClipScrollableContainerKt$HorizontalScrollableClipModifier$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/compose/foundation/ClipScrollableContainerKt$HorizontalScrollableClipModifier$1;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    sput-object v1, Landroidx/compose/foundation/ClipScrollableContainerKt;->HorizontalScrollableClipModifier:Landroidx/compose/ui/Modifier;

    .line 23
    .line 24
    new-instance v1, Landroidx/compose/foundation/ClipScrollableContainerKt$VerticalScrollableClipModifier$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Landroidx/compose/foundation/ClipScrollableContainerKt$VerticalScrollableClipModifier$1;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sput-object v0, Landroidx/compose/foundation/ClipScrollableContainerKt;->VerticalScrollableClipModifier:Landroidx/compose/ui/Modifier;

    .line 34
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
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
    const-string v0, "orientation"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Landroidx/compose/foundation/ClipScrollableContainerKt;->VerticalScrollableClipModifier:Landroidx/compose/ui/Modifier;

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object p1, Landroidx/compose/foundation/ClipScrollableContainerKt;->HorizontalScrollableClipModifier:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final b()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    return v0
.end method
