.class public Lcom/narvii/video/ui/floating/FloatingPermissionUtils;
.super Ljava/lang/Object;
.source "FloatingPermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/ui/floating/FloatingPermissionUtils$Callback;
    }
.end annotation


# static fields
.field public static final OVERLAY_PERMISSION_REQUEST_CODE:I = 0x66


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public canDrawOverlays()Z
    .locals 2

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestDrawOverlays(Lcom/narvii/video/ui/floating/FloatingPermissionUtils$Callback;)V
    .locals 3

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->context:Landroid/content/Context;

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_1

    .line 37
    invoke-interface {p1, v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils$Callback;->call(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 41
    invoke-interface {p1, v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils$Callback;->call(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
