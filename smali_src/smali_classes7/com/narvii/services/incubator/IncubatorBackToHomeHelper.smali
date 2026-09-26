.class public Lcom/narvii/services/incubator/IncubatorBackToHomeHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final NOT_SHOW_LOGIN_WHEN_OPEN_MASTER:Ljava/lang/String; = "not_show_login_when_open_master"


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

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 5

    .line 1
    .line 2
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    instance-of p2, p1, Lcom/narvii/app/ForwardActivity;

    .line 7
    .line 8
    if-nez p2, :cond_3

    .line 9
    .line 10
    instance-of p2, p1, Lcom/narvii/amino/MainActivity;

    .line 11
    .line 12
    if-nez p2, :cond_3

    .line 13
    .line 14
    instance-of p2, p1, Lcom/narvii/master/MasterActivity;

    .line 15
    .line 16
    if-nez p2, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMainStacked()Z

    .line 20
    move-result p2

    .line 21
    .line 22
    if-nez p2, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMasterStacked()Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-nez p2, :cond_3

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 31
    .line 32
    const-string p2, "_pushIntent"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 36
    move-result p2

    .line 37
    .line 38
    if-eqz p2, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 42
    move-result p2

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isStartingActivity()Z

    .line 48
    move-result p2

    .line 49
    .line 50
    if-nez p2, :cond_3

    .line 51
    .line 52
    iget-boolean p2, p1, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    const-string p2, "config"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 63
    .line 64
    const-string v0, "affiliations"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 74
    move-result v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 78
    move-result v0

    .line 79
    .line 80
    .line 81
    const v2, 0x7f010011

    .line 82
    .line 83
    .line 84
    const v3, 0x7f010010

    .line 85
    .line 86
    if-nez v0, :cond_0

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_0
    if-nez v1, :cond_2

    .line 90
    .line 91
    :goto_0
    new-instance p2, Landroid/content/Intent;

    .line 92
    .line 93
    const-class v0, Lcom/narvii/master/MasterActivity;

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    const-string v1, "not_show_login_when_open_master"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 126
    move-result v0

    .line 127
    .line 128
    if-eqz v0, :cond_1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 136
    move-result-object v0

    .line 137
    const/4 v4, 0x0

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 141
    move-result v0

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    :cond_1
    invoke-static {p1, p2}, Lcom/narvii/services/incubator/IncubatorBackToHomeHelper;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 151
    goto :goto_1

    .line 152
    .line 153
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 154
    .line 155
    const-class v1, Lcom/narvii/amino/MainActivity;

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .line 160
    const-string v1, "__communityId"

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 164
    move-result p2

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    invoke-static {p1, v0}, Lcom/narvii/services/incubator/IncubatorBackToHomeHelper;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 174
    :cond_3
    :goto_1
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
