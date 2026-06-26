.class Lcom/narvii/monetization/bubble/BubbleHelper$6$1$1;
.super Ljava/lang/Object;
.source "BubbleHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper$6$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/monetization/bubble/BubbleHelper$6$1;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleHelper$6$1;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$6$1$1;->this$2:Lcom/narvii/monetization/bubble/BubbleHelper$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    .line 194
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$6$1$1;->this$2:Lcom/narvii/monetization/bubble/BubbleHelper$6$1;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper$6$1;->this$1:Lcom/narvii/monetization/bubble/BubbleHelper$6;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper$6;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 196
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$6$1$1;->this$2:Lcom/narvii/monetization/bubble/BubbleHelper$6$1;

    iget-object v1, v1, Lcom/narvii/monetization/bubble/BubbleHelper$6$1;->this$1:Lcom/narvii/monetization/bubble/BubbleHelper$6;

    iget-object v1, v1, Lcom/narvii/monetization/bubble/BubbleHelper$6;->val$bubble:Lcom/narvii/model/ChatBubble;

    const-string v2, "delete"

    invoke-direct {v0, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 197
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$6$1$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
