.class Lcom/narvii/catalog/category/CategoryPostActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/category/CategoryPostActivity;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/category/CategoryPostActivity;

.field final synthetic val$c:Lcom/narvii/model/ItemCategory;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/category/CategoryPostActivity;Lcom/narvii/model/ItemCategory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity$1;->this$0:Lcom/narvii/catalog/category/CategoryPostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/catalog/category/CategoryPostActivity$1;->val$c:Lcom/narvii/model/ItemCategory;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity$1;->this$0:Lcom/narvii/catalog/category/CategoryPostActivity;

    .line 2
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 3
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "delete"

    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPostActivity$1;->val$c:Lcom/narvii/model/ItemCategory;

    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPostActivity$1;->this$0:Lcom/narvii/catalog/category/CategoryPostActivity;

    .line 4
    invoke-virtual {v0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
