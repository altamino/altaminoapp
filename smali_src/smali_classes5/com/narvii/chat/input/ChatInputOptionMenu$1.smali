.class Lcom/narvii/chat/input/ChatInputOptionMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputOptionMenu;->report()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

.field final synthetic val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

.field final synthetic val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputOptionMenu;[ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$ops:[I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$ops:[I

    .line 3
    .line 4
    aget p1, p1, p2

    .line 5
    .line 6
    .line 7
    const p2, 0x7f120770

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eq p1, p2, :cond_5

    .line 12
    .line 13
    .line 14
    const p2, 0x7f1207a6

    .line 15
    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 21
    .line 22
    if-eqz p1, :cond_4

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string p2, "user uid "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 40
    .line 41
    iget p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    const-string p2, "VideoProcess"

    .line 51
    .line 52
    .line 53
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 58
    const/4 p2, 0x1

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-boolean p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    move v1, p2

    .line 66
    .line 67
    :cond_2
    new-instance p1, Lcom/narvii/chat/ChannelFlagHelper;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Lcom/narvii/chat/input/ChatInputOptionMenu;->a(Lcom/narvii/chat/input/ChatInputOptionMenu;)Lcom/narvii/app/NVContext;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v2}, Lcom/narvii/chat/ChannelFlagHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 79
    .line 80
    iget v3, v2, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 81
    .line 82
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 83
    .line 84
    iget-object v5, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 85
    .line 86
    if-eqz v5, :cond_3

    .line 87
    .line 88
    iget-object v0, v5, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 89
    .line 90
    :cond_3
    iget v5, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 91
    .line 92
    iget-object v6, v2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 93
    .line 94
    iget v7, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 95
    const/4 v8, 0x1

    .line 96
    .line 97
    xor-int/lit8 v9, v1, 0x1

    .line 98
    move-object v2, p1

    .line 99
    move-object v4, v0

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {v2 .. v9}, Lcom/narvii/chat/ChannelFlagHelper;->flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZZ)V

    .line 103
    .line 104
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    .line 111
    const v0, 0x7f120788

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/narvii/chat/ChannelFlagHelper;->setHintLanguage(Ljava/lang/String;)V

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    :goto_0
    return-void

    .line 121
    .line 122
    :cond_5
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 123
    .line 124
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    move-result-object p2

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    .line 140
    const v2, 0x7f12078a

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    move-result-object p2

    .line 154
    .line 155
    .line 156
    const v2, 0x7f1207aa

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    const/16 p2, 0xce

    .line 166
    .line 167
    const/16 v2, 0x7d

    .line 168
    .line 169
    .line 170
    invoke-static {v1, p2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 171
    move-result p2

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 175
    .line 176
    .line 177
    const p2, 0x104000a

    .line 178
    const/4 v1, 0x4

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2, v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 185
    :goto_1
    return-void
.end method
