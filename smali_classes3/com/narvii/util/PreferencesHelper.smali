.class public Lcom/narvii/util/PreferencesHelper;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# static fields
.field public static DEFAULT_LANGUAGE_CODE:Ljava/lang/String; = "en"

.field public static KEY_ANNOUNCEMENT_LAST_OPEN_TIME:Ljava/lang/String; = "key_announcement_last_open_time"

.field public static KEY_COMMUNITY_TAB_EXP:Ljava/lang/String; = "key_community_tab_exp"

.field public static KEY_CONTENT_LANGUAGE:Ljava/lang/String; = "content_language"

.field public static KEY_CUR_LANGUAGE_INFO_SHOWED:Ljava/lang/String; = "key_current_language_info_showed"

.field public static KEY_EXPLORER_LANGUAGE:Ljava/lang/String; = "key_explorer_language"

.field public static KEY_EXPLORER_LANGUAGE_CHANGED:Ljava/lang/String; = "key_explorer_language_changed"

.field public static KEY_EXPLORER_RETURN_LANGUAGE:Ljava/lang/String; = "key_explorer_return_language"

.field public static KEY_LANDING_POS:Ljava/lang/String; = "key_master_landing_pos"

.field public static KEY_LANGUAGE_HINT:Ljava/lang/String; = "key_language_hint_show_before"

.field public static final KEY_LAST_ANNOUNCEMENT_ID:Ljava/lang/String; = "bottom_drawer_last_an_id"

.field public static final KEY_LAST_ANNOUNCEMENT_SHOW_TIME:Ljava/lang/String; = "bottom_drawer_an_showtime"

.field public static KEY_LAST_ANNOUNCEMENT_TIME:Ljava/lang/String; = "key_last_announcement_time"

.field public static final KEY_LAST_SHOW_TIME:Ljava/lang/String; = "bottom_drawer_last_showtime"

.field public static final KEY_LAST_SUGGEST_SHOW_TIME:Ljava/lang/String; = "bottom_drawer_last_sg_showtime"

.field public static KEY_LIVE_LAYER_ISSHOWING:Ljava/lang/String; = "key_live_layer_hint_isShowing_before"

.field public static KEY_LIVE_LAYER_SHOWED:Ljava/lang/String; = "key_live_layer_hint_shown_before"

.field public static KEY_MASTER_THEME_COLOR:Ljava/lang/String; = "key_master_theme_color"

.field public static KEY_MASTER_THEME_Media:Ljava/lang/String; = "key_master_theme_media"

.field public static final KEY_PRE_SHOW_DONE:Ljava/lang/String; = "bottom_drawer_pre_show_down"


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field languageManager:Lcom/narvii/language/LanguageManager;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/narvii/util/PreferencesHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "prefs"

    .line 51
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "language"

    .line 52
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/LanguageManager;

    iput-object p1, p0, Lcom/narvii/util/PreferencesHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    return-void
.end method

.method private getAnnouncementLastReadTime(Ljava/lang/String;)J
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/narvii/util/PreferencesHelper;->KEY_ANNOUNCEMENT_LAST_OPEN_TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastAnnouncementTime(Ljava/lang/String;)J
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/narvii/util/PreferencesHelper;->KEY_LAST_ANNOUNCEMENT_TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastAnnouncementToastTime(Ljava/lang/String;)J
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bottom_drawer_an_showtime"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private saveAnnouncementLastReadTime(Ljava/lang/String;J)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/narvii/util/PreferencesHelper;->KEY_ANNOUNCEMENT_LAST_OPEN_TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveLastAnnouncementTime(Ljava/lang/String;J)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/narvii/util/PreferencesHelper;->KEY_LAST_ANNOUNCEMENT_TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveLastAnnouncementToastTime(Ljava/lang/String;J)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bottom_drawer_an_showtime"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public explorerLanguageChanged(Z)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_LANGUAGE_CHANGED:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getAnnouncementLastReadTime()J
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-direct {p0, v0}, Lcom/narvii/util/PreferencesHelper;->getAnnouncementLastReadTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCommunityTabExp()I
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_COMMUNITY_TAB_EXP:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExplorerLanguageCode()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "content_language"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 57
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLandingPos()I
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LANDING_POS:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastAnnouncementId()Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "bottom_drawer_last_an_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAnnouncementTime()J
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/narvii/util/PreferencesHelper;->getLastAnnouncementTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAnnouncementToastTime()J
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Lcom/narvii/util/PreferencesHelper;->getLastAnnouncementToastTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSuggestCommunityShowTime()J
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "bottom_drawer_last_sg_showtime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLiverLayerShownBefore()Z
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LIVE_LAYER_SHOWED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMasterMediaList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_MASTER_THEME_Media:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 133
    :cond_0
    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMasterThemeColor()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_MASTER_THEME_COLOR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isExplorerLanguageChanged()Z
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_LANGUAGE_CHANGED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLanguageHintShowBefore()Z
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LANGUAGE_HINT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPreWorkDoneForBottomDrawer()Z
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "bottom_drawer_pre_show_down"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveAnnouncementLastReadTime(J)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/util/PreferencesHelper;->saveAnnouncementLastReadTime(Ljava/lang/String;J)V

    return-void
.end method

.method public saveBottomDrawerGlobalShownTime(J)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bottom_drawer_last_showtime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveCommunityTabExp(I)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_COMMUNITY_TAB_EXP:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLandingPos(Ljava/lang/Integer;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LANDING_POS:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLastAnnouncementShownId(Ljava/lang/String;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bottom_drawer_last_an_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLastAnnouncementTime(J)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementTime(Ljava/lang/String;J)V

    return-void
.end method

.method public saveLastAnnouncementToastTime(J)V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementToastTime(Ljava/lang/String;J)V

    return-void
.end method

.method public saveLastSuggestCommunityShowTime(J)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bottom_drawer_last_sg_showtime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLiverLayerShownBefore(Z)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LIVE_LAYER_SHOWED:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setCurExplorerLanguageShowed()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_CUR_LANGUAGE_INFO_SHOWED:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setKeyMasterThemeColor(I)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_MASTER_THEME_COLOR:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLanguageShowed()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LANGUAGE_HINT:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMasterThemeMediaList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_MASTER_THEME_Media:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 138
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/narvii/util/PreferencesHelper;->KEY_MASTER_THEME_Media:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPreWorkDoneForBottomDrawer(Z)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bottom_drawer_pre_show_down"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shouldShowLanguageInfo()Z
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_CUR_LANGUAGE_INFO_SHOWED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
