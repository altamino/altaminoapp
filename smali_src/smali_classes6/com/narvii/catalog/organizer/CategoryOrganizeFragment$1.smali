.class Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;

.field final synthetic val$categoryId:Ljava/lang/String;

.field final synthetic val$sort:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;->val$sort:Ljava/util/List;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;->val$categoryId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;->val$sort:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "categoryList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    iget-object p1, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;->val$categoryId:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;->val$sort:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ItemCategory;

    .line 7
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;

    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
