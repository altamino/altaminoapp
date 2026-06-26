.class public Lcom/narvii/language/ContentLanguageService;
.super Ljava/lang/Object;
.source "ContentLanguageService.java"


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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/language/ContentLanguageService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    const-string v0, "account"

    .line 36
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/language/ContentLanguageService;->accountService:Lcom/narvii/account/AccountService;

    .line 37
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "prefs"

    .line 38
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/language/ContentLanguageService;->devicePrefs:Landroid/content/SharedPreferences;

    const-string v0, "language"

    .line 39
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/LanguageManager;

    iput-object v0, p0, Lcom/narvii/language/ContentLanguageService;->languageManager:Lcom/narvii/language/LanguageManager;

    .line 40
    iput-object p1, p0, Lcom/narvii/language/ContentLanguageService;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method private getRequestPrefLanguage(Z)Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/language/ContentLanguageService;->languageStoredInThisDevice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/narvii/language/ContentLanguageService;->getSuggestedLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    .line 92
    sget-object p1, Lcom/narvii/util/PreferencesHelper;->DEFAULT_LANGUAGE_CODE:Ljava/lang/String;

    return-object p1

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/narvii/language/ContentLanguageService;->languageManager:Lcom/narvii/language/LanguageManager;

    invoke-virtual {p1}, Lcom/narvii/language/LanguageManager;->getLocalCode()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSuggestedLanguage()Ljava/lang/String;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lcom/narvii/util/PreferencesHelper;->DEFAULT_LANGUAGE_CODE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_RETURN_LANGUAGE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$saveLanguageCode$0(Ljava/lang/String;Lcom/narvii/language/LanguageChangeListener;)V
    .locals 0

    .line 165
    invoke-interface {p1, p0}, Lcom/narvii/language/LanguageChangeListener;->onLanguageChanged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLanguageShowCode()Ljava/lang/String;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lcom/narvii/util/PreferencesHelper;->DEFAULT_LANGUAGE_CODE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_LANGUAGE:Ljava/lang/String;

    sget-object v2, Lcom/narvii/util/PreferencesHelper;->DEFAULT_LANGUAGE_CODE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRequestPrefLanguageWithEnAsDefault()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguage(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguage(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public languageStoredInThisDevice()Ljava/lang/String;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->devicePrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/narvii/util/PreferencesHelper;->KEY_CONTENT_LANGUAGE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public languageUserSelected()Ljava/lang/String;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_LANGUAGE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public saveDeviceStoredLanguage(Ljava/lang/String;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->devicePrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_CONTENT_LANGUAGE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public saveLanguageCode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveLanguageCode(Ljava/lang/String;Z)V
    .locals 5

    .line 146
    invoke-virtual {p0, p1}, Lcom/narvii/language/ContentLanguageService;->saveDeviceStoredLanguage(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 153
    iget-object v1, p0, Lcom/narvii/language/ContentLanguageService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 154
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
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

    .line 156
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 157
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    const-string v4, "contentLanguage"

    .line 158
    invoke-virtual {v3, v4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v4, "extensions"

    .line 159
    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 160
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 161
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_LANGUAGE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_2

    .line 165
    iget-object p2, p0, Lcom/narvii/language/ContentLanguageService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/language/-$$Lambda$ContentLanguageService$mqzJ7edp7XXhuJ8her7XlqZStdA;

    invoke-direct {v0, p1}, Lcom/narvii/language/-$$Lambda$ContentLanguageService$mqzJ7edp7XXhuJ8her7XlqZStdA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method

.method public saveSuggestLanguage(Ljava/lang/String;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/narvii/language/ContentLanguageService;->getSuggestedLanguage()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/PreferencesHelper;->KEY_EXPLORER_RETURN_LANGUAGE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public unRegisterLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/narvii/language/ContentLanguageService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method
