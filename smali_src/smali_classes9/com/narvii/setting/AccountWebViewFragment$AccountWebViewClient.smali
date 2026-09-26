.class Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;
.super Lcom/narvii/webview/WebViewFragment$MyWebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/setting/AccountWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/setting/AccountWebViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/setting/AccountWebViewFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    .line 6
    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 1
    .line 2
    const-string v0, "accountVerified"

    .line 3
    .line 4
    const-string v1, "Delete Account"

    .line 5
    .line 6
    const-string v2, "amino-bridge://"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v2

    .line 11
    .line 12
    if-eqz v2, :cond_6

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "updateSecret"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const-string v3, "secret"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Lcom/narvii/setting/AccountWebViewFragment;->updateSecret(Ljava/lang/String;)V

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_0
    const-string v3, "cleanCookie"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v3

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    .line 62
    .line 63
    const-string v1, "host"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/narvii/setting/AccountWebViewFragment;->cleanCookie(Ljava/lang/String;)V

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_1
    const-string p1, "emailActivated"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/narvii/setting/AccountWebViewFragment;->v(Lcom/narvii/setting/AccountWebViewFragment;)V

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_2
    const-string p1, "accountDeleted"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p1

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    .line 96
    .line 97
    const-string v0, "statistics"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 111
    .line 112
    new-instance p1, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, p0}, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;-><init>(Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;)V

    .line 116
    .line 117
    const-wide/16 v0, 0x3e8

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :cond_3
    const-string p1, "communityDeleted"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p1

    .line 128
    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/narvii/setting/AccountWebViewFragment;->communityDelete()V

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result p1

    .line 140
    .line 141
    if-eqz p1, :cond_5

    .line 142
    .line 143
    new-instance p1, Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 147
    const/4 v1, 0x1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    .line 152
    iget-object v0, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    .line 153
    const/4 v1, -0x1

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 157
    .line 158
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_1

    .line 163
    .line 164
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    const-string v1, "fail to process url callback: "

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object p2

    .line 180
    .line 181
    .line 182
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 184
    return p1

    .line 185
    .line 186
    .line 187
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 188
    move-result p1

    .line 189
    return p1
.end method
