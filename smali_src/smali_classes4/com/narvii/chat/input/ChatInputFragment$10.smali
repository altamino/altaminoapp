.class Lcom/narvii/chat/input/ChatInputFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/RecordFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onRecordFinish(Landroid/net/Uri;JI)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Media;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 6
    .line 7
    iput p4, v0, Lcom/narvii/model/Media;->type:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->C(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object p4, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {p4}, Lcom/narvii/chat/input/ChatInputFragment;->S(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 25
    move-result-object p4

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->sendVoiceMessage(Lcom/narvii/model/Media;JLcom/fasterxml/jackson/databind/node/ObjectNode;)Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 31
    .line 32
    const-string p2, "voice"

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/narvii/chat/input/ChatInputFragment;->U(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/String;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 38
    .line 39
    const-string p2, "statistics"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 46
    .line 47
    const-string p2, "Chat Message Sent"

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    const-string p2, "Message Sent Total"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-string p2, "Message Type"

    .line 60
    .line 61
    const-string p3, "Voice Note"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 71
    move-result-object p2

    .line 72
    const/4 p3, 0x0

    .line 73
    .line 74
    .line 75
    invoke-static {p2, p3}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    const-string p3, "Type"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 85
    .line 86
    iget-object p2, p2, Lcom/narvii/chat/input/ChatInputFragment;->source:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 93
    .line 94
    .line 95
    invoke-static {p2, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 96
    return-void
.end method
