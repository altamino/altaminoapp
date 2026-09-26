.class public Lcom/narvii/account/AccountResponseListener;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    const-class v0, Lcom/narvii/model/api/AccountResponse;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/account/AccountResponseListener;->sidChanged:Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    .line 13
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/account/AccountResponseListener;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private storeLastAccountInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountResponseListener;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "last_email"

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
    .line 17
    iget-object p1, p0, Lcom/narvii/account/AccountResponseListener;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "last_phoneNumber"

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    return-void
.end method

.method private updateUserContentLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v1, "api"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v3, "/account/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    const-string v3, "contentLanguage"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 61
    .line 62
    const-string p1, "extensions"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    new-instance p2, Lcom/narvii/account/AccountResponseListener$2;

    .line 75
    .line 76
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, p0, v1}, Lcom/narvii/account/AccountResponseListener$2;-><init>(Lcom/narvii/account/AccountResponseListener;Ljava/lang/Class;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 83
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

    iget-object v2, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    .line 2
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 3
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v7, "prefs"

    .line 5
    invoke-interface {v6, v7}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SharedPreferences;

    iput-object v6, v0, Lcom/narvii/account/AccountResponseListener;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    iput-boolean v6, v0, Lcom/narvii/account/AccountResponseListener;->sidChanged:Z

    iget-object v7, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v8, "auid"

    .line 6
    invoke-interface {v7, v8}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/account/AuidService;

    .line 7
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v8

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "email"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-static {v8, v11}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "phoneNumber"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-static {v8, v12}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "facebookID"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v13

    .line 11
    invoke-static {v8, v13}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "googleID"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v14

    .line 12
    invoke-static {v8, v14}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "activation"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v15

    .line 13
    invoke-static {v8, v15}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "emailActivation"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v8, v6}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "phoneNumberActivation"

    move-object/from16 v16, v15

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    .line 15
    invoke-static {v8, v15}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "aminoId"

    move-object/from16 v17, v6

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v8, v6}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "aminoIdEditable"

    move-object/from16 v18, v15

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-static {v8, v15}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 19
    iget-object v15, v1, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    move-object/from16 v19, v8

    if-nez v15, :cond_5

    .line 20
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v15

    const-string v8, "uid"

    move-object/from16 v20, v6

    const-string v6, "sid"

    if-eqz v15, :cond_3

    .line 21
    iget-object v15, v1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v15, v15, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    move-object/from16 v21, v14

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 22
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v7, :cond_0

    .line 23
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->auid:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/narvii/account/AuidService;->saveAuid(Ljava/lang/String;)V

    .line 24
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

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 25
    invoke-virtual {v2, v14}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 26
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    .line 27
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v7, :cond_2

    .line 29
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->auid:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/narvii/account/AuidService;->saveAuid(Ljava/lang/String;)V

    .line 30
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account switch to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v6, v6, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_0
    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v21, v14

    .line 31
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v7, :cond_4

    .line 33
    iget-object v4, v1, Lcom/narvii/model/api/AccountResponse;->auid:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/narvii/account/AuidService;->saveAuid(Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    .line 34
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

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :goto_2
    iput-boolean v6, v0, Lcom/narvii/account/AccountResponseListener;->sidChanged:Z

    move v14, v4

    goto :goto_3

    :cond_5
    move-object/from16 v20, v6

    move-object/from16 v21, v14

    const/4 v14, 0x0

    .line 35
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 36
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    new-instance v3, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    iget-object v5, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 40
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 41
    :cond_6
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    move-result-object v5

    .line 42
    :goto_4
    new-instance v6, Lcom/narvii/util/mixpanel/MixPanelUser;

    .line 43
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v7

    iget-object v7, v7, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 44
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v8

    iget-object v8, v8, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    iget-object v15, v1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-boolean v15, v15, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    invoke-direct {v6, v7, v8, v5, v15}, Lcom/narvii/util/mixpanel/MixPanelUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {v3, v6}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->identifyUser(Lcom/narvii/util/mixpanel/MixPanelUser;)V

    .line 46
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_9

    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_9

    iget-object v3, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v5, "content_language"

    .line 47
    invoke-interface {v3, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/language/ContentLanguageService;

    .line 48
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/model/User;->getContentLanguage()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_7

    if-eqz v6, :cond_9

    .line 50
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v6, v3}, Lcom/narvii/account/AccountResponseListener;->updateUserContentLanguage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    iget-object v7, v0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    const-string v8, "language"

    .line 51
    invoke-interface {v7, v8}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/language/LanguageManager;

    if-nez v6, :cond_8

    .line 52
    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    .line 53
    invoke-virtual {v3, v5, v7}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;Z)V

    goto :goto_5

    .line 54
    :cond_8
    invoke-static {v6, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 55
    invoke-virtual {v3, v5}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;)V

    :cond_9
    :goto_5
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v4, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-direct {v0, v3, v5}, Lcom/narvii/account/AccountResponseListener;->storeLastAccountInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v3, v1, Lcom/narvii/model/api/AccountResponse;->userProfile:Lcom/narvii/model/User;

    if-eqz v3, :cond_a

    .line 60
    iget-object v5, v1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    :goto_6
    iget-boolean v2, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    if-nez v2, :cond_b

    .line 61
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v19

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/narvii/account/AccountResponseListener;->accountChanged:Z

    :cond_b
    if-eqz v14, :cond_c

    return-void

    .line 73
    :cond_c
    new-instance v2, Lcom/narvii/account/AccountResponseListener$1;

    invoke-direct {v2, v0}, Lcom/narvii/account/AccountResponseListener$1;-><init>(Lcom/narvii/account/AccountResponseListener;)V

    const-wide/16 v3, 0x64

    invoke-static {v2, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 74
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

    .line 1
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method

.method protected secret(Lcom/narvii/model/api/AccountResponse;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p1, Lcom/narvii/model/api/AccountResponse;->secret:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/AccountResponseListener;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    const-string v1, "account"

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    const-string v3, "email"

    .line 30
    .line 31
    .line 32
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    const-string v4, "phoneNumber"

    .line 44
    .line 45
    .line 46
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v3

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    const-string v2, ""

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object v2, v1

    .line 68
    .line 69
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/narvii/model/api/AccountResponse;->secret:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/account/AccountService;->setKeychain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_3
    :goto_1
    return-void
.end method
