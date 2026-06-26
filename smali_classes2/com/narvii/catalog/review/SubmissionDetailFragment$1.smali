.class Lcom/narvii/catalog/review/SubmissionDetailFragment$1;
.super Ljava/lang/Object;
.source "SubmissionDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/review/SubmissionDetailFragment;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/narvii/catalog/review/SubmissionDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/review/SubmissionDetailFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/narvii/catalog/review/SubmissionDetailFragment$1;->this$0:Lcom/narvii/catalog/review/SubmissionDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/narvii/catalog/review/SubmissionDetailFragment$1;->this$0:Lcom/narvii/catalog/review/SubmissionDetailFragment;

    iget-object p1, p1, Lcom/narvii/catalog/review/SubmissionDetailFragment;->itemSubmission:Lcom/narvii/catalog/review/ItemSubmission;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/catalog/review/ItemSubmission;

    const/4 v0, 0x2

    .line 78
    iput v0, p1, Lcom/narvii/catalog/review/ItemSubmission;->status:I

    .line 79
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/catalog/review/SubmissionDetailFragment$1;->this$0:Lcom/narvii/catalog/review/SubmissionDetailFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 82
    new-instance p1, Lcom/narvii/model/ItemCategory;

    invoke-direct {p1}, Lcom/narvii/model/ItemCategory;-><init>()V

    .line 83
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 84
    iget-object p1, p0, Lcom/narvii/catalog/review/SubmissionDetailFragment$1;->this$0:Lcom/narvii/catalog/review/SubmissionDetailFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 86
    iget-object p1, p0, Lcom/narvii/catalog/review/SubmissionDetailFragment$1;->this$0:Lcom/narvii/catalog/review/SubmissionDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/review/SubmissionDetailFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
