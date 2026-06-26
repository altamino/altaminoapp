.class public Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;
.super Ljava/lang/Object;
.source "PlayListSharedPreference.java"


# static fields
.field private static final PREF_PREFIX_PLAY_LIST:Ljava/lang/String; = "PLAY_LIST"


# instance fields
.field private nvContext:Lcom/narvii/app/NVContext;

.field private final prefs:Landroid/content/SharedPreferences;

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "play_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "rtc"

    .line 26
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 27
    iput-object p1, p0, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public loadPlayListItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->loadPlayListItem(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadPlayListItem(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->prefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLAY_LIST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    const-class v0, Lcom/narvii/model/PlayListItem;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public savePlaylist(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLAY_LIST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public savePlaylist(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    invoke-virtual {p0, v0, p1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->savePlaylist(ILjava/util/List;)V

    return-void
.end method
