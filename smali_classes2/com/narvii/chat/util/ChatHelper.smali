.class public final Lcom/narvii/chat/util/ChatHelper;
.super Ljava/lang/Object;
.source "ChatHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/util/ChatHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatHelper.kt\ncom/narvii/chat/util/ChatHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,698:1\n673#2:699\n746#2,2:700\n1587#2,2:702\n1587#2,2:704\n*E\n*S KotlinDebug\n*F\n+ 1 ChatHelper.kt\ncom/narvii/chat/util/ChatHelper\n*L\n259#1:699\n259#1,2:700\n260#1,2:702\n296#1,2:704\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

.field private static final MESSAGE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final NicknameColors:[I

.field private static final THREAD_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;

.field private final ctx:Landroid/content/Context;

.field private final nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/util/ChatHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 52
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/chat/util/ChatHelper;->NicknameColors:[I

    .line 59
    sget-object v0, Lcom/narvii/chat/util/ChatHelper$Companion$MESSAGE_COMPARATOR$1;->INSTANCE:Lcom/narvii/chat/util/ChatHelper$Companion$MESSAGE_COMPARATOR$1;

    sput-object v0, Lcom/narvii/chat/util/ChatHelper;->MESSAGE_COMPARATOR:Ljava/util/Comparator;

    .line 66
    sget-object v0, Lcom/narvii/chat/util/ChatHelper$Companion$THREAD_COMPARATOR$1;->INSTANCE:Lcom/narvii/chat/util/ChatHelper$Companion$THREAD_COMPARATOR$1;

    sput-object v0, Lcom/narvii/chat/util/ChatHelper;->THREAD_COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060065
        0x7f060066
        0x7f060067
        0x7f060068
        0x7f060069
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 47
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "Utils.getNVContext(ctx)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 48
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "nvContext.getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public static final synthetic access$getMESSAGE_COMPARATOR$cp()Ljava/util/Comparator;
    .locals 1

    .line 41
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->MESSAGE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static final synthetic access$getNicknameColors$cp()[I
    .locals 1

    .line 41
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->NicknameColors:[I

    return-object v0
.end method

.method public static final synthetic access$getTHREAD_COMPARATOR$cp()Ljava/util/Comparator;
    .locals 1

    .line 41
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->THREAD_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private final canChat(Lcom/narvii/model/User;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const-string v1, "privilegeOfChatInviteRequest"

    .line 330
    invoke-virtual {p1, v1}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    return v0

    :cond_0
    return v2

    .line 334
    :cond_1
    iget p1, p1, Lcom/narvii/model/User;->followingStatus:I

    if-eq p1, v4, :cond_3

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public final appendNewMessageWithSort(Ljava/util/List;Lcom/narvii/model/ChatMessage;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/narvii/model/ChatMessage;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/narvii/model/ChatMessage;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/narvii/model/ChatMessage;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 426
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 428
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 433
    :cond_3
    sget-object v0, Lcom/narvii/chat/util/ChatHelper$appendNewMessageWithSort$insertIndex$1;->INSTANCE:Lcom/narvii/chat/util/ChatHelper$appendNewMessageWithSort$insertIndex$1;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, -0x1

    .line 447
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 448
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 450
    :cond_5
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    return-object p1
.end method

.method public final buildMessageContent(IILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 228
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    iget-object p2, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final canChatWithCurrentUserInGlobalLevel(Lcom/narvii/model/User;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 311
    :cond_0
    iget v1, p1, Lcom/narvii/model/User;->followingStatus:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, 0x104000a

    if-eq v1, v2, :cond_1

    .line 312
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f1012

    .line 313
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 314
    invoke-virtual {p1, v4, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 315
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return v0

    .line 318
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->canChat(Lcom/narvii/model/User;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 319
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f1125

    .line 320
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 321
    invoke-virtual {p1, v4, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 322
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getAvatarList(Lcom/narvii/model/ChatThread;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 277
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 279
    :cond_0
    iget v0, p1, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v0, :cond_3

    .line 294
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getOptimizedMembersSummary()Ljava/util/List;

    move-result-object p1

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "ul"

    .line 296
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 297
    iget v2, v1, Lcom/narvii/model/User;->membershipStatus:I

    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-nez p1, :cond_4

    .line 283
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 285
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 286
    iget-object v2, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 287
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v0, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 304
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getChannelType(Lcom/narvii/model/ChatMessage;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 465
    :cond_0
    iget p1, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v0, 0x72

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x6b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCtx()Landroid/content/Context;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public final getHostLabelName(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_1

    .line 113
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 116
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0768

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 118
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 119
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0279

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final getMemberCount(Lcom/narvii/model/ChatThread;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 272
    iget p1, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getMentionedTextRange(Lcom/narvii/model/ChatMessage;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatMessage;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/input/MentionedEditText$Range;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasMentionedUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_4

    .line 139
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mentionedArray"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 140
    instance-of v3, v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v3, :cond_8

    .line 141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p1, :cond_7

    .line 144
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/String;

    const-string/jumbo v9, "uid"

    aput-object v9, v8, v4

    .line 145
    invoke-static {v7, v8}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u200e\u200f"

    .line 146
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    if-le v9, v8, :cond_2

    add-int/lit8 v9, v8, 0x2

    .line 148
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string/jumbo v9, "\u202c\u202d"

    .line 150
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-gez v9, :cond_3

    goto :goto_2

    :cond_3
    if-le v10, v9, :cond_4

    add-int/lit8 v10, v9, 0x2

    .line 152
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    if-gez v8, :cond_5

    goto :goto_3

    :cond_5
    if-le v9, v8, :cond_6

    .line 155
    new-instance v10, Lcom/narvii/chat/input/MentionedEditText$Range;

    invoke-direct {v10, v7, v1, v8, v9}, Lcom/narvii/chat/input/MentionedEditText$Range;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v3

    :cond_8
    :goto_4
    return-object v1
.end method

.method public final getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0, p1}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p2, :cond_0

    return-object v0

    .line 172
    :cond_0
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 173
    iget-object p1, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    return-object p1

    .line 176
    :cond_3
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 177
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    .line 178
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/narvii/chat/util/ChatHelper;->getUser(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 179
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    move-object v1, p1

    goto :goto_3

    :cond_5
    move-object v1, v0

    .line 182
    :cond_6
    :goto_3
    iget p1, p2, Lcom/narvii/model/ChatMessage;->type:I

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 223
    iget-object p1, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    return-object p1

    :pswitch_0
    const p1, 0x7f0f10f6

    const p2, 0x7f0f10f7

    .line 220
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f0f10f8

    const p2, 0x7f0f10f9

    .line 218
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f0f01f1

    const p2, 0x7f0f01f2

    .line 216
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const p1, 0x7f0f01f3

    const p2, 0x7f0f01f4

    .line 214
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const p1, 0x7f0f01ef

    const p2, 0x7f0f01f0

    .line 212
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const p1, 0x7f0f0203

    const p2, 0x7f0f0204

    .line 210
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    const p1, 0x7f0f01f5

    const p2, 0x7f0f01f6

    .line 198
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    const p1, 0x7f0f0211

    const p2, 0x7f0f0212

    .line 208
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    const p1, 0x7f0f0213

    const p2, 0x7f0f0214

    .line 203
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    const p1, 0x7f0f01fd

    const p2, 0x7f0f01fe

    .line 196
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    const p1, 0x7f0f020f

    const p2, 0x7f0f0210

    .line 194
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    const p1, 0x7f0f01ed

    const p2, 0x7f0f01ee

    .line 192
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_c
    const p1, 0x7f0f0205

    const p2, 0x7f0f0206

    .line 190
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d
    const p1, 0x7f0f0201

    const p2, 0x7f0f0202

    .line 188
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_e
    const p1, 0x7f0f01ff

    const p2, 0x7f0f0200

    .line 186
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_f
    const p1, 0x7f0f01f7

    const p2, 0x7f0f01f8

    .line 184
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 232
    iget v1, p1, Lcom/narvii/model/ChatThread;->type:I

    if-nez v1, :cond_2

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 236
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getSpeakerChannelUser(Lcom/narvii/model/ChatThread;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation

    .line 522
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isCurrentChat(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 525
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "rtc"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    const-string v0, "rtc.mainChannelUserWrapperList.clone()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 528
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 529
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v3, :cond_1

    .line 530
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 531
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "userWrapperList.valueAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 362
    iget v1, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sticker"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "stickerCollectionSummary"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 369
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final getThreadTitle(Lcom/narvii/model/ChatThread;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 247
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 248
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    return-object p1

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget v3, p1, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v3, :cond_9

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getOptimizedMembersSummary()Ljava/util/List;

    move-result-object p1

    const-string v4, "chatThread.optimizedMembersSummary"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 700
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/narvii/model/User;

    .line 259
    iget-object v6, v6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_4

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 702
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 261
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_7

    const-string v4, ", "

    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_7
    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 266
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 253
    :cond_9
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_5

    .line 254
    :cond_a
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    const v0, 0x7f0f01d2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method public final getUser(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Lcom/narvii/model/User;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_1

    .line 343
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-nez p1, :cond_2

    goto :goto_2

    .line 346
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 347
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final handleLinkSnippetClick(Lcom/narvii/model/LinkSummary;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 378
    iget-object v0, p1, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    .line 383
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 385
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final isChatThreadDisabledOrDelete(Lcom/narvii/model/ChatThread;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 413
    :cond_0
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/16 v4, 0x9

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/narvii/model/User;->status:I

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 414
    :goto_0
    iget p1, p1, Lcom/narvii/model/ChatThread;->status:I

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public final isCoHost(Lcom/narvii/model/ChatThread;)Z
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->isCoHost(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isCurrentChat(Lcom/narvii/model/ChatThread;)Z
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 497
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    :cond_1
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isGuest(Lcom/narvii/model/ChatThread;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 493
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isGuest()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isHost(Lcom/narvii/model/ChatThread;)Z
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 479
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 481
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z
    .locals 1

    .line 487
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public final isHostOrCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z
    .locals 1

    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public final isMeAccessibleToThisChat(Lcom/narvii/model/ChatThread;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 396
    iget v1, p1, Lcom/narvii/model/ChatThread;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 404
    :cond_1
    iget-boolean p1, p1, Lcom/narvii/model/ChatThread;->needHidden:Z

    xor-int/2addr p1, v0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final isMemeber(Lcom/narvii/model/ChatThread;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 491
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->joined()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isMine(Lcom/narvii/model/ChatMessage;)Z
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 392
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final isMyself(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 0

    .line 517
    invoke-static {p1}, Lcom/narvii/chat/util/ChatHelperKt;->getUser(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isMyself(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isMyself(Ljava/lang/String;)Z
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 458
    invoke-static {p2, p1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public final isSpeaker(Lcom/narvii/model/ChatThread;)Z
    .locals 2

    .line 501
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isCurrentChat(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 504
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "rtc"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 505
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/narvii/chat/util/ChatHelperKt;->isSpeaker(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public final isSpeakerHasOtherOriganizer(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z
    .locals 6

    .line 538
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->getSpeakerChannelUser(Lcom/narvii/model/ChatThread;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 542
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 543
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-static {v4}, Lcom/narvii/chat/util/ChatHelperKt;->getUser(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Lcom/narvii/model/User;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, ""

    .line 544
    :goto_1
    invoke-static {p2, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, p1, v4}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final isThreadUnread(Lcom/narvii/model/ChatThread;)Z
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 356
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 357
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :cond_1
    cmp-long p1, v2, v0

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final isVideoPlayer(Lcom/narvii/model/ChatThread;)Z
    .locals 2

    .line 509
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isCurrentChat(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "rtc"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 514
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 513
    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isVideoPlayer(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 514
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final leaveChat(Ljava/lang/String;Lcom/narvii/model/ChatThread;Landroid/support/v4/app/FragmentManager;)V
    .locals 5

    .line 553
    invoke-virtual {p0, p2}, Lcom/narvii/chat/util/ChatHelper;->isVideoPlayer(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    .line 554
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 555
    invoke-virtual {p0, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->isGroupChat(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f10e6

    .line 557
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    const v1, 0x7f0f10e3

    .line 558
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 559
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    .line 560
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setDismissByClickOutside()V

    const v1, 0x7f0f10de

    .line 561
    new-instance v3, Lcom/narvii/chat/util/ChatHelper$leaveChat$1;

    invoke-direct {v3, p0, p2}, Lcom/narvii/chat/util/ChatHelper$leaveChat$1;-><init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {p1, v1, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f0363

    .line 571
    new-instance v3, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;

    invoke-direct {v3, p0, p2, v0, p3}, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;-><init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroid/support/v4/app/FragmentManager;)V

    const/high16 p2, -0x10000

    invoke-virtual {p1, v1, v3, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const p2, 0x7f0f0193

    .line 582
    invoke-virtual {p1, p2, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 583
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const p1, 0x7f0f0ada

    goto :goto_0

    :cond_2
    const p1, 0x7f0f0adb

    .line 586
    :goto_0
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v3, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 587
    invoke-virtual {v1, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p1, 0x7f0f0c29

    const-wide v3, 0xffbbbbbbL

    long-to-int v4, v3

    .line 588
    invoke-virtual {v1, p1, v2, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const p1, 0x7f0f119f

    .line 589
    new-instance v2, Lcom/narvii/chat/util/ChatHelper$leaveChat$3;

    invoke-direct {v2, p0, p2, v0, p3}, Lcom/narvii/chat/util/ChatHelper$leaveChat$3;-><init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v1, p1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 594
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_1
    return-void
.end method

.method public final setChatThreadChannelType(Lcom/narvii/model/ChatThread;I)V
    .locals 1

    if-eqz p1, :cond_2

    .line 125
    invoke-static {p2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_1

    .line 130
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 132
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "channelType"

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_2
    :goto_0
    return-void
.end method

.method public final transOrganizer(Lcom/narvii/model/ChatThread;)V
    .locals 6

    .line 599
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "nvContext.getService(\"rtc\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 600
    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    const-string v2, "configService"

    .line 601
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 602
    iget v3, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 603
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 604
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v4, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f075e

    .line 607
    invoke-virtual {v0, v4}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    const v4, 0x7f0f10e5

    .line 608
    invoke-virtual {v0, v4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v4, 0x7f0f0193

    .line 609
    invoke-virtual {v0, v4, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0f02ee

    .line 610
    new-instance v4, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;

    invoke-direct {v4, p0, p1, v1, v3}, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;-><init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;ILjava/lang/Integer;)V

    invoke-virtual {v0, v2, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 618
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 622
    :cond_2
    const-class v0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 623
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "thread"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v3, :cond_3

    goto :goto_2

    .line 624
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v1, p1, :cond_4

    :goto_2
    const-string p1, "__communityId"

    .line 625
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 627
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
