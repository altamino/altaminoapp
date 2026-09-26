.class Lcom/narvii/amino/HomeFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    const-string v0, "config"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/amino/HomeFragment;->A(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "id"

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 27
    move-result p1

    .line 28
    .line 29
    if-ne v1, p1, :cond_6

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 40
    move-result p2

    .line 41
    const/4 v1, -0x1

    .line 42
    .line 43
    .line 44
    sparse-switch p2, :sswitch_data_0

    .line 45
    :goto_0
    move v2, v1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :sswitch_0
    const-string p2, "com.narvii.action.FEATURE_USER_CHANGED"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    if-nez p1, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v2, 0x2

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :sswitch_1
    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-nez p1, :cond_1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v2, 0x1

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :sswitch_2
    const-string p2, "com.narvii.action.COMMUNITY_CHANGED"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p1

    .line 75
    .line 76
    if-nez p1, :cond_2

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 81
    goto :goto_3

    .line 82
    .line 83
    :pswitch_0
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->B(Lcom/narvii/amino/HomeFragment;)V

    .line 87
    goto :goto_3

    .line 88
    .line 89
    :pswitch_1
    if-eqz v0, :cond_6

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateAccountInfo()V

    .line 93
    goto :goto_3

    .line 94
    .line 95
    :pswitch_2
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->getHomePageList()Ljava/util/List;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 104
    .line 105
    iget-object p2, p2, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 106
    .line 107
    .line 108
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 109
    move-result p1

    .line 110
    .line 111
    if-nez p1, :cond_3

    .line 112
    .line 113
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 114
    .line 115
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 116
    .line 117
    .line 118
    invoke-static {p2}, Lcom/narvii/amino/HomeFragment;->u(Lcom/narvii/amino/HomeFragment;)Ljava/lang/Runnable;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->u(Lcom/narvii/amino/HomeFragment;)Ljava/lang/Runnable;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 132
    .line 133
    :cond_3
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedMemberEnabled()Z

    .line 139
    move-result p1

    .line 140
    .line 141
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 142
    .line 143
    iget-boolean v1, p2, Lcom/narvii/amino/HomeFragment;->featureMemberEnabled:Z

    .line 144
    .line 145
    if-eq p1, v1, :cond_5

    .line 146
    .line 147
    iput-boolean p1, p2, Lcom/narvii/amino/HomeFragment;->featureMemberEnabled:Z

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    .line 152
    invoke-static {p2}, Lcom/narvii/amino/HomeFragment;->B(Lcom/narvii/amino/HomeFragment;)V

    .line 153
    goto :goto_2

    .line 154
    .line 155
    .line 156
    :cond_4
    invoke-static {p2}, Lcom/narvii/amino/HomeFragment;->y(Lcom/narvii/amino/HomeFragment;)V

    .line 157
    .line 158
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->reConfigNormalItemViews()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCommunityInfo()V

    .line 165
    :cond_6
    :goto_3
    return-void

    .line 166
    nop

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    :sswitch_data_0
    .sparse-switch
        -0x506d0690 -> :sswitch_2
        -0x42d087cc -> :sswitch_1
        0xdf65657 -> :sswitch_0
    .end sparse-switch

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
