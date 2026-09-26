.class public Lcom/codemonkeylabs/fpslibrary/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static foregroundListener:Lcom/codemonkeylabs/fpslibrary/d$b;

.field private static fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

.field private static fpsFrameCallback:Lcom/codemonkeylabs/fpslibrary/c;

.field private static tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/i$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/codemonkeylabs/fpslibrary/i$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/codemonkeylabs/fpslibrary/i;->foregroundListener:Lcom/codemonkeylabs/fpslibrary/d$b;

    .line 8
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/b;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/codemonkeylabs/fpslibrary/b;-><init>()V

    .line 9
    .line 10
    sput-object v0, Lcom/codemonkeylabs/fpslibrary/i;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 11
    return-void
.end method

.method static synthetic a()Lcom/codemonkeylabs/fpslibrary/ui/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/i;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/c;

    return-object v0
.end method

.method protected static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/i;->fpsFrameCallback:Lcom/codemonkeylabs/fpslibrary/c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/codemonkeylabs/fpslibrary/c;->d(Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/codemonkeylabs/fpslibrary/d;->f(Landroid/content/Context;)Lcom/codemonkeylabs/fpslibrary/d;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/i;->foregroundListener:Lcom/codemonkeylabs/fpslibrary/d$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/codemonkeylabs/fpslibrary/d;->h(Lcom/codemonkeylabs/fpslibrary/d$b;)V

    .line 16
    .line 17
    sget-object p0, Lcom/codemonkeylabs/fpslibrary/i;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/codemonkeylabs/fpslibrary/ui/c;->d()V

    .line 21
    const/4 p0, 0x0

    .line 22
    .line 23
    sput-object p0, Lcom/codemonkeylabs/fpslibrary/i;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 24
    .line 25
    sput-object p0, Lcom/codemonkeylabs/fpslibrary/i;->fpsFrameCallback:Lcom/codemonkeylabs/fpslibrary/c;

    .line 26
    .line 27
    sput-object p0, Lcom/codemonkeylabs/fpslibrary/i;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 28
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "package:"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    .line 41
    const/high16 v1, 0x10000000

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/codemonkeylabs/fpslibrary/i;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    :goto_0
    return p1
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "window"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Landroid/view/WindowManager;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/i;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    .line 19
    move-result v1

    .line 20
    .line 21
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 22
    div-float/2addr v2, v1

    .line 23
    .line 24
    iput v2, v0, Lcom/codemonkeylabs/fpslibrary/b;->deviceRefreshRateInMs:F

    .line 25
    .line 26
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/i;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    .line 30
    move-result p1

    .line 31
    .line 32
    iput p1, v0, Lcom/codemonkeylabs/fpslibrary/b;->refreshRate:F

    .line 33
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public e(Landroid/content/Context;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/codemonkeylabs/fpslibrary/i;->c(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/i;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/codemonkeylabs/fpslibrary/ui/c;->f()V

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/codemonkeylabs/fpslibrary/i;->d(Landroid/content/Context;)V

    .line 19
    .line 20
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Landroid/app/Application;

    .line 27
    .line 28
    sget-object v2, Lcom/codemonkeylabs/fpslibrary/i;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Lcom/codemonkeylabs/fpslibrary/ui/c;-><init>(Landroid/app/Application;Lcom/codemonkeylabs/fpslibrary/b;)V

    .line 32
    .line 33
    sput-object v0, Lcom/codemonkeylabs/fpslibrary/i;->tinyCoach:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 34
    .line 35
    new-instance v1, Lcom/codemonkeylabs/fpslibrary/c;

    .line 36
    .line 37
    sget-object v2, Lcom/codemonkeylabs/fpslibrary/i;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2, v0}, Lcom/codemonkeylabs/fpslibrary/c;-><init>(Lcom/codemonkeylabs/fpslibrary/b;Lcom/codemonkeylabs/fpslibrary/ui/c;)V

    .line 41
    .line 42
    sput-object v1, Lcom/codemonkeylabs/fpslibrary/i;->fpsFrameCallback:Lcom/codemonkeylabs/fpslibrary/c;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    sget-object v1, Lcom/codemonkeylabs/fpslibrary/i;->fpsFrameCallback:Lcom/codemonkeylabs/fpslibrary/c;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Landroid/app/Application;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/codemonkeylabs/fpslibrary/d;->g(Landroid/app/Application;)Lcom/codemonkeylabs/fpslibrary/d;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/i;->foregroundListener:Lcom/codemonkeylabs/fpslibrary/d$b;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/codemonkeylabs/fpslibrary/d;->e(Lcom/codemonkeylabs/fpslibrary/d$b;)V

    .line 67
    return-void
.end method
