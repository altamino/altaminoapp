.class Lcom/narvii/permisson/NVPermission$1;
.super Ljava/lang/Object;
.source "NVPermission.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/permisson/NVPermission;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/permisson/NVPermission;


# direct methods
.method constructor <init>(Lcom/narvii/permisson/NVPermission;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/permisson/NVPermission$1;->this$0:Lcom/narvii/permisson/NVPermission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 104
    iget-object p1, p0, Lcom/narvii/permisson/NVPermission$1;->this$0:Lcom/narvii/permisson/NVPermission;

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->access$000(Lcom/narvii/permisson/NVPermission;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$1;->this$0:Lcom/narvii/permisson/NVPermission;

    iget-object v1, v0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    iget v0, v0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    invoke-static {p1, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
