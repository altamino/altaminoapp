.class Lcom/narvii/optionmenu/OptionMenuFragment$3;
.super Ljava/lang/Object;
.source "OptionMenuFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/optionmenu/OptionMenuFragment;->delete(Lcom/narvii/model/ChatMessage;)V
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
.field final synthetic this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

.field final synthetic val$msg:Lcom/narvii/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$3;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    iput-object p2, p0, Lcom/narvii/optionmenu/OptionMenuFragment$3;->val$msg:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 313
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$3;->val$msg:Lcom/narvii/model/ChatMessage;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 314
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$3;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 310
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/optionmenu/OptionMenuFragment$3;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
