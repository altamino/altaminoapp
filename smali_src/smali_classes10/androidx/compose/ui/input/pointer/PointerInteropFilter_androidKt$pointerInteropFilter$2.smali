.class final Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
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
    value = "SMAP\nPointerInteropFilter.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerInteropFilter.android.kt\nandroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,350:1\n25#2:351\n1057#3,6:352\n*S KotlinDebug\n*F\n+ 1 PointerInteropFilter.android.kt\nandroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2\n*L\n79#1:351\n79#1:352,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $onTouchEvent:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requestDisallowInterceptTouchEvent:Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 0
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
    const p1, 0x1650851b

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
    new-instance p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 41
    .line 42
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 43
    .line 44
    iget-object p3, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2;->$onTouchEvent:Le8/l;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->d(Le8/l;)V

    .line 48
    .line 49
    iget-object p3, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2;->$requestDisallowInterceptTouchEvent:Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->f(Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 56
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
