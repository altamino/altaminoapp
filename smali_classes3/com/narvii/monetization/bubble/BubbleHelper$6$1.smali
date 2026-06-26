.class Lcom/narvii/monetization/bubble/BubbleHelper$6$1;
.super Ljava/lang/Object;
.source "BubbleHelper.java"

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

    .line 188
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$6$1;->this$1:Lcom/narvii/monetization/bubble/BubbleHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 191
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$6$1;->this$1:Lcom/narvii/monetization/bubble/BubbleHelper$6;

    iget-object v0, p1, Lcom/narvii/monetization/bubble/BubbleHelper$6;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper$6;->val$bubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$6$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper$6$1$1;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper$6$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubble(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
