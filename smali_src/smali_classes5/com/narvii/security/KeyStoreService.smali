.class public final Lcom/narvii/security/KeyStoreService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/security/KeyStoreService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyStoreService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyStoreService.kt\ncom/narvii/security/KeyStoreService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,143:1\n1#2:144\n13309#3,2:145\n*S KotlinDebug\n*F\n+ 1 KeyStoreService.kt\ncom/narvii/security/KeyStoreService\n*L\n112#1:145,2\n*E\n"
.end annotation


# static fields
.field public static final ATTESTATION_FAILURE_KEY:Ljava/lang/String; = "com.narvii.util.debug.model.ToggleOptionsRepository.ATTESTATION_FAILURE_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final AUTH_ALIAS_PREFIX:Ljava/lang/String; = "auth-keys"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/narvii/security/KeyStoreService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "KeyStoreService"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOGGLE_OPTIONS_PREF_KEY:Ljava/lang/String; = "com.narvii.util.debug.model.ToggleOptionsRepository"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final accountService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final apiService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/security/KeyStoreService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/security/KeyStoreService$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/security/KeyStoreService;->Companion:Lcom/narvii/security/KeyStoreService$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/security/KeyStoreService;->ctx:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/security/KeyStoreService$apiService$2;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/security/KeyStoreService$apiService$2;-><init>(Lcom/narvii/security/KeyStoreService;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/security/KeyStoreService;->apiService$delegate:Lw7/m;

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/security/KeyStoreService$accountService$2;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/narvii/security/KeyStoreService$accountService$2;-><init>(Lcom/narvii/security/KeyStoreService;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/security/KeyStoreService;->accountService$delegate:Lw7/m;

    .line 28
    return-void
.end method

.method private final getAppCheckToken(Lz/b$a;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/security/KeyStoreService;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/security/KeyStoreService;->shouldFailAttestation()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lz/b;->a:Lz/b$b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0, p1}, Lz/b$b;->c(Landroid/content/Context;Lz/b$a;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "Toggle options failure"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method private final getToggleOptionsRepository()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/security/KeyStoreService;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "com.narvii.util.debug.model.ToggleOptionsRepository"

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    return-object v0

    .line 23
    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Context is null"

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method private final shouldFailAttestation()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/security/KeyStoreService;->getToggleOptionsRepository()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "com.narvii.util.debug.model.ToggleOptionsRepository.ATTESTATION_FAILURE_KEY"

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method


# virtual methods
.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/security/KeyStoreService;->accountService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    return-object v0
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/security/KeyStoreService;->apiService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/security/KeyStoreService;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getResendPublicKeyRequest(Lcom/narvii/util/Callback;)V
    .locals 3
    .param p1    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/http/ApiRequest;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "onCompleted"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/narvii/security/KeyStoreService$getResendPublicKeyRequest$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/narvii/security/KeyStoreService$getResendPublicKeyRequest$1;-><init>(Lcom/narvii/security/KeyStoreService;Lcom/narvii/util/Callback;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/narvii/security/KeyStoreService;->getAppCheckToken(Lz/b$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .line 17
    const-string v1, "AppCheck"

    .line 18
    .line 19
    const-string v2, "Error getting token"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/google/firebase/crashlytics/g;->a()Lcom/google/firebase/crashlytics/g;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/g;->c(Ljava/lang/Throwable;)V

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 34
    :goto_0
    return-void
.end method

.method public final getUpdatePublicKeyRequest(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "token"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v1, "getUpdatePublicKeyRequest"

    .line 9
    .line 10
    const-string v2, "KeyStoreService"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v3, "context: "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/security/KeyStoreService;->ctx:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/security/KeyStoreService;->ctx:Lcom/narvii/app/NVContext;

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    return-object v3

    .line 42
    .line 43
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v5, "alias: "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/security/KeyStoreService;->keyAlias()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v4}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/security/KeyStoreService;->keyAlias()Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    if-nez v4, :cond_1

    .line 72
    return-object v3

    .line 73
    .line 74
    .line 75
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    sget-boolean v6, Lcom/narvii/util/http/ApiService;->sendingPublicKeyInProgress:Z

    .line 79
    .line 80
    if-eqz v6, :cond_2

    .line 81
    .line 82
    const-string p1, "Sending public key in progress"

    .line 83
    .line 84
    .line 85
    invoke-static {v2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object v3

    .line 87
    :catch_0
    move-exception p1

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :cond_2
    const-string v6, "Generating key pair"

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v6}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v6, 0x1

    .line 95
    .line 96
    sput-boolean v6, Lcom/narvii/util/http/ApiService;->sendingPublicKeyInProgress:Z

    .line 97
    .line 98
    .line 99
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    const-string v6, "getContext(...)"

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v4}, Ly/e;->c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    if-eqz v1, :cond_3

    .line 112
    array-length v4, v1

    .line 113
    const/4 v6, 0x0

    .line 114
    .line 115
    :goto_0
    if-ge v6, v4, :cond_3

    .line 116
    .line 117
    aget-object v7, v1, v6

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v7}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 121
    .line 122
    add-int/lit8 v6, v6, 0x1

    .line 123
    goto :goto_0

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 131
    move-result-object v4

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 139
    .line 140
    const-string v4, "security/public_key"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 144
    .line 145
    const-string v4, "key_chain"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 152
    .line 153
    .line 154
    const-string/jumbo p1, "uid"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/narvii/security/KeyStoreService;->getAccountService()Lcom/narvii/account/AccountService;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    move-object v0, v3

    .line 167
    .line 168
    .line 169
    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 170
    .line 171
    sget-object p1, Lcom/narvii/util/http/ApiService;->DISABLE_RESEND_PUBLIC_KEY_TAG:Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    const-string v1, "Request: "

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    .line 198
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    move-object v3, p1

    .line 200
    goto :goto_3

    .line 201
    .line 202
    :goto_2
    const-string v0, "Error generating key pair"

    .line 203
    .line 204
    .line 205
    invoke-static {v2, v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :goto_3
    return-object v3
.end method

.method public final keyAlias()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/security/KeyStoreService;->getAccountService()Lcom/narvii/account/AccountService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v2, "auth-keys-"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method

.method public final sendPublicKey(Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 8
    .param p1    # Lcom/narvii/util/http/ApiResponseListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/narvii/security/KeyStoreService$sendPublicKey$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/narvii/security/KeyStoreService$sendPublicKey$1;-><init>(Lcom/narvii/security/KeyStoreService;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/narvii/security/KeyStoreService;->getAppCheckToken(Lz/b$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    move-object v7, v0

    .line 17
    .line 18
    const-string v0, "AppCheck"

    .line 19
    .line 20
    const-string v1, "Error getting token"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v7}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/google/firebase/crashlytics/g;->a()Lcom/google/firebase/crashlytics/g;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v7}, Lcom/google/firebase/crashlytics/g;->c(Ljava/lang/Throwable;)V

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v1, p1

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 43
    :goto_0
    return-void
.end method
