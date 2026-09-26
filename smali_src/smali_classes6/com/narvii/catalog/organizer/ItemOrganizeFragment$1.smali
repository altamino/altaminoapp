.class Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->submit()V
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
.field final synthetic this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

.field final synthetic val$sort:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->val$sort:Ljava/util/List;

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

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->val$sort:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->val$sort:Ljava/util/List;

    .line 4
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "itemList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    const/4 v1, -0x1

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    iget-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->u(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Lcom/narvii/model/ItemCategory;

    invoke-direct {p1}, Lcom/narvii/model/ItemCategory;-><init>()V

    iget-object v0, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 9
    invoke-static {v0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->u(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcom/narvii/model/User;

    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    iput-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    :cond_1
    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    iget-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 11
    invoke-static {v1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->w(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
