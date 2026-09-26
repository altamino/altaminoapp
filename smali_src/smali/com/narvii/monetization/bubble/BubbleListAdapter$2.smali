.class Lcom/narvii/monetization/bubble/BubbleListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleListAdapter;->deleteBubble(Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleListAdapter;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleListAdapter;Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;->this$0:Lcom/narvii/monetization/bubble/BubbleListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "delete"

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;->this$0:Lcom/narvii/monetization/bubble/BubbleListAdapter;

    .line 4
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
