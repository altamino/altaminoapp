.class public Lcom/narvii/language/ContentLanguageService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private context:Lcom/narvii/app/NVContext;

.field private devicePrefs:Landroid/content/SharedPreferences;

.field private eventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/language/LanguageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private languageManager:Lcom/narvii/language/LanguageManager;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/language/ContentLanguageService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    const-string v0, "account"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/language/ContentLanguageService;->accountService:Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    const-string v0, "prefs"

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/content/SharedPreferences;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/language/ContentLanguageService;->devicePrefs:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    const-string v0, "language"

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/language/LanguageManager;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/language/ContentLanguageService;->languageManager:Lcom/narvii/language/LanguageManager;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/language/ContentLanguageService;->context:Lcom/narvii/app/NVContext;

    .line 49
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/narvii/language/LanguageChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/language/ContentLanguageService;->lambda$saveLanguageCode$0(Ljava/lang/String;Lcom/narvii/language/LanguageChangeListener;)V

    return-void
.end method

.method private getRequestPrefLanguage(Z)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/language/ContentLanguageService;->languageStoredInThisDevice()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    return-object v0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/narvii/language/ContentLanguageService;->getSuggestedLanguage()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_2
    if-eqz p1, :cond_3

    .line 24
    .line 25
    sget-object p1, Lcom/narvii/util/PreferencesHelper;->DEFAULT_LANGUAGE_CODE:Ljava/lang/String;

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_3
    iget-object p1, p0, Lcom/narvii/language/ContentLanguageService;->languageManager:Lcom/narvii/language/LanguageManager;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/language/LanguageManager;->getLocalCode()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method private getSuggestedLanguage()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/util/PreferencesHelper;->DEFAULT_LANGUAGE_CODE:Ljava/lang/String;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_RETURN_LANGUAGE:Ljava/lang/String;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$saveLanguageCode$0(Ljava/lang/String;Lcom/narvii/language/LanguageChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/language/LanguageChangeListener;->onLanguageChanged(Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getLanguageShowCode()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/util/PreferencesHelper;->DEFAULT_LANGUAGE_CODE:Ljava/lang/String;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_LANGUAGE:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lcom/narvii/util/PreferencesHelper;->DEFAULT_LANGUAGE_CODE:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    :goto_0
    return-object v0
.end method

.method public getRequestPrefLanguageWithEnAsDefault()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguage(Z)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguage(Z)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public languageStoredInThisDevice()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->devicePrefs:Landroid/content/SharedPreferences;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    sget-object v2, Lcom/narvii/util/PreferencesHelper;->KEY_CONTENT_LANGUAGE:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    :goto_0
    return-object v1
.end method

.method public languageUserSelected()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    sget-object v2, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_LANGUAGE:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    :goto_0
    return-object v1
.end method

.method public registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public saveDeviceStoredLanguage(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->devicePrefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_CONTENT_LANGUAGE:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    :cond_0
    return-void
.end method

.method public saveLanguageCode(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->context:Lcom/narvii/app/NVContext;

    .line 2
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveLanguageCode(Ljava/lang/String;Z)V
    .locals 5

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/language/ContentLanguageService;->saveDeviceStoredLanguage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    .line 6
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/language/ContentLanguageService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    .line 7
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 8
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/account/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    const-string v4, "contentLanguage"

    .line 12
    invoke-virtual {v3, v4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v4, "extensions"

    .line 13
    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 14
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_LANGUAGE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/narvii/language/ContentLanguageService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 17
    new-instance v0, Ly5/a;

    invoke-direct {v0, p1}, Ly5/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method

.method public saveSuggestLanguage(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/narvii/language/ContentLanguageService;->getSuggestedLanguage()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_RETURN_LANGUAGE:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    :cond_1
    return-void
.end method

.method public unRegisterLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 9
    return-void
.end method
