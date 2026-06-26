.class Lcom/narvii/catalog/review/CatalogSubmissionListFragment$1;
.super Ljava/lang/Object;
.source "CatalogSubmissionListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->reject(Lcom/narvii/catalog/review/ItemSubmission;)V
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
.field final synthetic this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

.field final synthetic val$i:Lcom/narvii/catalog/review/ItemSubmission;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/review/CatalogSubmissionListFragment;Lcom/narvii/catalog/review/ItemSubmission;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$1;->this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    iput-object p2, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$1;->val$i:Lcom/narvii/catalog/review/ItemSubmission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 210
    iget-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$1;->val$i:Lcom/narvii/catalog/review/ItemSubmission;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/catalog/review/ItemSubmission;

    const/4 v0, 0x3

    .line 211
    iput v0, p1, Lcom/narvii/catalog/review/ItemSubmission;->status:I

    .line 212
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 213
    iget-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$1;->this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
