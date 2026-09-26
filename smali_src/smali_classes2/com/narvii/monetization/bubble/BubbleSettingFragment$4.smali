.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveCurSetting(Lcom/narvii/model/ChatBubble;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-ne p2, v2, :cond_0

    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {p1, v0, v3}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->J(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;Z)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 17
    .line 18
    const-string v0, "statistics"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 25
    .line 26
    const-string v0, "Picks a chat bubble"

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string v0, "Picks a chat bubble Total"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 39
    .line 40
    iget v0, v0, Lcom/narvii/model/ChatBubble;->type:I

    .line 41
    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    move v1, v2

    .line 44
    .line 45
    :cond_1
    const-string v0, "Customized"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    if-ne p2, v2, :cond_2

    .line 52
    .line 53
    const-string p2, "All Chats"

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    const-string p2, "Current Chat"

    .line 57
    .line 58
    :goto_1
    const-string v0, "Chat"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    const-string p2, "Source"

    .line 65
    .line 66
    const-string v0, "Chat Bubble Picker"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 70
    return-void
.end method
