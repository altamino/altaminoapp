.class Lcom/narvii/headlines/ExternalPostPreviewFragment$4;
.super Ljava/lang/Object;
.source "ExternalPostPreviewFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/ExternalPostPreviewFragment;->sendNoInterestRequest(Lcom/narvii/model/Feed;)V
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
.field final synthetic this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

.field final synthetic val$item:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$4;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$4;->val$item:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 325
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$4;->val$item:Lcom/narvii/model/Feed;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 326
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$4;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 321
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment$4;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
