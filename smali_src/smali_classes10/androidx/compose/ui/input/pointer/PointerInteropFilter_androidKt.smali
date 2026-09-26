.class public final Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointerInteropFilter.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerInteropFilter.android.kt\nandroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,350:1\n135#2:351\n*S KotlinDebug\n*F\n+ 1 PointerInteropFilter.android.kt\nandroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt\n*L\n73#1:351\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
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
    const-string v0, "view"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;-><init>()V

    .line 16
    .line 17
    new-instance v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$3;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$3;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->d(Le8/l;)V

    .line 24
    .line 25
    new-instance v1, Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->f(Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setOnRequestDisallowInterceptTouchEvent$ui_release(Le8/l;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
