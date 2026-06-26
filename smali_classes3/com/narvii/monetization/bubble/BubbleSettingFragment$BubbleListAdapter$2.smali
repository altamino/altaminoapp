.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;
.super Ljava/lang/Object;
.source "BubbleSettingFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->deleteBubble(Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V
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
.field final synthetic this$1:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;->this$1:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    iput-object p3, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 557
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 558
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 559
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;->this$1:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 560
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 561
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 554
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
