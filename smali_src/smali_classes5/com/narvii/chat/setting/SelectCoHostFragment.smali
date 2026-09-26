.class public final Lcom/narvii/chat/setting/SelectCoHostFragment;
.super Lcom/narvii/chat/ChatMemberPickerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;,
        Lcom/narvii/chat/setting/SelectCoHostFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectCoHostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectCoHostFragment.kt\ncom/narvii/chat/setting/SelectCoHostFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n1855#2,2:132\n*S KotlinDebug\n*F\n+ 1 SelectCoHostFragment.kt\ncom/narvii/chat/setting/SelectCoHostFragment\n*L\n59#1:132,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/setting/SelectCoHostFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_CO_HOST_SIZE:I = 0xa


# instance fields
.field private apiService:Lcom/narvii/util/http/ApiService;

.field private initialUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/setting/SelectCoHostFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/setting/SelectCoHostFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/chat/setting/SelectCoHostFragment;->Companion:Lcom/narvii/chat/setting/SelectCoHostFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/ChatMemberPickerFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getInitialUsers$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->initialUsers:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLoadingDialog$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$onConfirmPick$s-753110576(Lcom/narvii/chat/setting/SelectCoHostFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment;->onConfirmPick(Ljava/util/List;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;-><init>(Lcom/narvii/chat/setting/SelectCoHostFragment;)V

    .line 6
    return-object v0
.end method

.method protected getMemberType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "co-host"

    return-object v0
.end method

.method protected isUserEnableInSearchBar(Lcom/narvii/model/User;)Z
    .locals 2
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->initialUsers:Ljava/util/List;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 20
    move-result p1

    .line 21
    xor-int/2addr p1, v1

    .line 22
    return p1

    .line 23
    :cond_0
    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 9
    .line 10
    const-string v0, "users"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/User;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->initialUsers:Ljava/util/List;

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 30
    .line 31
    const-string p1, "api"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string v0, "getService(...)"

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 45
    return-void
.end method

.method protected onConfirmPick(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->initialUsers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "loadingDialog"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 24
    move-object v0, v1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    move-object v2, p1

    .line 35
    .line 36
    check-cast v2, Ljava/lang/Iterable;

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    check-cast v3, Lcom/narvii/model/User;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_2
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    iget-object v3, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget-object v3, v3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v3, v1

    .line 76
    .line 77
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    const-string v5, "/chat/thread/"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, "/co-host"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    const-string v3, "uidList"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    iget-object v2, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 110
    .line 111
    if-nez v2, :cond_4

    .line 112
    .line 113
    const-string v2, "apiService"

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    move-object v1, v2

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    new-instance v2, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;

    .line 125
    .line 126
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 127
    .line 128
    .line 129
    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;-><init>(Lcom/narvii/chat/setting/SelectCoHostFragment;Ljava/util/List;Ljava/lang/Class;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 133
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f12007b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    return-void
.end method

.method protected showSearchBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
