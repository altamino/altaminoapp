.class Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;
.super Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/history/ModerationHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/poweruser/history/ModerationHistory;

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-nez p5, :cond_3

    .line 9
    .line 10
    check-cast p3, Lcom/narvii/poweruser/history/ModerationHistory;

    .line 11
    .line 12
    iget p1, p3, Lcom/narvii/poweruser/history/ModerationHistory;->moderationLevel:I

    .line 13
    const/4 p2, 0x3

    .line 14
    .line 15
    if-ne p1, p2, :cond_1

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    const p3, 0x7f0d024a

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    const p3, 0x7f0a0059

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p4

    .line 41
    .line 42
    if-eqz p4, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    new-instance p4, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter$1;

    .line 49
    .line 50
    .line 51
    invoke-direct {p4, p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter$1;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_1
    iget-object p1, p3, Lcom/narvii/poweruser/history/ModerationHistory;->objectUrl:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 72
    .line 73
    const-string p2, "android.intent.action.VIEW"

    .line 74
    .line 75
    iget-object p3, p3, Lcom/narvii/poweruser/history/ModerationHistory;->objectUrl:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    .line 101
    const p3, 0x7f120fd0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    const/4 p3, 0x0

    .line 107
    .line 108
    .line 109
    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 114
    :catch_0
    :goto_0
    return v1

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 118
    move-result v2

    .line 119
    .line 120
    .line 121
    const v3, 0x7f0a09f9

    .line 122
    .line 123
    if-eq v2, v3, :cond_7

    .line 124
    .line 125
    .line 126
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 127
    move-result v2

    .line 128
    .line 129
    .line 130
    const v3, 0x7f0a0171

    .line 131
    .line 132
    if-ne v2, v3, :cond_4

    .line 133
    goto :goto_2

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 137
    move-result v2

    .line 138
    .line 139
    .line 140
    const v3, 0x7f0a0e39

    .line 141
    .line 142
    if-ne v2, v3, :cond_8

    .line 143
    .line 144
    check-cast p3, Lcom/narvii/poweruser/history/ModerationHistory;

    .line 145
    .line 146
    iget-object p1, p3, Lcom/narvii/poweruser/history/ModerationHistory;->refObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 147
    .line 148
    if-nez p1, :cond_5

    .line 149
    goto :goto_1

    .line 150
    .line 151
    :cond_5
    const-string p2, "uid"

    .line 152
    .line 153
    .line 154
    filled-new-array {p2}, [Ljava/lang/String;

    .line 155
    move-result-object p2

    .line 156
    .line 157
    .line 158
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    :goto_1
    if-eqz v0, :cond_6

    .line 162
    .line 163
    const-class p1, Lcom/narvii/user/profile/UserProfileFragment;

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    const-string p2, "id"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    invoke-static {p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 176
    :cond_6
    return v1

    .line 177
    .line 178
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 179
    .line 180
    check-cast p3, Lcom/narvii/poweruser/history/ModerationHistory;

    .line 181
    .line 182
    iget-object p2, p3, Lcom/narvii/poweruser/history/ModerationHistory;->author:Lcom/narvii/model/User;

    .line 183
    .line 184
    .line 185
    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 189
    .line 190
    .line 191
    invoke-static {p2, p1}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 192
    return v1

    .line 193
    .line 194
    .line 195
    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 196
    move-result p1

    .line 197
    return p1
.end method
