.class public Lcom/narvii/account/AccountResponseListener;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "AccountResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/model/api/AccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field accountChanged:Z

.field private context:Lcom/narvii/app/NVContext;

.field sharedPreferences:Landroid/content/SharedPreferences;

.field sidChanged:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 36
    const-class v0, Lcom/narvii/model/api/AccountResponse;

    invoke-direct {p0, v0}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    .line 31
    iput-boolean v0, p0, Lcom/narvii/account/AccountResponseListener;->sidChanged:Z

    .line 37
    iput-object p1, p0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/AccountResponseListener;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private storeLastAccountInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/narvii/account/AccountResponseListener;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_email"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    iget-object p1, p0, Lcom/narvii/account/AccountResponseListener;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "last_phoneNumber"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateUserContentLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 202
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/account/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 203
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 204
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    const-string v3, "contentLanguage"

    .line 205
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string p1, "extensions"

    .line 206
    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 207
    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 208
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    new-instance p2, Lcom/narvii/account/AccountResponseListener$2;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {p2, p0, v1}, Lcom/narvii/account/AccountResponseListener$2;-><init>(Lcom/narvii/account/AccountResponseListener;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 54
    iget-object v2, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 55
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 56
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 58
    iget-object v6, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v7, "prefs"

    invoke-interface {v6, v7}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SharedPreferences;

    iput-object v6, v0, Lcom/narvii/account/AccountResponseListener;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    .line 59
    iput-boolean v6, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    .line 60
    iput-boolean v6, v0, Lcom/narvii/account/AccountResponseListener;->sidChanged:Z

    .line 62
    iget-object v7, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v8, "auid"

    invoke-interface {v7, v8}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/account/AuidService;

    .line 64
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v8

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const-string v12, "email"

    aput-object v12, v11, v6

    .line 66
    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v11, v10, [Ljava/lang/String;

    const-string v13, "phoneNumber"

    aput-object v13, v11, v6

    .line 67
    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v11, v10, [Ljava/lang/String;

    const-string v14, "facebookID"

    aput-object v14, v11, v6

    .line 68
    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v11, v10, [Ljava/lang/String;

    const-string v15, "googleID"

    aput-object v15, v11, v6

    .line 69
    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v11, v10, [Ljava/lang/String;

    const-string v16, "activation"

    aput-object v16, v11, v6

    .line 70
    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v11, v10, [Ljava/lang/String;

    const-string v17, "emailActivation"

    aput-object v17, v11, v6

    .line 71
    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v11, v10, [Ljava/lang/String;

    const-string v18, "phoneNumberActivation"

    aput-object v18, v11, v6

    .line 72
    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v11, v10, [Ljava/lang/String;

    const-string v19, "aminoId"

    aput-object v19, v11, v6

    .line 73
    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v11, v10, [Ljava/lang/String;

    const-string v20, "aminoIdEditable"

    aput-object v20, v11, v6

    .line 74
    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 79
    iget-object v11, v1, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 80
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v11

    const-string/jumbo v10, "uid"

    const-string v6, "sid"

    if-eqz v11, :cond_3

    .line 81
    iget-object v11, v1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v11, v11, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    move-object/from16 v21, v8

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v7, :cond_0

    .line 85
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->auid:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/narvii/account/AuidService;->saveAuid(Ljava/lang/String;)V

    .line 88
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account sid updated to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 91
    invoke-virtual {v2, v8}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 92
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v5, 0x1

    .line 93
    iput-boolean v5, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    .line 95
    iget-object v5, v1, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    iget-object v5, v1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v5, v5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v4, v10, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v7, :cond_2

    .line 98
    iget-object v5, v1, Lcom/narvii/model/api/AccountResponse;->auid:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/narvii/account/AuidService;->saveAuid(Ljava/lang/String;)V

    .line 101
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account switch to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v6, v6, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    move-object v5, v4

    const/4 v4, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v21, v8

    .line 105
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v5, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v7, :cond_4

    .line 108
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->auid:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/narvii/account/AuidService;->saveAuid(Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x1

    .line 110
    iput-boolean v4, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "login to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v6, v6, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 114
    :goto_1
    iput-boolean v4, v0, Lcom/narvii/account/AccountResponseListener;->sidChanged:Z

    goto :goto_2

    :cond_5
    move-object/from16 v21, v8

    const/4 v6, 0x0

    .line 117
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 118
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_8

    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_8

    .line 124
    iget-object v3, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v5, "content_language"

    invoke-interface {v3, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/language/ContentLanguageService;

    .line 125
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/model/User;->getContentLanguage()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_6

    if-eqz v7, :cond_8

    .line 130
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v7, v3}, Lcom/narvii/account/AccountResponseListener;->updateUserContentLanguage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 133
    :cond_6
    iget-object v8, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v10, "language"

    invoke-interface {v8, v10}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/language/LanguageManager;

    if-nez v7, :cond_7

    .line 134
    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    .line 135
    invoke-virtual {v3, v5, v8}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;Z)V

    goto :goto_3

    .line 136
    :cond_7
    invoke-static {v7, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 137
    invoke-virtual {v3, v5}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;)V

    :cond_8
    :goto_3
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v5, v7

    .line 142
    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v3, [Ljava/lang/String;

    aput-object v13, v8, v7

    .line 143
    invoke-static {v4, v8}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-direct {v0, v5, v8}, Lcom/narvii/account/AccountResponseListener;->storeLastAccountInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v5, v1, Lcom/narvii/model/api/AccountResponse;->userProfile:Lcom/narvii/model/User;

    if-eqz v5, :cond_9

    .line 147
    iget-object v8, v1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v2, v5, v8, v7, v3}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    .line 151
    :cond_9
    iget-boolean v2, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    if-nez v2, :cond_a

    .line 152
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    new-array v2, v3, [Ljava/lang/String;

    aput-object v12, v2, v7

    .line 153
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v13, v2, v7

    .line 154
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v14, v2, v7

    .line 155
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v15, v2, v7

    .line 156
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v16, v2, v7

    .line 157
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v17, v2, v7

    .line 158
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v18, v2, v7

    .line 159
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v19, v2, v7

    .line 160
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v20, v2, v7

    .line 161
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v21

    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 165
    iput-boolean v3, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    :cond_a
    if-eqz v6, :cond_b

    return-void

    .line 172
    :cond_b
    new-instance v2, Lcom/narvii/account/AccountResponseListener$1;

    invoke-direct {v2, v0}, Lcom/narvii/account/AccountResponseListener$1;-><init>(Lcom/narvii/account/AccountResponseListener;)V

    const-wide/16 v3, 0x64

    invoke-static {v2, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountResponseListener;->secret(Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method

.method protected secret(Lcom/narvii/model/api/AccountResponse;)V
    .locals 8

    .line 41
    iget-object v0, p1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/narvii/model/api/AccountResponse;->secret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 45
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v6, 0x1

    const-string v7, "email"

    aput-object v7, v4, v6

    invoke-static {v2, v4}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    const-string v1, "phoneNumber"

    aput-object v1, v3, v6

    invoke-static {v4, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 48
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/api/AccountResponse;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/account/AccountService;->setKeychain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
