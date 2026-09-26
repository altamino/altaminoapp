.class public final Landroidx/window/layout/SidecarCompat$TranslatingCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/sidecar/SidecarInterface$SidecarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TranslatingCallback"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidecarCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidecarCompat.kt\nandroidx/window/layout/SidecarCompat$TranslatingCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,478:1\n1849#2:479\n1850#2:481\n1#3:480\n*S KotlinDebug\n*F\n+ 1 SidecarCompat.kt\nandroidx/window/layout/SidecarCompat$TranslatingCallback\n*L\n337#1:479\n337#1:481\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/window/layout/SidecarCompat;


# direct methods
.method public constructor <init>(Landroidx/window/layout/SidecarCompat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V
    .locals 6
    .param p1    # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "newDeviceState"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/window/layout/SidecarCompat;->f(Landroidx/window/layout/SidecarCompat;)Ljava/util/Map;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Landroid/app/Activity;

    .line 37
    .line 38
    sget-object v3, Landroidx/window/layout/SidecarCompat;->Companion:Landroidx/window/layout/SidecarCompat$Companion;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Landroidx/window/layout/SidecarCompat$Companion;->a(Landroid/app/Activity;)Landroid/os/IBinder;

    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x0

    .line 44
    .line 45
    if-nez v3, :cond_0

    .line 46
    goto :goto_1

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v1}, Landroidx/window/layout/SidecarCompat;->g()Landroidx/window/sidecar/SidecarInterface;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    if-nez v5, :cond_1

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-interface {v5, v3}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-static {v1}, Landroidx/window/layout/SidecarCompat;->d(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    if-nez v3, :cond_2

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-static {v1}, Landroidx/window/layout/SidecarCompat;->e(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/SidecarAdapter;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v4, p1}, Landroidx/window/layout/SidecarAdapter;->e(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/WindowLayoutInfo;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    .line 75
    invoke-interface {v3, v2, v4}, Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;->a(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-void
.end method

.method public onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V
    .locals 2
    .param p1    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "windowToken"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "newLayout"

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroidx/window/layout/SidecarCompat;->f(Landroidx/window/layout/SidecarCompat;)Ljava/util/Map;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroid/app/Activity;

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-string p1, "SidecarCompat"

    .line 29
    .line 30
    const-string p2, "Unable to resolve activity from window token. Missing a call to #onWindowLayoutChangeListenerAdded()?"

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroidx/window/layout/SidecarCompat;->e(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/SidecarAdapter;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/window/layout/SidecarCompat;->g()Landroidx/window/sidecar/SidecarInterface;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    const/4 v1, 0x0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-interface {v1}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    :goto_0
    if-nez v1, :cond_2

    .line 57
    .line 58
    new-instance v1, Landroidx/window/sidecar/SidecarDeviceState;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0, p2, v1}, Landroidx/window/layout/SidecarAdapter;->e(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/WindowLayoutInfo;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Landroidx/window/layout/SidecarCompat;->d(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-interface {v0, p1, p2}, Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;->a(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    .line 78
    :goto_1
    return-void
.end method
