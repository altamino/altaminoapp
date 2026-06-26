.class Lcom/narvii/catalog/category/CategoryPostActivity$1;
.super Ljava/lang/Object;
.source "CategoryPostActivity.java"

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

    .line 165
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity$1;->this$0:Lcom/narvii/catalog/category/CategoryPostActivity;

    iput-object p2, p0, Lcom/narvii/catalog/category/CategoryPostActivity$1;->val$c:Lcom/narvii/model/ItemCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 168
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity$1;->this$0:Lcom/narvii/catalog/category/CategoryPostActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 170
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPostActivity$1;->val$c:Lcom/narvii/model/ItemCategory;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 171
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPostActivity$1;->this$0:Lcom/narvii/catalog/category/CategoryPostActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
