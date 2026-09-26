.class Lcom/narvii/monetization/bubble/BubbleEditFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleEditFragment;->saveBubble(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

.field final synthetic val$allowUpdate:Z


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->val$allowUpdate:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->r(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->o(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/model/BubbleInfo;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->val$allowUpdate:Z

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    iput-object v1, v0, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 30
    .line 31
    :cond_1
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, v0, Lcom/narvii/model/BubbleInfo;->coverImage:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v2, "bubble preview uploaded "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string v1, "bubble"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 58
    .line 59
    const-string v1, "config"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->p(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/monetization/bubble/BubbleService;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 75
    move-result p1

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/monetization/bubble/BubbleService;->uploadBubble(ILcom/narvii/model/BubbleInfo;Lcom/narvii/monetization/bubble/service/BubbleUploadListener;)V

    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->val$allowUpdate:Z

    .line 83
    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 87
    .line 88
    const-string v0, "statistics"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 95
    .line 96
    const-string v0, "Creates Customized Chat Bubble"

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    const-string v0, "Creates Customized Chat Bubble Total"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 106
    :cond_2
    return-void
.end method
