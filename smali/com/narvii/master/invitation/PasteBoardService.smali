.class public Lcom/narvii/master/invitation/PasteBoardService;
.super Ljava/lang/Object;
.source "PasteBoardService.java"


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

    .line 33
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    .line 41
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v0, "prefs"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 43
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pasteBoardBootTime"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long v3, v0, v3

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    const-string/jumbo p1, "system rebooted"

    .line 46
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v3, "pasteBoardUrl"

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private launch(Ljava/lang/String;Z)V
    .locals 2

    .line 115
    new-instance v0, Lcom/narvii/master/invitation/InviteHelper;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/master/invitation/InviteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 116
    new-instance v1, Lcom/narvii/master/invitation/PasteBoardService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/master/invitation/PasteBoardService$1;-><init>(Lcom/narvii/master/invitation/PasteBoardService;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/master/invitation/InviteHelper;->requestInviteIdentify(Ljava/lang/String;Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;)V

    return-void
.end method


# virtual methods
.method public canCheckUrl(Ljava/lang/String;)Z
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pasteBoardUrl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 82
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public checkClipboard()V
    .locals 6

    .line 94
    invoke-virtual {p0}, Lcom/narvii/master/invitation/PasteBoardService;->getPasteBoardLink()Ljava/lang/String;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v1}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v1}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v1, v3, :cond_5

    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/master/invitation/PasteBoardService;->canCheckUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isPermalink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "redirect_from_clipboard"

    .line 99
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/app/ForwardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 103
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 107
    :cond_2
    sget-object v1, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v3, v4, v5}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 108
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 109
    :cond_4
    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/narvii/master/invitation/PasteBoardService;->launch(Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getPasteBoardLink()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 53
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public updateUrl(Ljava/lang/String;)V
    .locals 4

    .line 69
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v3, "pasteBoardUrl"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
