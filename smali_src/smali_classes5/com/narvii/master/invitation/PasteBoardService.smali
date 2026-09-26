.class public Lcom/narvii/master/invitation/PasteBoardService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_PREFS_URLS:Ljava/lang/String; = "pasteBoardUrl"

.field public static final SKIP:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "prefs"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroid/content/SharedPreferences;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    const-string v4, "pasteBoardBootTime"

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 34
    move-result-wide v2

    .line 35
    .line 36
    sub-long v2, v0, v2

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 40
    move-result-wide v2

    .line 41
    .line 42
    .line 43
    const-wide/32 v5, 0xea60

    .line 44
    .line 45
    cmp-long p1, v2, v5

    .line 46
    .line 47
    if-lez p1, :cond_0

    .line 48
    .line 49
    const-string p1, "system rebooted"

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    const-string v2, "pasteBoardUrl"

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    :cond_0
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private launch(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/invitation/InviteHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/master/invitation/InviteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/master/invitation/PasteBoardService$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/master/invitation/PasteBoardService$1;-><init>(Lcom/narvii/master/invitation/PasteBoardService;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/narvii/master/invitation/InviteHelper;->requestInviteIdentify(Ljava/lang/String;Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;)V

    .line 18
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
.method public canCheckUrl(Ljava/lang/String;)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "pasteBoardUrl"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return v1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    return v3

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v4

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v4

    .line 48
    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 53
    move-result v4

    .line 54
    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    :cond_3
    return v3

    .line 63
    :cond_4
    return v1
.end method

.method public checkClipboard()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/invitation/PasteBoardService;->getPasteBoardLink()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result v2

    .line 24
    xor-int/2addr v2, v3

    .line 25
    .line 26
    if-ne v2, v3, :cond_5

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/master/invitation/PasteBoardService;->canCheckUrl(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_5

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isPermalink(Ljava/lang/String;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    const-string v2, "redirect_from_clipboard"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    const-string v2, "1"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    new-instance v1, Landroid/content/Intent;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    const-class v3, Lcom/narvii/app/ForwardActivity;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    .line 80
    .line 81
    const/high16 v0, 0x10000000

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/narvii/master/invitation/PasteBoardService;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 90
    goto :goto_1

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 94
    move-result v2

    .line 95
    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteCode(Ljava/lang/String;)Z

    .line 100
    move-result v2

    .line 101
    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    .line 106
    move-result v2

    .line 107
    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 111
    .line 112
    const-wide/16 v4, 0x3a98

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2, v4, v5}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 119
    move-result v1

    .line 120
    .line 121
    if-nez v1, :cond_4

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteCode(Ljava/lang/String;)Z

    .line 125
    move-result v1

    .line 126
    .line 127
    if-eqz v1, :cond_3

    .line 128
    goto :goto_0

    .line 129
    :cond_3
    const/4 v3, 0x0

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/narvii/master/invitation/PasteBoardService;->launch(Ljava/lang/String;Z)V

    .line 133
    :cond_5
    :goto_1
    return-void
.end method

.method public getPasteBoardLink()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "clipboard"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/content/ClipboardManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_0
    return-object v2
.end method

.method public updateUrl(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    new-instance v2, Ljava/util/HashSet;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    const-string v3, "pasteBoardUrl"

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    new-instance v1, Ljava/util/HashSet;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    return-void
.end method
