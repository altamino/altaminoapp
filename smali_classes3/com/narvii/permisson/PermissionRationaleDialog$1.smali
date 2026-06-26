.class Lcom/narvii/permisson/PermissionRationaleDialog$1;
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

    .line 132
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$1;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$1;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->access$000(Lcom/narvii/permisson/PermissionRationaleDialog;)Lcom/narvii/util/Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$1;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->access$000(Lcom/narvii/permisson/PermissionRationaleDialog;)Lcom/narvii/util/Callback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
