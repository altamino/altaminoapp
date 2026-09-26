.class Lcom/narvii/drawer/DrawerHost$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/drawer/DrawerHost;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const-string v0, "Left Side Panel"

    .line 7
    .line 8
    const-string v1, "Source"

    .line 9
    .line 10
    .line 11
    sparse-switch p1, :sswitch_data_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :sswitch_0
    const-class p1, Lcom/narvii/invite/InviteMembersFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$27;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :sswitch_1
    const-class p1, Lcom/narvii/prefs/CommunitySettingFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$27;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :sswitch_2
    const-class p1, Lcom/narvii/guideline/GuidelineFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$27;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :sswitch_3
    const-class p1, Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 64
    .line 65
    .line 66
    invoke-static {v1, p1}, Lcom/narvii/drawer/DrawerHost$27;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 71
    .line 72
    const-string/jumbo v1, "statistics"

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 79
    .line 80
    const-string v1, "Create With ACM Tab Opened"

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    const-string v1, "Create Tab Opened Total"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 99
    .line 100
    const-string v0, "config"

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 107
    .line 108
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    const-string/jumbo v2, "showJoin"

    .line 115
    const/4 v3, 0x0

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    .line 120
    const-string v2, "id"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 124
    move-result p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    .line 129
    const-string p1, "about this community"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    .line 134
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 135
    .line 136
    .line 137
    invoke-static {p1, v0}, Lcom/narvii/drawer/DrawerHost$27;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 146
    move-result p1

    .line 147
    .line 148
    if-eqz p1, :cond_0

    .line 149
    .line 150
    const-class p1, Lcom/narvii/bookmark/BookMarkListFragment;

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 160
    .line 161
    .line 162
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$27;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 163
    goto :goto_0

    .line 164
    .line 165
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    const-class v1, Lcom/narvii/account/LoginActivity;

    .line 174
    .line 175
    .line 176
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .line 178
    sget-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    const-string v1, "promptType"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    .line 189
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 190
    .line 191
    .line 192
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$27;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 193
    goto :goto_0

    .line 194
    .line 195
    :sswitch_6
    const-class p1, Lcom/narvii/members/PeopleListFragment;

    .line 196
    .line 197
    .line 198
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    .line 204
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 205
    .line 206
    .line 207
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$27;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 208
    .line 209
    :goto_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 210
    .line 211
    .line 212
    const v0, 0xfa0001

    .line 213
    const/4 v1, 0x0

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    .line 217
    return-void

    nop

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    :sswitch_data_0
    .sparse-switch
        0x7f0a0469 -> :sswitch_6
        0x7f0a046b -> :sswitch_5
        0x7f0a0476 -> :sswitch_4
        0x7f0a0479 -> :sswitch_3
        0x7f0a047e -> :sswitch_2
        0x7f0a0497 -> :sswitch_1
        0x7f0a0498 -> :sswitch_0
    .end sparse-switch
.end method
