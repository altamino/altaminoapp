.class public Lcom/codemonkeylabs/fpslibrary/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemonkeylabs/fpslibrary/d$b;
    }
.end annotation


# static fields
.field public static final CHECK_DELAY:J = 0x258L

.field public static final TAG:Ljava/lang/String; = "com.codemonkeylabs.fpslibrary.d"

.field private static instance:Lcom/codemonkeylabs/fpslibrary/d;


# instance fields
.field private check:Ljava/lang/Runnable;

.field private foreground:Z

.field private handler:Landroid/os/Handler;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemonkeylabs/fpslibrary/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/d;->foreground:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/d;->paused:Z

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d;->listeners:Ljava/util/List;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/codemonkeylabs/fpslibrary/d;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/codemonkeylabs/fpslibrary/d;->foreground:Z

    .line 3
    return p0
.end method

.method static synthetic b(Lcom/codemonkeylabs/fpslibrary/d;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/d;->foreground:Z

    .line 3
    return p1
.end method

.method static synthetic c(Lcom/codemonkeylabs/fpslibrary/d;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/codemonkeylabs/fpslibrary/d;->paused:Z

    .line 3
    return p0
.end method

.method static synthetic d(Lcom/codemonkeylabs/fpslibrary/d;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/codemonkeylabs/fpslibrary/d;->listeners:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static f(Landroid/content/Context;)Lcom/codemonkeylabs/fpslibrary/d;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/d;->instance:Lcom/codemonkeylabs/fpslibrary/d;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    instance-of v0, p0, Landroid/app/Application;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p0, Landroid/app/Application;

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/codemonkeylabs/fpslibrary/d;->g(Landroid/app/Application;)Lcom/codemonkeylabs/fpslibrary/d;

    .line 18
    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "Foreground is not initialised and cannot obtain the Application object"

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    :cond_1
    return-object v0
.end method

.method public static g(Landroid/app/Application;)Lcom/codemonkeylabs/fpslibrary/d;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/d;->instance:Lcom/codemonkeylabs/fpslibrary/d;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/d;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/codemonkeylabs/fpslibrary/d;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lcom/codemonkeylabs/fpslibrary/d;->instance:Lcom/codemonkeylabs/fpslibrary/d;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 15
    .line 16
    :cond_0
    sget-object p0, Lcom/codemonkeylabs/fpslibrary/d;->instance:Lcom/codemonkeylabs/fpslibrary/d;

    .line 17
    return-object p0
.end method


# virtual methods
.method public e(Lcom/codemonkeylabs/fpslibrary/d$b;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d;->listeners:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public h(Lcom/codemonkeylabs/fpslibrary/d$b;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d;->listeners:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/d;->paused:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/d;->check:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/d;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/d$a;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/codemonkeylabs/fpslibrary/d$a;-><init>(Lcom/codemonkeylabs/fpslibrary/d;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d;->check:Ljava/lang/Runnable;

    .line 22
    .line 23
    const-wide/16 v1, 0x258

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/d;->paused:Z

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/d;->foreground:Z

    .line 6
    const/4 v0, 0x1

    .line 7
    xor-int/2addr p1, v0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/d;->foreground:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d;->check:Ljava/lang/Runnable;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/codemonkeylabs/fpslibrary/d;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lcom/codemonkeylabs/fpslibrary/d;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "went foreground"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/d;->listeners:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/codemonkeylabs/fpslibrary/d$b;

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-interface {v0}, Lcom/codemonkeylabs/fpslibrary/d$b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .line 53
    sget-object v1, Lcom/codemonkeylabs/fpslibrary/d;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "Listener threw exception!"

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    sget-object p1, Lcom/codemonkeylabs/fpslibrary/d;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    const-string/jumbo v0, "still foreground"

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
