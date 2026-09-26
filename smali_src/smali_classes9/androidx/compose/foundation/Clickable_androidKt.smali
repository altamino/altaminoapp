.class public final Landroidx/compose/foundation/Clickable_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClickable.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.android.kt\nandroidx/compose/foundation/Clickable_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,65:1\n76#2:66\n*S KotlinDebug\n*F\n+ 1 Clickable.android.kt\nandroidx/compose/foundation/Clickable_androidKt\n*L\n35#1:66\n*E\n"
.end annotation


# static fields
.field private static final TapIndicationDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    sput-wide v0, Landroidx/compose/foundation/Clickable_androidKt;->TapIndicationDelay:J

    .line 8
    return-void
.end method

.method public static final synthetic a(Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/Clickable_androidKt;->e(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/Clickable_androidKt;->TapIndicationDelay:J

    return-wide v0
.end method

.method public static final c(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$isClick"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->b(Landroid/view/KeyEvent;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->b()I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/KeyEventType;->f(II)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/Key_androidKt;->b(J)I

    .line 29
    move-result p0

    .line 30
    .line 31
    const/16 v0, 0x17

    .line 32
    .line 33
    if-eq p0, v0, :cond_0

    .line 34
    .line 35
    const/16 v0, 0x42

    .line 36
    .line 37
    if-eq p0, v0, :cond_0

    .line 38
    .line 39
    const/16 v0, 0xa0

    .line 40
    .line 41
    if-eq p0, v0, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 46
    :goto_1
    return p0
.end method

.method public static final d(Landroidx/compose/runtime/Composer;I)Le8/a;
    .locals 1
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p1, -0x76a4c0a8

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/foundation/Clickable_androidKt$isComposeRootInScrollableContainer$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroidx/compose/foundation/Clickable_androidKt$isComposeRootInScrollableContainer$1;-><init>(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 25
    return-object v0
.end method

.method private static final e(Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    :goto_0
    if-eqz p0, :cond_1

    .line 7
    .line 8
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method
