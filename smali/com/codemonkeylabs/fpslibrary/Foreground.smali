.class public Lcom/codemonkeylabs/fpslibrary/Foreground;
.super Ljava/lang/Object;
.source "Foreground.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;
    }
.end annotation


# static fields
.field public static final CHECK_DELAY:J = 0x258L

.field public static final TAG:Ljava/lang/String;

.field private static instance:Lcom/codemonkeylabs/fpslibrary/Foreground;


# instance fields
.field private check:Ljava/lang/Runnable;

.field private foreground:Z

.field private handler:Landroid/os/Handler;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/codemonkeylabs/fpslibrary/Foreground;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemonkeylabs/fpslibrary/Foreground;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->foreground:Z

    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->paused:Z

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->handler:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/codemonkeylabs/fpslibrary/Foreground;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->foreground:Z

    return p0
.end method

.method static synthetic access$002(Lcom/codemonkeylabs/fpslibrary/Foreground;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->foreground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/codemonkeylabs/fpslibrary/Foreground;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->paused:Z

    return p0
.end method

.method static synthetic access$200(Lcom/codemonkeylabs/fpslibrary/Foreground;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->listeners:Ljava/util/List;

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lcom/codemonkeylabs/fpslibrary/Foreground;
    .locals 1

    .line 91
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/Foreground;->instance:Lcom/codemonkeylabs/fpslibrary/Foreground;

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 93
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 94
    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/codemonkeylabs/fpslibrary/Foreground;->init(Landroid/app/Application;)Lcom/codemonkeylabs/fpslibrary/Foreground;

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Foreground is not initialised and cannot obtain the Application object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public static init(Landroid/app/Application;)Lcom/codemonkeylabs/fpslibrary/Foreground;
    .locals 1

    .line 76
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/Foreground;->instance:Lcom/codemonkeylabs/fpslibrary/Foreground;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/Foreground;

    invoke-direct {v0}, Lcom/codemonkeylabs/fpslibrary/Foreground;-><init>()V

    sput-object v0, Lcom/codemonkeylabs/fpslibrary/Foreground;->instance:Lcom/codemonkeylabs/fpslibrary/Foreground;

    .line 78
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/Foreground;->instance:Lcom/codemonkeylabs/fpslibrary/Foreground;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 80
    :cond_0
    sget-object p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->instance:Lcom/codemonkeylabs/fpslibrary/Foreground;

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->paused:Z

    .line 155
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->check:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/codemonkeylabs/fpslibrary/Foreground$1;

    invoke-direct {v0, p0}, Lcom/codemonkeylabs/fpslibrary/Foreground$1;-><init>(Lcom/codemonkeylabs/fpslibrary/Foreground;)V

    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->check:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->paused:Z

    .line 131
    iget-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->foreground:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 132
    iput-boolean v0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->foreground:Z

    .line 134
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 138
    sget-object p1, Lcom/codemonkeylabs/fpslibrary/Foreground;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "went foreground"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;

    .line 141
    :try_start_0
    invoke-interface {v0}, Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;->onBecameForeground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lcom/codemonkeylabs/fpslibrary/Foreground;->TAG:Ljava/lang/String;

    const-string v2, "Listener threw exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 147
    :cond_1
    sget-object p1, Lcom/codemonkeylabs/fpslibrary/Foreground;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "still foreground"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

.method public removeListener(Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/Foreground;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
