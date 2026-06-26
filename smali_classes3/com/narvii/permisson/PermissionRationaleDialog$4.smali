.class Lcom/narvii/permisson/PermissionRationaleDialog$4;
.super Ljava/lang/Object;
.source "PermissionRationaleDialog.java"

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

    .line 157
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$4;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 160
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$4;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-static {v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->access$200(Lcom/narvii/permisson/PermissionRationaleDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$4;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-static {v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->access$200(Lcom/narvii/permisson/PermissionRationaleDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
