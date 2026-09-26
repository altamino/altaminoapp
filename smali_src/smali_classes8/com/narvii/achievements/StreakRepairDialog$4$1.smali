.class Lcom/narvii/achievements/StreakRepairDialog$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/achievements/StreakRepairDialog$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

.field final synthetic val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;


# direct methods
.method constructor <init>(Lcom/narvii/achievements/StreakRepairDialog$4;Lcom/narvii/checkin/CheckInHistoryResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->b(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "account"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 31
    .line 32
    iget-boolean v3, v1, Lcom/narvii/model/CheckInHistory;->hasCheckInToday:Z

    .line 33
    .line 34
    iget v1, v1, Lcom/narvii/model/CheckInHistory;->consecutiveCheckInDays:I

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3, v1, v0, v2}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    new-instance v0, Landroid/content/Intent;

    .line 54
    .line 55
    const-string v1, "com.narvii.action.ACTION_STREAK_REPAIR_SUCCESS"

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/narvii/achievements/StreakRepairDialog;->b(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    const-string v3, "config"

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 75
    .line 76
    const-string v3, "cid"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 80
    move-result v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairListener:Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;

    .line 93
    .line 94
    if-eqz p1, :cond_0

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;->onSteakRepairFinished()V

    .line 98
    .line 99
    :cond_0
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-nez p1, :cond_1

    .line 108
    return-void

    .line 109
    .line 110
    :cond_1
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 117
    .line 118
    iput-object v0, p1, Lcom/narvii/achievements/StreakRepairDialog;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 119
    const/4 v0, 0x0

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v0}, Lcom/narvii/achievements/StreakRepairDialog;->e(Lcom/narvii/achievements/StreakRepairDialog;Z)V

    .line 123
    .line 124
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 125
    .line 126
    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->i(Lcom/narvii/achievements/StreakRepairDialog;)V

    .line 130
    .line 131
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 132
    .line 133
    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 134
    .line 135
    iput-boolean v2, p1, Lcom/narvii/achievements/StreakRepairDialog;->anyFixed:Z

    .line 136
    .line 137
    new-instance v0, Lcom/narvii/checkin/CheckInHelper;

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->b(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, p1}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 145
    .line 146
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1}, Lcom/narvii/checkin/CheckInHelper;->getStreakRepairCellList(Lcom/narvii/model/CheckInHistory;)Ljava/util/List;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p1}, Lcom/narvii/checkin/CheckInStreakRepairLayout;->updateCells(Ljava/util/List;)V

    .line 162
    .line 163
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->g(Lcom/narvii/achievements/StreakRepairDialog;)V

    .line 169
    .line 170
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 175
    .line 176
    .line 177
    invoke-static {v0}, Lcom/narvii/achievements/StreakRepairDialog;->b(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    .line 185
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 186
    .line 187
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Lcom/narvii/achievements/StreakRepairDialog;->b(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    .line 196
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    .line 200
    const v1, 0x7f12076e

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    .line 211
    return-void
.end method
