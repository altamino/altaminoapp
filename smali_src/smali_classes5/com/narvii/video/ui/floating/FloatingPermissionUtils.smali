.class public Lcom/narvii/video/ui/floating/FloatingPermissionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->context:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public canDrawOverlays()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public requestDrawOverlays(Lcom/narvii/video/ui/floating/FloatingPermissionUtils$Callback;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

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
    const-string v2, "package:"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->context:Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils$Callback;->call(Landroid/content/Intent;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    const/4 v0, 0x0

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils$Callback;->call(Landroid/content/Intent;)V

    .line 53
    :cond_1
    :goto_0
    return-void
.end method
