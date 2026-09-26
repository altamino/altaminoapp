.class public final Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/SidecarCompat;->j(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic this$0:Landroidx/window/layout/SidecarCompat;


# direct methods
.method constructor <init>(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->$activity:Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "newConfig"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroidx/window/layout/SidecarCompat;->d(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->$activity:Landroid/app/Activity;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/window/layout/SidecarCompat;->h(Landroid/app/Activity;)Landroidx/window/layout/WindowLayoutInfo;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;->a(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    .line 27
    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
