.class Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/ChatBubbleOwnStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/ChatBubbleOwnStatusController;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    .line 2
    const-string p1, "bid"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "rev"

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 18
    .line 19
    instance-of v3, v2, Lcom/narvii/model/ChatBubble;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    return-void

    .line 23
    .line 24
    :cond_0
    iget-boolean v1, v1, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->isOriginActivited:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    return-void

    .line 28
    .line 29
    :cond_1
    check-cast v2, Lcom/narvii/model/ChatBubble;

    .line 30
    .line 31
    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_PROGRESS"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    const/4 v3, 0x0

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 45
    .line 46
    iget-object p2, p2, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result p2

    .line 58
    .line 59
    if-eqz p2, :cond_7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/narvii/model/ChatBubble;->version()I

    .line 63
    move-result p2

    .line 64
    .line 65
    if-ne v0, p2, :cond_7

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->a()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    const-string v1, "progress update "

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getProgress(Ljava/lang/String;)F

    .line 87
    move-result v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-static {p2, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    iget-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 100
    .line 101
    iget-object v0, p2, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getProgress(Ljava/lang/String;)F

    .line 105
    move-result p1

    .line 106
    .line 107
    const/high16 v0, 0x42c80000    # 100.0f

    .line 108
    mul-float/2addr p1, v0

    .line 109
    float-to-int p1, p1

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateDownloadingProgress(I)V

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_3
    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 119
    move-result-object v4

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v1

    .line 124
    .line 125
    if-nez v1, :cond_4

    .line 126
    .line 127
    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_READY"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 131
    move-result-object p2

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result p2

    .line 136
    .line 137
    if-eqz p2, :cond_7

    .line 138
    .line 139
    :cond_4
    iget-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 140
    .line 141
    iget-object p2, p2, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 142
    .line 143
    if-nez p2, :cond_5

    .line 144
    goto :goto_1

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    .line 148
    move-result-object v3

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    move-result p2

    .line 153
    .line 154
    if-eqz p2, :cond_7

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/narvii/model/ChatBubble;->version()I

    .line 158
    move-result p2

    .line 159
    .line 160
    if-ne v0, p2, :cond_7

    .line 161
    .line 162
    iget-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 163
    .line 164
    iget-object p2, p2, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p1, v0}, Lcom/narvii/monetization/bubble/BubbleService;->getStatus(Ljava/lang/String;I)I

    .line 168
    move-result p1

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->a()Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    const-string v1, "progress status change  "

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    .line 192
    invoke-static {p2, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 p2, 0x5

    .line 194
    .line 195
    if-eq p1, p2, :cond_6

    .line 196
    const/4 p2, -0x1

    .line 197
    .line 198
    if-ne p1, p2, :cond_7

    .line 199
    .line 200
    :cond_6
    iget-object p1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    .line 204
    :cond_7
    :goto_2
    return-void
.end method
