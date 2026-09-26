.class public final Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidUiDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lkotlin/coroutines/g;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidUiDispatcher.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidUiDispatcher.android.kt\nandroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1#2:192\n*E\n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected a()Lkotlin/coroutines/g;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v2, "getInstance()"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroidx/core/os/HandlerCompat;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    const-string v3, "createAsync(\n           \u2026d\")\n                    )"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/platform/AndroidUiDispatcher;-><init>(Landroid/view/Choreographer;Landroid/os/Handler;Lkotlin/jvm/internal/k;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->M0()Landroidx/compose/runtime/MonotonicFrameClock;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v1, "no Looper on this thread"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1;->a()Lkotlin/coroutines/g;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
