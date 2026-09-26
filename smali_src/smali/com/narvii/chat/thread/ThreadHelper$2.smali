.class Lcom/narvii/chat/thread/ThreadHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;ZLcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/ThreadHelper;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$checkDraft:Z

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$stickerCollectionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$source:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$stickerCollectionId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 11
    .line 12
    iput-boolean p6, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$checkDraft:Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/thread/ThreadHelper$2;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/narvii/chat/thread/ThreadHelper$2;->lambda$onClick$1(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/chat/thread/ThreadHelper$2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/thread/ThreadHelper$2;->lambda$onClick$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-class p1, Lcom/narvii/post/draft/DraftListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "draftType"

    .line 9
    .line 10
    const-string/jumbo v1, "thread"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/chat/thread/ThreadHelper;->a(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadHelper$2;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method private synthetic lambda$onClick$1(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p5, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {p5, p1, p2, p3, p4}, Lcom/narvii/chat/thread/ThreadHelper;->b(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 6
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    .line 2
    if-nez p2, :cond_2

    .line 3
    .line 4
    const-class p1, Lcom/narvii/chat/invite/StartGroupChatFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string p2, "maxMember"

    .line 11
    .line 12
    const/16 v0, 0x64

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    const-string p2, "Source"

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$source:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    const-string v0, "bubble"

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$stickerCollectionId:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    const-string/jumbo v0, "stickerCollectionId"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/narvii/chat/thread/ThreadHelper;->a(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    const-string v0, "PrivateChat"

    .line 53
    .line 54
    .line 55
    invoke-static {p2, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Lcom/narvii/chat/thread/ThreadHelper;->a(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p1}, Lcom/narvii/chat/thread/ThreadHelper$2;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    :cond_2
    const/4 p1, 0x1

    .line 85
    .line 86
    if-ne p2, p1, :cond_5

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/narvii/chat/thread/ThreadHelper;->a(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    const-string p2, "PublicChatroom"

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 102
    .line 103
    iget-boolean p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$checkDraft:Z

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Lcom/narvii/chat/thread/ThreadHelper;->a(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    const-string p2, "draft"

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    check-cast p1, Lcom/narvii/post/DraftManager;

    .line 120
    .line 121
    const-string/jumbo p2, "thread"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftManager;->hasDraft(Ljava/lang/String;)Z

    .line 125
    move-result p1

    .line 126
    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 130
    .line 131
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 132
    .line 133
    .line 134
    invoke-static {p2}, Lcom/narvii/chat/thread/ThreadHelper;->a(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    .line 138
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    const p2, 0x7f120357

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    .line 152
    .line 153
    new-instance p2, Lcom/narvii/chat/thread/i;

    .line 154
    .line 155
    .line 156
    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/i;-><init>(Lcom/narvii/chat/thread/ThreadHelper$2;)V

    .line 157
    .line 158
    .line 159
    const v0, 0x7f121270

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 163
    .line 164
    iget-object v3, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$source:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v4, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$stickerCollectionId:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v6, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 171
    .line 172
    new-instance p2, Lcom/narvii/chat/thread/j;

    .line 173
    move-object v1, p2

    .line 174
    move-object v2, p0

    .line 175
    .line 176
    .line 177
    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/thread/j;-><init>(Lcom/narvii/chat/thread/ThreadHelper$2;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 178
    .line 179
    .line 180
    const v0, 0x7f12035f

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    const p2, 0x7f1201e2

    .line 187
    const/4 v0, 0x0

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 194
    goto :goto_0

    .line 195
    .line 196
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 197
    .line 198
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$source:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 201
    .line 202
    iget-object v1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$stickerCollectionId:Ljava/lang/String;

    .line 203
    .line 204
    iget-object v2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 205
    .line 206
    .line 207
    invoke-static {p1, p2, v0, v1, v2}, Lcom/narvii/chat/thread/ThreadHelper;->b(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 208
    goto :goto_0

    .line 209
    .line 210
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 211
    .line 212
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$source:Ljava/lang/String;

    .line 213
    .line 214
    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 215
    .line 216
    iget-object v1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$stickerCollectionId:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 219
    .line 220
    .line 221
    invoke-static {p1, p2, v0, v1, v2}, Lcom/narvii/chat/thread/ThreadHelper;->b(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 222
    :cond_5
    :goto_0
    return-void
.end method
