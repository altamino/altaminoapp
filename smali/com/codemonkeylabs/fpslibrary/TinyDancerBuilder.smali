.class public Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;
.super Ljava/lang/Object;
.source "TinyDancerBuilder.java"


# static fields
.field private static foregroundListener:Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;

.field private static fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

.field private static fpsFrameCallback:Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;

.field private static tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder$1;

    invoke-direct {v0}, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder$1;-><init>()V

    sput-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->foregroundListener:Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    invoke-direct {v0}, Lcom/codemonkeylabs/fpslibrary/FPSConfig;-><init>()V

    sput-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    return-void
.end method

.method static synthetic access$000()Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;
    .locals 1

    .line 18
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    return-object v0
.end method

.method protected static hide(Landroid/content/Context;)V
    .locals 2

    .line 58
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->fpsFrameCallback:Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;->setEnabled(Z)V

    .line 60
    invoke-static {p0}, Lcom/codemonkeylabs/fpslibrary/Foreground;->get(Landroid/content/Context;)Lcom/codemonkeylabs/fpslibrary/Foreground;

    move-result-object p0

    sget-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->foregroundListener:Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;

    invoke-virtual {p0, v0}, Lcom/codemonkeylabs/fpslibrary/Foreground;->removeListener(Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;)V

    .line 62
    sget-object p0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    invoke-virtual {p0}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->destroy()V

    const/4 p0, 0x0

    .line 65
    sput-object p0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    .line 66
    sput-object p0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->fpsFrameCallback:Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;

    .line 67
    sput-object p0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    return-void
.end method

.method private overlayPermRequest(Landroid/content/Context;)Z
    .locals 3

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 179
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setFrameRate(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "window"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    iput v2, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->deviceRefreshRateInMs:F

    .line 47
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    iput p1, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->refreshRate:F

    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;)V
    .locals 3

    .line 79
    invoke-direct {p0, p1}, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->overlayPermRequest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->show()V

    return-void

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->setFrameRate(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    sget-object v2, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    invoke-direct {v0, v1, v2}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;-><init>(Landroid/app/Application;Lcom/codemonkeylabs/fpslibrary/FPSConfig;)V

    sput-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    .line 97
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;

    sget-object v1, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    sget-object v2, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    invoke-direct {v0, v1, v2}, Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;-><init>(Lcom/codemonkeylabs/fpslibrary/FPSConfig;Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;)V

    sput-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->fpsFrameCallback:Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;

    .line 98
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    sget-object v1, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->fpsFrameCallback:Lcom/codemonkeylabs/fpslibrary/FPSFrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/codemonkeylabs/fpslibrary/Foreground;->init(Landroid/app/Application;)Lcom/codemonkeylabs/fpslibrary/Foreground;

    move-result-object p1

    sget-object v0, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->foregroundListener:Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;

    invoke-virtual {p1, v0}, Lcom/codemonkeylabs/fpslibrary/Foreground;->addListener(Lcom/codemonkeylabs/fpslibrary/Foreground$Listener;)V

    return-void
.end method
