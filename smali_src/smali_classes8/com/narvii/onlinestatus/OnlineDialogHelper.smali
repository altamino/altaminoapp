.class public Lcom/narvii/onlinestatus/OnlineDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TYPE_DIALOG_SHOW_JOIN_COMMUNITY:I = 0x2

.field private static final TYPE_DIALOG_SHOW_LOGIN:I = 0x1

.field private static final TYPE_DIALOG_SHOW_NONE:I


# instance fields
.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field public goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

.field public goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

.field nvFragment:Lcom/narvii/app/NVFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 6
    .line 7
    const-string v0, "affiliations"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 16
    return-void
.end method

.method private prepareShowDialog(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 12
    .line 13
    iput-object v1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    if-eq p1, v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public checkOnlineStatus()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0059

    .line 18
    .line 19
    const/high16 v2, 0x41f00000    # 30.0f

    .line 20
    .line 21
    const/high16 v3, 0x66000000

    .line 22
    .line 23
    .line 24
    const v4, 0x7f13015d

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/narvii/onlinestatus/OnlineDialogHelper;->prepareShowDialog(I)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v5, v4}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    iget-object v4, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 66
    move-result v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    .line 70
    .line 71
    .line 72
    const v2, 0x7f0d060b

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->setContentView(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    new-instance v2, Lcom/narvii/onlinestatus/OnlineDialogHelper$1;

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$1;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    new-instance v1, Lcom/narvii/onlinestatus/OnlineDialogHelper$2;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$2;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 96
    .line 97
    new-instance v1, Lcom/narvii/onlinestatus/OnlineDialogHelper$3;

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$3;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 104
    .line 105
    iput-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 106
    .line 107
    :cond_0
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_1
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 114
    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    iget-object v5, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 118
    .line 119
    const-string v6, "__communityId"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v6}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 123
    move-result v5

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v5}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-nez v0, :cond_3

    .line 130
    const/4 v0, 0x2

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v0}, Lcom/narvii/onlinestatus/OnlineDialogHelper;->prepareShowDialog(I)V

    .line 134
    .line 135
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 136
    .line 137
    if-nez v0, :cond_2

    .line 138
    .line 139
    new-instance v0, Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 140
    .line 141
    iget-object v5, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 145
    move-result-object v5

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v5, v4}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 152
    move-result-object v4

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    iget-object v4, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 165
    move-result-object v4

    .line 166
    .line 167
    .line 168
    invoke-static {v4, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 169
    move-result v2

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    .line 173
    .line 174
    .line 175
    const v2, 0x7f0d060a

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->setContentView(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    new-instance v2, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;

    .line 185
    .line 186
    .line 187
    invoke-direct {v2, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$4;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    new-instance v1, Lcom/narvii/onlinestatus/OnlineDialogHelper$5;

    .line 193
    .line 194
    .line 195
    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$5;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 199
    .line 200
    new-instance v1, Lcom/narvii/onlinestatus/OnlineDialogHelper$6;

    .line 201
    .line 202
    .line 203
    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper$6;-><init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 207
    .line 208
    iput-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 209
    .line 210
    :cond_2
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goJoinCommunityDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 214
    goto :goto_0

    .line 215
    :cond_3
    const/4 v0, 0x0

    .line 216
    .line 217
    .line 218
    invoke-direct {p0, v0}, Lcom/narvii/onlinestatus/OnlineDialogHelper;->prepareShowDialog(I)V

    .line 219
    :goto_0
    return-void
.end method
