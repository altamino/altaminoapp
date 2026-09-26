.class public final Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;,
        Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Companion;,
        Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$EmptyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatBatchDeletionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,435:1\n1864#2,3:436\n1549#2:439\n1620#2,3:440\n*S KotlinDebug\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment\n*L\n214#1:436,3\n224#1:439\n224#1:440,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ChatBatchDeletionFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public account:Lcom/narvii/account/AccountService;

.field public adapter:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

.field public api:Lcom/narvii/util/http/ApiService;

.field private apiRequest:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field public chatService:Lcom/narvii/chat/core/ChatService;

.field public config:Lcom/narvii/config/ConfigService;

.field public deleteButton:Landroid/widget/Button;

.field public myCommunityService:Lcom/narvii/community/MyCommunityListService;

.field private ndcId:I

.field private needRefreshWhenResume:Z

.field private final progress$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final selectThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->Companion:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectThreads:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$progress$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$progress$2;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->progress$delegate:Lw7/m;

    .line 22
    return-void
.end method

.method public static final synthetic access$getProgress(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getSelectThreads$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectThreads:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$removeThreadFromRTC(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->removeThreadFromRTC(Lcom/narvii/model/ChatThread;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$selectIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectIds()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->needRefreshWhenResume:Z

    .line 3
    return-void
.end method

.method private final getProgress()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->progress$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    return-object v0
.end method

.method private static final onCreateOptionsMenu$lambda$4(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f1203b6

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    const v1, -0xb56f1e

    .line 25
    .line 26
    .line 27
    const v2, 0x7f1201e2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/chat/global/chat/e;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/global/chat/e;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 36
    .line 37
    .line 38
    const p0, -0x2ffde5

    .line 39
    .line 40
    .line 41
    const v1, 0x7f1203a0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v0, p0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 48
    return-void
.end method

.method private static final onCreateOptionsMenu$lambda$4$lambda$3$lambda$2(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$this_apply"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/chat/global/chat/f;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/f;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    const-string v0, "/chat/thread/leave"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    const-string v0, "threadIds"

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->threadIds()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getApi()Lcom/narvii/util/http/ApiService;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 66
    .line 67
    new-instance v1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;

    .line 68
    .line 69
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, p0, p1, v2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/Class;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 76
    return-void
.end method

.method private static final onCreateOptionsMenu$lambda$4$lambda$3$lambda$2$lambda$1(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getApi()Lcom/narvii/util/http/ApiService;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 17
    :cond_0
    return-void
.end method

.method private final removeThreadFromRTC(Lcom/narvii/model/ChatThread;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 16
    .line 17
    const-string v2, "rtc"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/chat/rtc/RtcService;

    .line 24
    .line 25
    const-string v3, "chat"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/chat/core/ChatService;

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    .line 36
    iget v4, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4, p1}, Lcom/narvii/chat/core/ChatService;->removeThread(ILjava/lang/String;)V

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result p1

    .line 60
    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    iget p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {v2, v0}, Lcom/narvii/chat/rtc/RtcService;->cleanMappedWindow(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Lcom/narvii/chat/rtc/RtcService;->cleanThreadWindow(Ljava/lang/String;)V

    .line 73
    .line 74
    :cond_1
    const-string p1, "globalChat"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Lcom/narvii/chat/util/GlobalChatService;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 84
    .line 85
    iget v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/GlobalChatService;->removeRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 97
    return-void
.end method

.method private final selectIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectThreads:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/lang/Iterable;

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v1
.end method

.method public static synthetic t(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->onCreateOptionsMenu$lambda$4$lambda$3$lambda$2(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private final threadIds()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectIds()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Ljava/lang/Iterable;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    add-int/lit8 v4, v2, 0x1

    .line 29
    .line 30
    if-gez v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 34
    .line 35
    :cond_0
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    if-lez v2, :cond_1

    .line 38
    .line 39
    const-string v2, ","

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move v2, v4

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const-string v1, "toString(...)"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method public static synthetic u(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->onCreateOptionsMenu$lambda$4$lambda$3$lambda$2$lambda$1(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final updateDeleteButton()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getDeleteButton()Landroid/widget/Button;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectIds()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getDeleteButton()Landroid/widget/Button;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getDeleteButton()Landroid/widget/Button;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getDeleteButton()Landroid/widget/Button;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    .line 48
    const v0, -0x2ffde5

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_1
    const v0, 0x66979797

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_2
    return-void
.end method

.method public static synthetic v(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->onCreateOptionsMenu$lambda$4(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->setAdapter(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$EmptyAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$EmptyAdapter;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getAdapter()Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget v2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;Ljava/lang/Boolean;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getAdapter()Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-object p1
.end method

.method public final getAccount()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getAdapter()Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->adapter:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "adapter"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->api:Lcom/narvii/util/http/ApiService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "api"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "chatHelper"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "chatService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getConfig()Lcom/narvii/config/ConfigService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->config:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "config"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getDeleteButton()Landroid/widget/Button;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "deleteButton"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMyCommunityService()Lcom/narvii/community/MyCommunityListService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "myCommunityService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getNdcId()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    return v0
.end method

.method protected getSelectorLightColor()I
    .locals 1

    const v0, -0x77000001

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    const-string v0, "ndcId"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->setChatHelper(Lcom/narvii/chat/util/ChatHelper;)V

    .line 31
    .line 32
    const-string v0, "myCommunityList"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "getService(...)"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V

    .line 47
    .line 48
    const-string v0, "config"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->setConfig(Lcom/narvii/config/ConfigService;)V

    .line 61
    .line 62
    const-string v0, "api"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->setApi(Lcom/narvii/util/http/ApiService;)V

    .line 75
    .line 76
    const-string v0, "account"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->setAccount(Lcom/narvii/account/AccountService;)V

    .line 89
    .line 90
    const-string v0, "chat"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->setChatService(Lcom/narvii/chat/core/ChatService;)V

    .line 103
    .line 104
    .line 105
    const v0, 0x7f120be4

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 109
    .line 110
    iget v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    .line 111
    const/4 v1, 0x0

    .line 112
    .line 113
    if-nez v0, :cond_0

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    move p1, v1

    .line 116
    :goto_0
    const/4 v0, 0x2

    .line 117
    const/4 v2, 0x0

    .line 118
    .line 119
    .line 120
    invoke-static {p0, p1, v1, v0, v2}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    iget v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0d002a

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    const v1, 0x7f0a0082

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-string v2, "findViewById(...)"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast v1, Landroid/widget/Button;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->setDeleteButton(Landroid/widget/Button;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getDeleteButton()Landroid/widget/Button;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    const/high16 v3, 0x41200000    # 10.0f

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getDeleteButton()Landroid/widget/Button;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    const v3, 0x7f1203a0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getDeleteButton()Landroid/widget/Button;

    .line 81
    move-result-object v2

    .line 82
    const/4 v4, -0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getDeleteButton()Landroid/widget/Button;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    const v4, -0x2ffde5

    .line 93
    .line 94
    .line 95
    invoke-static {v4}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getDeleteButton()Landroid/widget/Button;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getDeleteButton()Landroid/widget/Button;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    new-instance v2, Lcom/narvii/chat/global/chat/d;

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, p0}, Lcom/narvii/chat/global/chat/d;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const/4 v1, 0x0

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    if-eqz v1, :cond_0

    .line 126
    .line 127
    .line 128
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    if-eqz v0, :cond_0

    .line 132
    const/4 v1, 0x2

    .line 133
    .line 134
    .line 135
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 136
    .line 137
    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 139
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d0140

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 13
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 1
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p1, "chatMessageDto"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getAdapter()Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getAdapter()Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 22
    .line 23
    const-string v0, "chatMessage"

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->onNewMessage(Lcom/narvii/model/ChatMessage;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->updateDeleteButton()V

    .line 12
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(IZ)V

    .line 17
    :cond_0
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 17
    return-void
.end method

.method public final setAccount(Lcom/narvii/account/AccountService;)V
    .locals 1
    .param p1    # Lcom/narvii/account/AccountService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->account:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setAdapter(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->adapter:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    return-void
.end method

.method public final setApi(Lcom/narvii/util/http/ApiService;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->api:Lcom/narvii/util/http/ApiService;

    return-void
.end method

.method public final setChatHelper(Lcom/narvii/chat/util/ChatHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/util/ChatHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method public final setChatService(Lcom/narvii/chat/core/ChatService;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/core/ChatService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-void
.end method

.method public final setConfig(Lcom/narvii/config/ConfigService;)V
    .locals 1
    .param p1    # Lcom/narvii/config/ConfigService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->config:Lcom/narvii/config/ConfigService;

    return-void
.end method

.method public final setDeleteButton(Landroid/widget/Button;)V
    .locals 1
    .param p1    # Landroid/widget/Button;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    return-void
.end method

.method public final setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V
    .locals 1
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method public final setNdcId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    return-void
.end method
