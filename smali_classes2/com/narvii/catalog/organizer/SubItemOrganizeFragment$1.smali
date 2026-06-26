.class Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;
.super Ljava/lang/Object;
.source "SubItemOrganizeFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;

.field final synthetic val$categoryId:Ljava/lang/String;

.field final synthetic val$sort:Ljava/util/List;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;

    iput-object p2, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->val$sort:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->val$categoryId:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 99
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->val$sort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;

    iget-object v1, v1, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;->adapter:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$ItemListAdapter;

    invoke-virtual {v1}, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$ItemListAdapter;->pageSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->val$sort:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "itemList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 105
    iget-object p1, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 107
    iget-object p1, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->val$categoryId:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 108
    new-instance p1, Lcom/narvii/model/ItemCategory;

    invoke-direct {p1}, Lcom/narvii/model/ItemCategory;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->val$categoryId:Ljava/lang/String;

    iput-object v0, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/narvii/model/User;

    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    iput-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    .line 113
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    iget-object v1, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->val$uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 115
    iget-object p1, p0, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->this$0:Lcom/narvii/catalog/organizer/SubItemOrganizeFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/organizer/SubItemOrganizeFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
