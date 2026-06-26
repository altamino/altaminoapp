.class Lcom/narvii/permisson/NVPermission$6;
.super Ljava/lang/Object;
.source "NVPermission.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/permisson/NVPermission;->showRantionaleDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/permisson/NVPermission;

.field final synthetic val$cancelCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/permisson/NVPermission;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/permisson/NVPermission$6;->this$0:Lcom/narvii/permisson/NVPermission;

    iput-object p2, p0, Lcom/narvii/permisson/NVPermission$6;->val$cancelCallback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/narvii/permisson/NVPermission$6;->val$cancelCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 156
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 152
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/permisson/NVPermission$6;->call(Ljava/lang/Integer;)V

    return-void
.end method
