.class Lcom/narvii/chat/detail/ThreadDetailFragment$10;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

.field final synthetic val$conflict:Z

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$properties:I

.field final synthetic val$resultValue:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;IZZ)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput p4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$properties:I

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$conflict:Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$properties:I

    .line 3
    const/4 p3, 0x2

    .line 4
    .line 5
    if-ne p1, p3, :cond_1

    .line 6
    .line 7
    const/16 p1, 0x67d

    .line 8
    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x67e

    .line 12
    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    const p2, 0x7f1207e7

    .line 31
    const/4 p3, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 65
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 22
    .line 23
    iget p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$properties:I

    .line 24
    const/4 v0, 0x1

    .line 25
    .line 26
    if-ne p2, v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    .line 30
    move-result p2

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    .line 33
    .line 34
    if-ne p2, v0, :cond_0

    .line 35
    return-void

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1, v0}, Lcom/narvii/model/ChatThread;->setViewOnly(Z)V

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x2

    .line 42
    .line 43
    if-ne p2, v0, :cond_5

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-boolean p2, p1, Lcom/narvii/model/TippingInfo;->tippable:Z

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    .line 52
    .line 53
    if-ne p2, v0, :cond_2

    .line 54
    return-void

    .line 55
    .line 56
    :cond_2
    iput-boolean v0, p1, Lcom/narvii/model/TippingInfo;->tippable:Z

    .line 57
    .line 58
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    .line 73
    .line 74
    iput-boolean p2, p1, Lcom/narvii/model/TippingInfo;->tippable:Z

    .line 75
    .line 76
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 82
    return-void

    .line 83
    :cond_5
    const/4 v0, 0x3

    .line 84
    const/4 v1, 0x0

    .line 85
    .line 86
    if-ne p2, v0, :cond_9

    .line 87
    .line 88
    iget p2, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    .line 91
    .line 92
    if-ne p2, v0, :cond_7

    .line 93
    .line 94
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$conflict:Z

    .line 95
    .line 96
    if-eqz p2, :cond_6

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 100
    move-result p2

    .line 101
    .line 102
    if-eqz p2, :cond_6

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1}, Lcom/narvii/model/ChatThread;->setFansOnly(Z)V

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    return-void

    .line 108
    .line 109
    :cond_7
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$conflict:Z

    .line 110
    .line 111
    if-eqz p2, :cond_8

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 115
    move-result p2

    .line 116
    .line 117
    if-eqz p2, :cond_8

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1}, Lcom/narvii/model/ChatThread;->setFansOnly(Z)V

    .line 121
    .line 122
    :cond_8
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    .line 123
    .line 124
    iput p2, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    .line 125
    goto :goto_0

    .line 126
    :cond_9
    const/4 v0, 0x4

    .line 127
    .line 128
    if-ne p2, v0, :cond_d

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 132
    move-result p2

    .line 133
    .line 134
    iget-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    .line 135
    .line 136
    if-ne p2, v0, :cond_b

    .line 137
    .line 138
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$conflict:Z

    .line 139
    .line 140
    if-eqz p2, :cond_a

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    .line 144
    move-result p2

    .line 145
    .line 146
    if-eqz p2, :cond_a

    .line 147
    .line 148
    iput v1, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    .line 149
    goto :goto_0

    .line 150
    :cond_a
    return-void

    .line 151
    .line 152
    :cond_b
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$conflict:Z

    .line 153
    .line 154
    if-eqz p2, :cond_c

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    .line 158
    move-result p2

    .line 159
    .line 160
    if-eqz p2, :cond_c

    .line 161
    .line 162
    iput v1, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    .line 163
    .line 164
    :cond_c
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setFansOnly(Z)V

    .line 168
    .line 169
    :cond_d
    :goto_0
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 170
    .line 171
    const-string v0, "update"

    .line 172
    .line 173
    .line 174
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 175
    .line 176
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 177
    .line 178
    const-string v0, "notification"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 185
    .line 186
    .line 187
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 188
    return-void
.end method
