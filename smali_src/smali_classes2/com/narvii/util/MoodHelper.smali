.class public Lcom/narvii/util/MoodHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ACTIVATION_REQUEST:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static activateAccount(Landroid/app/Activity;)V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/prefs/AccountSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "Source"

    .line 9
    .line 10
    const-string v2, "My User Profile"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    const/4 v1, 0x5

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1}, Lcom/narvii/util/MoodHelper;->safedk_Activity_startActivityForResult_206f42f0b65887e835d87ee52d14d221(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 18
    return-void
.end method

.method public static getMood(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Lcom/narvii/model/Sticker;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    const-string v1, "account"

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v1, p1}, Lcom/narvii/util/MoodHelper;->isOnline(Lcom/narvii/model/User;ZLcom/narvii/app/NVContext;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    return-object v0
.end method

.method public static getMoodVisibility(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;Lcom/narvii/model/Sticker;)I
    .locals 1

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasActivation()Z

    .line 26
    move-result p0

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {p2}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 33
    move-result p0

    .line 34
    .line 35
    if-nez p0, :cond_1

    .line 36
    :goto_0
    const/4 p0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p0, 0x4

    .line 39
    :goto_1
    return p0
.end method

.method public static isOnline(Lcom/narvii/model/User;ZLcom/narvii/app/NVContext;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget p0, p0, Lcom/narvii/model/User;->onlineStatus:I

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const-string p0, "account"

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    .line 20
    move-result p0

    .line 21
    .line 22
    :cond_1
    if-eqz p0, :cond_2

    .line 23
    const/4 p1, 0x2

    .line 24
    .line 25
    if-eq p0, p1, :cond_2

    .line 26
    const/4 v0, 0x1

    .line 27
    :cond_2
    return v0
.end method

.method public static popupOnlineStatusMenu(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/User;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v2

    .line 5
    .line 6
    new-instance v6, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 7
    .line 8
    .line 9
    invoke-direct {v6, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    const-string v0, "account"

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    const v1, 0x7f0d05b7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setCustomView(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0, p0}, Lcom/narvii/util/MoodHelper;->isOnline(Lcom/narvii/model/User;ZLcom/narvii/app/NVContext;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p0}, Lcom/narvii/util/MoodHelper;->getMood(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Lcom/narvii/model/Sticker;

    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 48
    .line 49
    .line 50
    :goto_0
    const v3, 0x7f0a098a

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    const v5, 0x7f0a098c

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    check-cast v4, Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    .line 72
    const v1, 0x7f120cb9

    .line 73
    goto :goto_1

    .line 74
    .line 75
    .line 76
    :cond_1
    const v1, 0x7f120cb8

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    new-instance v3, Lcom/narvii/util/MoodHelper$1;

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, v6, p0, p1, v2}, Lcom/narvii/util/MoodHelper$1;-><init>(Lcom/narvii/util/dialog/ActionSheetDialog;Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    const v7, 0x7f0a0a5d

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    const v3, 0x7f0a0e51

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    check-cast v1, Landroid/widget/TextView;

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    .line 112
    const v3, 0x7f120e1b

    .line 113
    goto :goto_2

    .line 114
    .line 115
    .line 116
    :cond_2
    const v3, 0x7f120e17

    .line 117
    .line 118
    .line 119
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 120
    const/4 v1, 0x4

    .line 121
    .line 122
    .line 123
    const v3, 0x7f0a0a3f

    .line 124
    const/4 v4, 0x0

    .line 125
    .line 126
    .line 127
    const v5, 0x7f0a0a56

    .line 128
    .line 129
    .line 130
    const v8, 0x7f0a0a5b

    .line 131
    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v8}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    goto :goto_3

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual {v6, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v8}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v8}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    const/16 v1, 0x8

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    const v0, 0x7f0a0a5c

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    :goto_3
    new-instance v9, Lcom/narvii/util/MoodHelper$2;

    .line 199
    move-object v0, v9

    .line 200
    move-object v1, v6

    .line 201
    move-object v3, p0

    .line 202
    move-object v4, p2

    .line 203
    move-object v5, p1

    .line 204
    .line 205
    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/narvii/util/MoodHelper$2;-><init>(Lcom/narvii/util/dialog/ActionSheetDialog;Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;Lcom/narvii/model/User;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 210
    move-result-object p0

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v8}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 217
    move-result-object p0

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 224
    return-void
.end method

.method public static safedk_Activity_startActivityForResult_206f42f0b65887e835d87ee52d14d221(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
