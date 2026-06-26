.class Lcom/narvii/monetization/bubble/BubbleHelper$5;
.super Ljava/lang/Object;
.source "BubbleHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper;->onClickEditBubbleButton(Lcom/narvii/model/ChatBubble;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/model/ChatBubble;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$5;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleHelper$5;->val$bubble:Lcom/narvii/model/ChatBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$5;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper$5;->val$bubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->editChatBubble(Lcom/narvii/model/ChatBubble;)V

    return-void
.end method
