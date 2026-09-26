.class public Lcom/narvii/util/PreferencesHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEFAULT_LANGUAGE_CODE:Ljava/lang/String; = "en"

.field public static KEY_ANNOUNCEMENT_LAST_OPEN_TIME:Ljava/lang/String; = "key_announcement_last_open_time"

.field public static KEY_COMMUNITY_TAB_EXP:Ljava/lang/String; = "key_community_tab_exp"

.field public static KEY_CONTENT_LANGUAGE:Ljava/lang/String; = "content_language"

.field public static KEY_CUR_LANGUAGE_INFO_SHOWED:Ljava/lang/String; = "key_current_language_info_showed"

.field public static KEY_EXPLORER_LANGUAGE:Ljava/lang/String; = "key_explorer_language"

.field public static KEY_EXPLORER_LANGUAGE_CHANGED:Ljava/lang/String; = "key_explorer_language_changed"

.field public static KEY_EXPLORER_RETURN_LANGUAGE:Ljava/lang/String; = "key_explorer_return_language"

.field public static KEY_FORCE_UPDATE_BIRTHDATE_COUNT_MAP:Ljava/lang/String; = "key_force_update_birthdate_count"

.field public static KEY_FORCE_UPDATE_BIRTHDATE_TIMESTAMP_MAP:Ljava/lang/String; = "key_force_update_birthdate_timestamp"

.field public static KEY_LANDING_POS:Ljava/lang/String; = "key_master_landing_pos"

.field public static KEY_LANGUAGE_HINT:Ljava/lang/String; = "key_language_hint_show_before"

.field public static final KEY_LAST_ANNOUNCEMENT_ID:Ljava/lang/String; = "bottom_drawer_last_an_id"

.field public static final KEY_LAST_ANNOUNCEMENT_SHOW_TIME:Ljava/lang/String; = "bottom_drawer_an_showtime"

.field public static KEY_LAST_ANNOUNCEMENT_TIME:Ljava/lang/String; = "key_last_announcement_time"

.field public static final KEY_LAST_SHOW_TIME:Ljava/lang/String; = "bottom_drawer_last_showtime"

.field public static final KEY_LAST_SUGGEST_SHOW_TIME:Ljava/lang/String; = "bottom_drawer_last_sg_showtime"

.field public static KEY_LAST_TIME_APP_CHECK_CALLED:Ljava/lang/String; = "key_last_time_app_check_called"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/PreferencesHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "prefs"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/content/SharedPreferences;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    const-string v0, "language"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/language/LanguageManager;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/util/PreferencesHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    .line 26
    return-void
.end method

.method private getAnnouncementLastReadTime(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
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

    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
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

    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
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

    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
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

    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
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

    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_LANGUAGE_CHANGED:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    return-void
.end method

.method public getAnnouncementLastReadTime()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/narvii/util/PreferencesHelper;->getAnnouncementLastReadTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBirthdateForceFreq(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_FORCE_UPDATE_BIRTHDATE_COUNT_MAP:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "{}"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-class v1, Ljava/lang/String;

    .line 14
    .line 15
    const-class v2, Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/JacksonUtils;->readMapAs(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Ljava/lang/Integer;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public getBirthdateForceTimestamp(Ljava/lang/String;)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_FORCE_UPDATE_BIRTHDATE_TIMESTAMP_MAP:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "{}"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-class v1, Ljava/lang/String;

    .line 14
    .line 15
    const-class v2, Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/JacksonUtils;->readMapAs(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Ljava/lang/Long;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    return-wide v0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 34
    move-result-wide v0

    .line 35
    return-wide v0
.end method

.method public getCommunityTabExp()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_COMMUNITY_TAB_EXP:Ljava/lang/String;

    .line 5
    const/4 v2, -0x1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getExplorerLanguageCode()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "content_language"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getLandingPos()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LANDING_POS:Ljava/lang/String;

    .line 5
    const/4 v2, -0x1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getLastAnnouncementId()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "bottom_drawer_last_an_id"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getLastAnnouncementTime()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/narvii/util/PreferencesHelper;->getLastAnnouncementTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAnnouncementToastTime()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/narvii/util/PreferencesHelper;->getLastAnnouncementToastTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSuggestCommunityShowTime()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "bottom_drawer_last_sg_showtime"

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getLastTimeAppCheckCalled()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LAST_TIME_APP_CHECK_CALLED:Ljava/lang/String;

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getLiverLayerShownBefore()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LIVE_LAYER_SHOWED:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_MASTER_THEME_Media:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-object v2

    .line 13
    .line 14
    :cond_0
    const-class v1, Lcom/narvii/model/Media;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public getMasterThemeColor()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_MASTER_THEME_COLOR:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public isExplorerLanguageChanged()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_LANGUAGE_CHANGED:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public isLanguageHintShowBefore()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LANGUAGE_HINT:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public isPreWorkDoneForBottomDrawer()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "bottom_drawer_pre_show_down"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public saveAnnouncementLastReadTime(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/util/PreferencesHelper;->saveAnnouncementLastReadTime(Ljava/lang/String;J)V

    return-void
.end method

.method public saveBottomDrawerGlobalShownTime(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "bottom_drawer_last_showtime"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 16
    return-void
.end method

.method public saveCommunityTabExp(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_COMMUNITY_TAB_EXP:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    return-void
.end method

.method public saveLandingPos(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LANDING_POS:Ljava/lang/String;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, -0x1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    return-void
.end method

.method public saveLastAnnouncementShownId(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "bottom_drawer_last_an_id"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    return-void
.end method

.method public saveLastAnnouncementTime(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementTime(Ljava/lang/String;J)V

    return-void
.end method

.method public saveLastAnnouncementToastTime(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/util/PreferencesHelper;->getExplorerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementToastTime(Ljava/lang/String;J)V

    return-void
.end method

.method public saveLastSuggestCommunityShowTime(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "bottom_drawer_last_sg_showtime"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    return-void
.end method

.method public saveLiverLayerShownBefore(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LIVE_LAYER_SHOWED:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 16
    return-void
.end method

.method public setBirthdateForceFreq(Ljava/lang/String;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_FORCE_UPDATE_BIRTHDATE_COUNT_MAP:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "{}"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-class v1, Ljava/lang/String;

    .line 14
    .line 15
    const-class v2, Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/JacksonUtils;->readMapAs(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    sget-object p2, Lcom/narvii/util/PreferencesHelper;->KEY_FORCE_UPDATE_BIRTHDATE_COUNT_MAP:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    return-void
.end method

.method public setBirthdateForceTimestamp(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_FORCE_UPDATE_BIRTHDATE_TIMESTAMP_MAP:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "{}"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-class v1, Ljava/lang/String;

    .line 14
    .line 15
    const-class v2, Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/JacksonUtils;->readMapAs(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 31
    move-result-wide v1

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_FORCE_UPDATE_BIRTHDATE_TIMESTAMP_MAP:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    return-void
.end method

.method public setCurExplorerLanguageShowed()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_CUR_LANGUAGE_INFO_SHOWED:Ljava/lang/String;

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    return-void
.end method

.method public setKeyMasterThemeColor(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_MASTER_THEME_COLOR:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    return-void
.end method

.method public setLanguageShowed()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LANGUAGE_HINT:Ljava/lang/String;

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
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

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_MASTER_THEME_Media:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    sget-object v0, Lcom/narvii/util/PreferencesHelper;->KEY_MASTER_THEME_Media:Ljava/lang/String;

    .line 38
    const/4 v1, 0x0

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    return-void
.end method

.method public setPreWorkDoneForBottomDrawer(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "bottom_drawer_pre_show_down"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    return-void
.end method

.method public shouldShowLanguageInfo()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_CUR_LANGUAGE_INFO_SHOWED:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    return v0
.end method

.method public updateBirthdateForceFreq(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/PreferencesHelper;->getBirthdateForceFreq(Ljava/lang/String;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/PreferencesHelper;->setBirthdateForceFreq(Ljava/lang/String;I)V

    .line 10
    return-void
.end method

.method public updateLastTimeAppCheckCalled()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/PreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_LAST_TIME_APP_CHECK_CALLED:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 17
    move-result-wide v2

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
.end method
