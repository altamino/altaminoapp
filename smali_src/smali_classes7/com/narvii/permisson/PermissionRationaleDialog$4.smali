.class Lcom/narvii/permisson/PermissionRationaleDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/permisson/PermissionRationaleDialog;->parepageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/permisson/PermissionRationaleDialog;


# direct methods
.method constructor <init>(Lcom/narvii/permisson/PermissionRationaleDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$4;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$4;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->c(Lcom/narvii/permisson/PermissionRationaleDialog;)Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    const-string v2, "package"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$4;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->c(Lcom/narvii/permisson/PermissionRationaleDialog;)Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog$4;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    return-void
.end method
