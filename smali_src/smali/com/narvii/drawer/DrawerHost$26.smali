.class Lcom/narvii/drawer/DrawerHost$26;
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
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

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
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :sswitch_0
    const-class p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$26;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_1
    const-class p1, Lcom/narvii/catalog/review/CatalogSubmissionFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$26;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :sswitch_2
    const-class p1, Lcom/narvii/poweruser/ReorderFeatureFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$26;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :sswitch_3
    const-class p1, Lcom/narvii/poweruser/ModerationToolFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$26;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :sswitch_4
    const-class p1, Lcom/narvii/flag/FlagListFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$26;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :sswitch_5
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->installedAcm()Z

    .line 87
    move-result p1

    .line 88
    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getAcmScheme()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v0, "://x"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 127
    move-result v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    new-instance v0, Landroid/content/Intent;

    .line 137
    .line 138
    const-string v1, "android.intent.action.VIEW"

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .line 147
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 148
    .line 149
    .line 150
    invoke-static {p1, v0}, Lcom/narvii/drawer/DrawerHost$26;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 151
    goto :goto_0

    .line 152
    .line 153
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 156
    .line 157
    instance-of p1, p1, Lcom/narvii/app/NVContext;

    .line 158
    .line 159
    if-eqz p1, :cond_1

    .line 160
    .line 161
    new-instance p1, Lcom/narvii/master/NewDownloadAcmDialog;

    .line 162
    .line 163
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 166
    .line 167
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, v0}, Lcom/narvii/master/NewDownloadAcmDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 174
    .line 175
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 176
    .line 177
    .line 178
    const v0, 0xfa0001

    .line 179
    const/4 v1, 0x0

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    .line 183
    return-void

    .line 184
    nop

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    :sswitch_data_0
    .sparse-switch
        0x7f0a0477 -> :sswitch_5
        0x7f0a047b -> :sswitch_4
        0x7f0a0486 -> :sswitch_3
        0x7f0a048b -> :sswitch_2
        0x7f0a048d -> :sswitch_1
        0x7f0a049a -> :sswitch_0
    .end sparse-switch
.end method
