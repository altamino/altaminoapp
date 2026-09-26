.class public Lcom/narvii/community/request/RequestJoinCommunityDialog;
.super Lcom/narvii/util/dialog/RealtimeBlurDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_COUNT:I = 0x1f4

.field private static final REQUEST_TO_JOIN_STEP1:I = 0x0

.field private static final REQUEST_TO_JOIN_STEP2:I = 0x1


# instance fields
.field btnInviteSubmit:Landroid/widget/Button;

.field btnLandingRequest:Landroid/widget/Button;

.field btnLandingSubmit:Landroid/widget/Button;

.field btnRequestSubmit:Landroid/widget/Button;

.field callBack:Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;

.field private community:Lcom/narvii/model/Community;

.field private context:Lcom/narvii/app/NVContext;

.field edtInvite:Landroid/widget/EditText;

.field edtLanding:Landroid/widget/EditText;

.field edtRequest:Landroid/widget/EditText;

.field inviteClose:Landroid/view/View;

.field inviteEditWatcher:Landroid/text/TextWatcher;

.field isRequested:Z

.field private joinType:I

.field landingClose:Landroid/view/View;

.field landingContainer:Landroid/view/View;

.field landingEditWatcher:Landroid/text/TextWatcher;

.field requestContainer:Landroid/view/View;

.field requestMessageEditWatcher:Landroid/text/TextWatcher;

.field private requestToJoinStep:I

.field tvLeftCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;ILcom/narvii/model/Community;Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestMessageEditWatcher:Landroid/text/TextWatcher;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/community/request/RequestJoinCommunityDialog$5;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$5;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingEditWatcher:Landroid/text/TextWatcher;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/community/request/RequestJoinCommunityDialog$6;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$6;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->inviteEditWatcher:Landroid/text/TextWatcher;

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Dialog;)V

    .line 32
    .line 33
    iput-object p3, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->community:Lcom/narvii/model/Community;

    .line 34
    .line 35
    iput p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->joinType:I

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    iput-object p4, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->callBack:Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;

    .line 40
    .line 41
    iput-boolean p5, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->isRequested:Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const/high16 p3, 0x66000000

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    const/high16 p4, 0x41f00000    # 30.0f

    .line 61
    .line 62
    .line 63
    invoke-static {p3, p4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 64
    move-result p3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    .line 68
    const/4 p1, 0x2

    .line 69
    .line 70
    if-ne p2, p1, :cond_0

    .line 71
    .line 72
    .line 73
    const p3, 0x7f0d04a0

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_0
    const p3, 0x7f0d04a2

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p0, p3}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->setContentView(I)V

    .line 81
    const/4 p3, 0x1

    .line 82
    .line 83
    if-ne p2, p3, :cond_1

    .line 84
    const/4 p3, 0x0

    .line 85
    .line 86
    iput p3, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestToJoinStep:I

    .line 87
    .line 88
    :cond_1
    if-ne p2, p1, :cond_2

    .line 89
    .line 90
    .line 91
    const p1, 0x7f0a0740

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    check-cast p1, Landroid/widget/EditText;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtInvite:Landroid/widget/EditText;

    .line 100
    .line 101
    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->inviteEditWatcher:Landroid/text/TextWatcher;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    .line 106
    .line 107
    const p1, 0x7f0a0747

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    check-cast p1, Landroid/widget/Button;

    .line 114
    .line 115
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnInviteSubmit:Landroid/widget/Button;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    const p1, 0x7f0a073f

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->inviteClose:Landroid/view/View;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    goto :goto_1

    .line 132
    .line 133
    .line 134
    :cond_2
    const p1, 0x7f0a07a0

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    check-cast p1, Landroid/widget/EditText;

    .line 141
    .line 142
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtLanding:Landroid/widget/EditText;

    .line 143
    .line 144
    .line 145
    const p1, 0x7f0a07a2

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    check-cast p1, Landroid/widget/Button;

    .line 152
    .line 153
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnLandingSubmit:Landroid/widget/Button;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    const p1, 0x7f0a07a1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    check-cast p1, Landroid/widget/Button;

    .line 166
    .line 167
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnLandingRequest:Landroid/widget/Button;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtLanding:Landroid/widget/EditText;

    .line 173
    .line 174
    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingEditWatcher:Landroid/text/TextWatcher;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    .line 179
    .line 180
    const p1, 0x7f0a0c26

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    check-cast p1, Landroid/widget/TextView;

    .line 187
    .line 188
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->tvLeftCount:Landroid/widget/TextView;

    .line 189
    .line 190
    .line 191
    const p1, 0x7f0a0c23

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    check-cast p1, Landroid/widget/EditText;

    .line 198
    .line 199
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtRequest:Landroid/widget/EditText;

    .line 200
    .line 201
    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestMessageEditWatcher:Landroid/text/TextWatcher;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    .line 206
    .line 207
    const p1, 0x7f0a0c25

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 211
    move-result-object p1

    .line 212
    .line 213
    check-cast p1, Landroid/widget/Button;

    .line 214
    .line 215
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnRequestSubmit:Landroid/widget/Button;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    const p1, 0x7f0a079e

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingClose:Landroid/view/View;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    const p1, 0x7f0a079f

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingContainer:Landroid/view/View;

    .line 240
    .line 241
    .line 242
    const p1, 0x7f0a0c22

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 246
    move-result-object p1

    .line 247
    .line 248
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestContainer:Landroid/view/View;

    .line 249
    :goto_1
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/community/request/RequestJoinCommunityDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->showCheckDialog(I)V

    return-void
.end method

.method private gotoRequestToJoin()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->isRequested:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    const v2, 0x7f120321

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    const v2, 0x7f12031e

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 42
    const/4 v1, 0x4

    .line 43
    const/4 v2, 0x0

    .line 44
    .line 45
    const-string v3, "Ok"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 52
    return-void

    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtRequest:Landroid/widget/EditText;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 60
    :cond_1
    const/4 v0, 0x1

    .line 61
    .line 62
    iput v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestToJoinStep:I

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingContainer:Landroid/view/View;

    .line 65
    .line 66
    const/16 v1, 0x8

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestContainer:Landroid/view/View;

    .line 72
    const/4 v1, 0x0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void
.end method

.method private showCheckDialog(I)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/CheckDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0a02ce

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    .line 35
    return-void
.end method

.method private submitRequest()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->joinType:I

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtLanding:Landroid/widget/EditText;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtInvite:Landroid/widget/EditText;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    :goto_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    const-string v3, "api"

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 56
    .line 57
    new-instance v3, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v3}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    const-string v4, "/community/link-identify"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    const-string v4, "q"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    new-instance v3, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;

    .line 83
    .line 84
    const-class v4, Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, p0, v4, v1}, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 91
    return-void
.end method

.method private submitRequestToJoin()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->community:Lcom/narvii/model/Community;

    .line 26
    .line 27
    iget v2, v2, Lcom/narvii/model/Community;->id:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-string v2, "/community/membership-request"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtRequest:Landroid/widget/EditText;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    const-string v3, "message"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    .line 59
    .line 60
    const-string v3, "api"

    .line 61
    .line 62
    .line 63
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    new-instance v3, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;

    .line 73
    .line 74
    const-class v4, Lcom/narvii/master/invitation/CommunityMemRequestResponse;

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "community_join_request"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    .line 11
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->submitRequestToJoin()V

    .line 12
    goto :goto_1

    .line 13
    .line 14
    .line 15
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->gotoRequestToJoin()V

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->submitRequest()V

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtInvite:Landroid/widget/EditText;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestToJoinStep:I

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtLanding:Landroid/widget/EditText;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtRequest:Landroid/widget/EditText;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 48
    .line 49
    :cond_2
    :goto_0
    new-instance p1, Lcom/narvii/community/request/RequestJoinCommunityDialog$1;

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$1;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;)V

    .line 53
    .line 54
    const-wide/16 v0, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 58
    :goto_1
    return-void

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    :sswitch_data_0
    .sparse-switch
        0x7f0a073f -> :sswitch_3
        0x7f0a0747 -> :sswitch_2
        0x7f0a079e -> :sswitch_3
        0x7f0a07a1 -> :sswitch_1
        0x7f0a07a2 -> :sswitch_2
        0x7f0a0c25 -> :sswitch_0
    .end sparse-switch
.end method
