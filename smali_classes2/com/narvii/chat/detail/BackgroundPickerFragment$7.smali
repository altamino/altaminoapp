.class Lcom/narvii/chat/detail/BackgroundPickerFragment$7;
.super Ljava/lang/Object;
.source "BackgroundPickerFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/BackgroundPickerFragment;->setBackgroundUrl(Lcom/narvii/model/Media;)V
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
.field final synthetic this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

.field final synthetic val$m:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;Lcom/narvii/model/Media;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    iput-object p2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;->val$m:Lcom/narvii/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 227
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->access$000(Lcom/narvii/chat/detail/BackgroundPickerFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 228
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;->val$m:Lcom/narvii/model/Media;

    invoke-virtual {p1, v0}, Lcom/narvii/model/ChatThread;->setBackground(Lcom/narvii/model/Media;)V

    .line 229
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 230
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 232
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 224
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
