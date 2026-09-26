.class Lcom/narvii/monetization/bubble/BubbleHelper$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper$6;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/bubble/BubbleHelper$6;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleHelper$6;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$6$1;->this$1:Lcom/narvii/monetization/bubble/BubbleHelper$6;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$6$1;->this$1:Lcom/narvii/monetization/bubble/BubbleHelper$6;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/monetization/bubble/BubbleHelper$6;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper$6;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$6$1$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper$6$1$1;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper$6$1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubble(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 19
    return-void
.end method
