.class Lcom/narvii/permisson/PermissionRationaleDialog$3;
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
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$3;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$3;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->b(Lcom/narvii/permisson/PermissionRationaleDialog;)Lcom/narvii/util/Callback;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$3;->this$0:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->b(Lcom/narvii/permisson/PermissionRationaleDialog;)Lcom/narvii/util/Callback;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method
