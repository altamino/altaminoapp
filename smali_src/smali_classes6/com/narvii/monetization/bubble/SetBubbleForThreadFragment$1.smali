.class Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->onCreateChatClicked()V
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
.field final synthetic this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    .line 4
    iget-object v0, p1, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->bubble:Lcom/narvii/model/ChatBubble;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "statistics"

    .line 5
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string v0, "Picks a chat bubble"

    .line 6
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Picks a chat bubble Total"

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->bubble:Lcom/narvii/model/ChatBubble;

    iget v0, v0, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Customized"

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Chat"

    const-string v1, "Current Chat"

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Store Product Detail Page"

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
