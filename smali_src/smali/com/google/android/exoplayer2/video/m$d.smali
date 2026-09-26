.class final Lcom/google/android/exoplayer2/video/m$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/video/m$b;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field private listener:Lcom/google/android/exoplayer2/video/m$b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/m$d;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 6
    return-void
.end method

.method private c()Landroid/view/Display;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/m$d;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/m$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "display"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/video/m$d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/video/m$d;-><init>(Landroid/hardware/display/DisplayManager;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/m$d;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/m$d;->listener:Lcom/google/android/exoplayer2/video/m$b$a;

    .line 9
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/video/m$b$a;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/m$d;->listener:Lcom/google/android/exoplayer2/video/m$b$a;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/m$d;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/exoplayer2/util/o0;->u()Landroid/os/Handler;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/m$d;->c()Landroid/view/Display;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/video/m$b$a;->a(Landroid/view/Display;)V

    .line 19
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/m$d;->listener:Lcom/google/android/exoplayer2/video/m$b$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/m$d;->c()Landroid/view/Display;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/m$b$a;->a(Landroid/view/Display;)V

    .line 14
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
