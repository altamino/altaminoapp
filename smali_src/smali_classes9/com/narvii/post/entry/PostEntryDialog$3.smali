.class Lcom/narvii/post/entry/PostEntryDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/post/entry/EntryItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/entry/PostEntryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/entry/PostEntryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntryDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public onEntryItemClicked(Ljava/lang/String;Lcom/narvii/modulization/entry/EntryEligibleCheckResult;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "post_publicChat"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 11
    .line 12
    const/16 v0, 0x14

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    const-string p2, "go_live"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p2

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 28
    .line 29
    const/16 v0, 0x17

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_1
    const-string p2, "image"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p2

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 45
    const/4 v0, 0x5

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_2
    const-string p2, "blog"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p2

    .line 57
    const/4 v0, 0x1

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_3
    const-string p2, "quiz"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p2

    .line 73
    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 77
    const/4 v0, 0x3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_4
    const-string p2, "webLink"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result p2

    .line 89
    .line 90
    if-eqz p2, :cond_5

    .line 91
    .line 92
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 93
    const/4 v0, 0x4

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_5
    const-string p2, "poll"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result p2

    .line 105
    .line 106
    if-eqz p2, :cond_7

    .line 107
    .line 108
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 109
    .line 110
    iget-object p2, p2, Lcom/narvii/post/entry/PostEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    .line 114
    move-result p2

    .line 115
    .line 116
    if-eqz p2, :cond_6

    .line 117
    .line 118
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 119
    .line 120
    const/16 p2, 0xa

    .line 121
    .line 122
    .line 123
    invoke-static {p1, p2, v0}, Lcom/narvii/post/entry/PostEntryDialog;->l(Lcom/narvii/post/entry/PostEntryDialog;IZ)V

    .line 124
    goto :goto_0

    .line 125
    .line 126
    :cond_6
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 127
    .line 128
    const/16 v0, 0xf

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 132
    goto :goto_0

    .line 133
    .line 134
    :cond_7
    const-string p2, "question"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result p2

    .line 139
    .line 140
    if-eqz p2, :cond_8

    .line 141
    .line 142
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 143
    .line 144
    const/16 v0, 0xc

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 148
    goto :goto_0

    .line 149
    .line 150
    :cond_8
    const-string p2, "wikiEntry"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result p2

    .line 155
    .line 156
    if-eqz p2, :cond_9

    .line 157
    .line 158
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 159
    const/4 v0, 0x2

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 163
    goto :goto_0

    .line 164
    .line 165
    :cond_9
    const-string p2, "draft"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result p1

    .line 170
    .line 171
    if-eqz p1, :cond_a

    .line 172
    .line 173
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 174
    .line 175
    sget-object p2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 176
    .line 177
    .line 178
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    const-string p2, "Drafts"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 189
    .line 190
    const-class p1, Lcom/narvii/post/draft/DraftListFragment;

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 197
    .line 198
    .line 199
    invoke-static {p2}, Lcom/narvii/post/entry/PostEntryDialog;->j(Lcom/narvii/post/entry/PostEntryDialog;)Landroid/content/Context;

    .line 200
    move-result-object p2

    .line 201
    .line 202
    .line 203
    invoke-static {p2, p1}, Lcom/narvii/post/entry/PostEntryDialog$3;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 209
    .line 210
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$3;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 211
    .line 212
    .line 213
    invoke-static {p1}, Lcom/narvii/post/entry/PostEntryDialog;->j(Lcom/narvii/post/entry/PostEntryDialog;)Landroid/content/Context;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    .line 217
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    const-string p2, "statistics"

    .line 221
    .line 222
    .line 223
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 227
    .line 228
    const-string p2, "Saved Drafts Opened"

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 232
    move-result-object p1

    .line 233
    .line 234
    const-string p2, "Saved Drafts Opened Total"

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 238
    :cond_a
    :goto_0
    return-void
.end method
