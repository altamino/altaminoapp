.class public final Lcom/narvii/chat/util/ChatHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/util/ChatHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatHelper.kt\ncom/narvii/chat/util/ChatHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,698:1\n766#2:699\n857#2,2:700\n1855#2,2:702\n1855#2,2:704\n*S KotlinDebug\n*F\n+ 1 ChatHelper.kt\ncom/narvii/chat/util/ChatHelper\n*L\n259#1:699\n259#1:700,2\n260#1:702,2\n296#1:704,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/util/ChatHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MESSAGE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NicknameColors:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final THREAD_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 9
    .line 10
    .line 11
    const v0, 0x7f060088

    .line 12
    .line 13
    .line 14
    const v1, 0x7f060089

    .line 15
    .line 16
    .line 17
    const v2, 0x7f060085

    .line 18
    .line 19
    .line 20
    const v3, 0x7f060086

    .line 21
    .line 22
    .line 23
    const v4, 0x7f060087

    .line 24
    .line 25
    .line 26
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 27
    move-result-object v0

    .line 28
    .line 29
    sput-object v0, Lcom/narvii/chat/util/ChatHelper;->NicknameColors:[I

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/chat/util/g;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Lcom/narvii/chat/util/g;-><init>()V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/chat/util/ChatHelper;->MESSAGE_COMPARATOR:Ljava/util/Comparator;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/chat/util/h;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Lcom/narvii/chat/util/h;-><init>()V

    .line 42
    .line 43
    sput-object v0, Lcom/narvii/chat/util/ChatHelper;->THREAD_COMPARATOR:Ljava/util/Comparator;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "getNVContext(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    const-string v0, "account"

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    const-string v0, "getService(...)"

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 37
    return-void
.end method

.method private static final MESSAGE_COMPARATOR$lambda$9(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isAllNullOrEqual(Ljava/util/Date;Ljava/util/Date;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    .line 20
    move-result p0

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    const/4 p0, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x1

    .line 26
    :goto_0
    return p0
.end method

.method private static final THREAD_COMPARATOR$lambda$10(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatThread;)I
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 3
    .line 4
    iget-boolean v1, p1, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, -0x1

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    move v2, v3

    .line 12
    :cond_0
    return v2

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->lastPinOperationTime:Ljava/util/Date;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->lastPinOperationTime:Ljava/util/Date;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isAllNullOrEqual(Ljava/util/Date;Ljava/util/Date;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-object p0, p0, Lcom/narvii/model/ChatThread;->lastPinOperationTime:Ljava/util/Date;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->lastPinOperationTime:Ljava/util/Date;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    .line 30
    move-result p0

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    move v2, v3

    .line 34
    :cond_2
    return v2

    .line 35
    .line 36
    :cond_3
    iget-object p0, p0, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    .line 42
    move-result p0

    .line 43
    .line 44
    if-eqz p0, :cond_4

    .line 45
    move v2, v3

    .line 46
    :cond_4
    return v2
.end method

.method public static synthetic a(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->MESSAGE_COMPARATOR$lambda$9(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMESSAGE_COMPARATOR$cp()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->MESSAGE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static final synthetic access$getNicknameColors$cp()[I
    .locals 1

    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->NicknameColors:[I

    return-object v0
.end method

.method public static final synthetic access$getTHREAD_COMPARATOR$cp()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->THREAD_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private static final appendNewMessageWithSort$lambda$3(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    .line 20
    :cond_1
    iget-object p0, p0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 26
    move-result p0

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    return v1

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic b(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/chat/util/ChatHelper;->leaveChat$lambda$6(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->leaveChat$lambda$4(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatHelper;Landroid/view/View;)V

    return-void
.end method

.method private final canChat(Lcom/narvii/model/User;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    const-string v1, "privilegeOfChatInviteRequest"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x3

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    return v2

    .line 15
    :cond_0
    const/4 v4, 0x2

    .line 16
    .line 17
    if-ne v1, v4, :cond_3

    .line 18
    .line 19
    iget p1, p1, Lcom/narvii/model/User;->followingStatus:I

    .line 20
    .line 21
    if-ne p1, v4, :cond_1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    if-ne p1, v3, :cond_2

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v0, v2

    .line 27
    :cond_3
    :goto_0
    return v0
.end method

.method public static synthetic d(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/chat/util/ChatHelper;->leaveChat$lambda$6$lambda$5(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatThread;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->THREAD_COMPARATOR$lambda$10(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatThread;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/narvii/model/ChatThread;ILjava/lang/Integer;Lcom/narvii/chat/util/ChatHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/chat/util/ChatHelper;->transOrganizer$lambda$8(Lcom/narvii/model/ChatThread;ILjava/lang/Integer;Lcom/narvii/chat/util/ChatHelper;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/chat/util/ChatHelper;->leaveChat$lambda$7(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->appendNewMessageWithSort$lambda$3(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I

    move-result p0

    return p0
.end method

.method private static final leaveChat$lambda$4(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatHelper;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    if-ne p2, v0, :cond_0

    .line 15
    .line 16
    new-instance p0, Lcom/narvii/widget/ACMAlertDialog;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f120d7d

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 28
    .line 29
    .line 30
    const p1, 0x7f1207e7

    .line 31
    const/4 p2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1, p0}, Lcom/narvii/chat/util/ChatHelper;->transOrganizer(Lcom/narvii/model/ChatThread;)V

    .line 42
    :goto_0
    return-void
.end method

.method private static final leaveChat$lambda$6(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p4, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p4, Lcom/narvii/widget/ACMAlertDialog;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    invoke-direct {p4, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f1203a7

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f1201e2

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/chat/util/a;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/narvii/chat/util/a;-><init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;)V

    .line 31
    .line 32
    .line 33
    const p0, -0xf5f6

    .line 34
    .line 35
    .line 36
    const p1, 0x7f1203a0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4, p1, v0, p0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p4}, Lcom/narvii/app/NVDialog;->show()V

    .line 43
    return-void
.end method

.method private static final leaveChat$lambda$6$lambda$5(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p4, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p4, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-direct {p4, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget p0, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 21
    move-result p0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p4, p0, p1, p3}, Lcom/narvii/chat/util/ChatRequestHelper;->delete(ILcom/narvii/model/ChatThread;Landroidx/fragment/app/FragmentManager;)V

    .line 25
    return-void
.end method

.method private static final leaveChat$lambda$7(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p4, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p4, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-direct {p4, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget p0, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 21
    move-result p0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p4, p0, p1, p3}, Lcom/narvii/chat/util/ChatRequestHelper;->delete(ILcom/narvii/model/ChatThread;Landroidx/fragment/app/FragmentManager;)V

    .line 25
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final transOrganizer$lambda$8(Lcom/narvii/model/ChatThread;ILjava/lang/Integer;Lcom/narvii/chat/util/ChatHelper;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p4, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-class p4, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    move-result-object p4

    .line 12
    .line 13
    const-string v0, "thread"

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result p0

    .line 28
    .line 29
    if-eq p1, p0, :cond_1

    .line 30
    .line 31
    :goto_0
    const-string p0, "__communityId"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 35
    .line 36
    :cond_1
    iget-object p0, p3, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p4}, Lcom/narvii/chat/util/ChatHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final appendNewMessageWithSort(Ljava/util/List;Lcom/narvii/model/ChatMessage;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    :cond_0
    return-object p1

    .line 10
    .line 11
    :cond_1
    if-nez p1, :cond_2

    .line 12
    const/4 p1, 0x1

    .line 13
    .line 14
    new-array p1, p1, [Lcom/narvii/model/ChatMessage;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    aput-object p2, p1, v0

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-object p1

    .line 33
    .line 34
    :cond_3
    new-instance v0, Lcom/narvii/chat/util/b;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Lcom/narvii/chat/util/b;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 41
    move-result v0

    .line 42
    .line 43
    if-gez v0, :cond_4

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    mul-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    .line 50
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    move-result v1

    .line 52
    .line 53
    if-lt v0, v1, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_5
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    :goto_0
    return-object p1
.end method

.method public final buildMessageContent(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    aput-object p3, v0, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    :goto_1
    return-object p1
.end method

.method public final canChatWithCurrentUserInGlobalLevel(Lcom/narvii/model/User;)Z
    .locals 5
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget v1, p1, Lcom/narvii/model/User;->followingStatus:I

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    .line 11
    const v4, 0x104000a

    .line 12
    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const v1, 0x7f121129

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v4, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 33
    return v0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->canChat(Lcom/narvii/model/User;)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    const v1, 0x7f121230

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v4, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 59
    return v0

    .line 60
    :cond_2
    const/4 p1, 0x1

    .line 61
    return p1
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getAvatarList(Lcom/narvii/model/ChatThread;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    iget v0, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 10
    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/model/User;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    iget-object v0, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-object p1

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getOptimizedMembersSummary()Ljava/util/List;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 79
    .line 80
    check-cast p1, Ljava/lang/Iterable;

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v1

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    check-cast v1, Lcom/narvii/model/User;

    .line 97
    .line 98
    iget v2, v1, Lcom/narvii/model/User;->membershipStatus:I

    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    return-object v0
.end method

.method public final getChannelType(Lcom/narvii/model/ChatMessage;)I
    .locals 1
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, -0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget p1, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 7
    .line 8
    const/16 v0, 0x72

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    const/4 p1, 0x3

    .line 17
    goto :goto_0

    .line 18
    :pswitch_1
    const/4 p1, 0x4

    .line 19
    goto :goto_0

    .line 20
    :pswitch_2
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x5

    .line 23
    :goto_0
    return p1

    .line 24
    nop

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    :pswitch_data_0
    .packed-switch 0x6b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCtx()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public final getHostLabelName(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    const p2, 0x7f120817

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    const p2, 0x7f1202c1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getMemberCount(Lcom/narvii/model/ChatThread;)I
    .locals 0
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget p1, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    return p1
.end method

.method public final getMentionedTextRange(Lcom/narvii/model/ChatMessage;)Ljava/util/ArrayList;
    .locals 9
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "message"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasMentionedUser()Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 20
    .line 21
    const-string v2, "mentionedArray"

    .line 22
    .line 23
    .line 24
    filled-new-array {v2}, [Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    instance-of v2, v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 32
    .line 33
    if-eqz v2, :cond_5

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    .line 49
    move-result p1

    .line 50
    const/4 v4, 0x0

    .line 51
    .line 52
    :goto_0
    if-ge v4, p1, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    const-string v6, "uid"

    .line 59
    .line 60
    .line 61
    filled-new-array {v6}, [Ljava/lang/String;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    .line 65
    invoke-static {v5, v6}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    .line 68
    const-string/jumbo v6, "\u200e\u200f"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 72
    move-result v6

    .line 73
    .line 74
    if-ltz v6, :cond_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 78
    move-result v7

    .line 79
    .line 80
    if-ge v6, v7, :cond_1

    .line 81
    .line 82
    add-int/lit8 v7, v6, 0x2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    :cond_1
    const-string/jumbo v7, "\u202c\u202d"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 91
    move-result v7

    .line 92
    .line 93
    if-ltz v7, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 97
    move-result v8

    .line 98
    .line 99
    if-ge v7, v8, :cond_2

    .line 100
    .line 101
    add-int/lit8 v8, v7, 0x2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    :cond_2
    if-ltz v6, :cond_3

    .line 107
    .line 108
    if-ge v6, v7, :cond_3

    .line 109
    .line 110
    new-instance v8, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 111
    .line 112
    .line 113
    invoke-direct {v8, v5, v1, v6, v7}, Lcom/narvii/chat/input/MentionedEditText$Range;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    return-object v2

    .line 121
    :cond_5
    :goto_1
    return-object v1
.end method

.method public final getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, ""

    if-nez p2, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    return-object p1

    .line 4
    :cond_2
    :goto_0
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v0

    .line 5
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    .line 6
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/narvii/chat/util/ChatHelper;->getUser(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p1

    :cond_6
    :goto_1
    move-object v1, v0

    .line 8
    :cond_7
    iget p1, p2, Lcom/narvii/model/ChatMessage;->type:I

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 9
    iget-object p1, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    return-object p1

    :pswitch_0
    const p1, 0x7f1211ff

    const p2, 0x7f121200

    .line 10
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f121201

    const p2, 0x7f121202

    .line 11
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f120240

    const p2, 0x7f120241

    .line 12
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const p1, 0x7f120242

    const p2, 0x7f120243

    .line 13
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const p1, 0x7f12023e

    const p2, 0x7f12023f

    .line 14
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const p1, 0x7f12024e

    const p2, 0x7f12024f

    .line 15
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    const p1, 0x7f120244

    const p2, 0x7f120245

    .line 16
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    const p1, 0x7f120254

    const p2, 0x7f120255

    .line 17
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    const p1, 0x7f120256

    const p2, 0x7f120257

    .line 18
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    const p1, 0x7f120248

    const p2, 0x7f120249

    .line 19
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    const p1, 0x7f120252

    const p2, 0x7f120253

    .line 20
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    const p1, 0x7f12023c

    const p2, 0x7f12023d

    .line 21
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_c
    const p1, 0x7f120250

    const p2, 0x7f120251

    .line 22
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d
    const p1, 0x7f12024c

    const p2, 0x7f12024d

    .line 23
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_e
    const p1, 0x7f12024a

    const p2, 0x7f12024b

    .line 24
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->buildMessageContent(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_f
    const p1, 0x7f120246

    const p2, 0x7f120247

    .line 25
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;
    .locals 4
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget v1, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/model/User;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    return-object v1

    .line 46
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getSpeakerChannelUser(Lcom/narvii/model/ChatThread;)Ljava/util/List;
    .locals 5
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isCurrentChat(Lcom/narvii/model/ChatThread;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "rtc"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const-string v1, "clone(...)"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    :goto_0
    if-ge v2, v1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 56
    const/4 v4, 0x1

    .line 57
    .line 58
    if-ne v3, v4, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    const-string v4, "valueAt(...)"

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return-object v0
.end method

.method public final getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 3
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget v1, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 6
    const/4 v2, 0x3

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 12
    .line 13
    const-string v1, "sticker"

    .line 14
    .line 15
    const-string v2, "stickerCollectionSummary"

    .line 16
    .line 17
    .line 18
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    return-object v0

    .line 27
    .line 28
    :cond_1
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 29
    .line 30
    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    move-object v0, p1

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getThreadTitle(Lcom/narvii/model/ChatThread;)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, ""

    .line 5
    return-object p1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 19
    return-object p1

    .line 20
    .line 21
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget v1, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 28
    .line 29
    if-nez v1, :cond_5

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f120221

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    :cond_4
    return-object p1

    .line 52
    .line 53
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getOptimizedMembersSummary()Ljava/util/List;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const-string v2, "getOptimizedMembersSummary(...)"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    check-cast p1, Ljava/lang/Iterable;

    .line 68
    .line 69
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v3

    .line 81
    .line 82
    if-eqz v3, :cond_7

    .line 83
    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 87
    move-object v4, v3

    .line 88
    .line 89
    check-cast v4, Lcom/narvii/model/User;

    .line 90
    .line 91
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result v4

    .line 96
    .line 97
    xor-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    .line 102
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_1

    .line 104
    .line 105
    .line 106
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result v0

    .line 112
    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    check-cast v0, Lcom/narvii/model/User;

    .line 120
    .line 121
    .line 122
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 123
    move-result v2

    .line 124
    .line 125
    if-lez v2, :cond_8

    .line 126
    .line 127
    const-string v2, ", "

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    :cond_8
    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    goto :goto_2

    .line 137
    .line 138
    .line 139
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    return-object p1
.end method

.method public final getUser(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Lcom/narvii/model/User;
    .locals 3
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/model/User;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    return-object v1

    .line 45
    :cond_3
    :goto_0
    return-object v0
.end method

.method public final handleLinkSnippetClick(Lcom/narvii/model/LinkSummary;)V
    .locals 2
    .param p1    # Lcom/narvii/model/LinkSummary;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v1, "android.intent.action.VIEW"

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final isChatThreadDisabledOrDelete(Lcom/narvii/model/ChatThread;)Z
    .locals 5
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    const/16 v4, 0x9

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget v1, v1, Lcom/narvii/model/User;->status:I

    .line 16
    .line 17
    if-eq v1, v4, :cond_1

    .line 18
    .line 19
    if-ne v1, v3, :cond_2

    .line 20
    :cond_1
    move v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    move v1, v0

    .line 23
    .line 24
    :goto_0
    iget p1, p1, Lcom/narvii/model/ChatThread;->status:I

    .line 25
    .line 26
    if-eq p1, v4, :cond_3

    .line 27
    .line 28
    if-eq p1, v3, :cond_3

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    :cond_3
    move v0, v2

    .line 32
    :cond_4
    return v0
.end method

.method public final isCoHost(Lcom/narvii/model/ChatThread;)Z
    .locals 1
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
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
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "rtc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final isGuest(Lcom/narvii/model/ChatThread;)Z
    .locals 0
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isGuest()Z

    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method public final isHost(Lcom/narvii/model/ChatThread;)Z
    .locals 1
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
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
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z
    .locals 1
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public final isHostOrCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public final isMeAccessibleToThisChat(Lcom/narvii/model/ChatThread;)Z
    .locals 3
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget v1, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    return v0

    .line 27
    .line 28
    :cond_1
    iget-boolean p1, p1, Lcom/narvii/model/ChatThread;->needHidden:Z

    .line 29
    xor-int/2addr p1, v0

    .line 30
    return p1

    .line 31
    :cond_2
    :goto_0
    return v0
.end method

.method public final isMemeber(Lcom/narvii/model/ChatThread;)Z
    .locals 0
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->joined()Z

    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method public final isMine(Lcom/narvii/model/ChatMessage;)Z
    .locals 2
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_1
    return p1
.end method

.method public final isMyself(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 0
    .param p1    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
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
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final isSpeaker(Lcom/narvii/model/ChatThread;)Z
    .locals 2
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isCurrentChat(Lcom/narvii/model/ChatThread;)Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v1, "rtc"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/chat/util/ChatHelperKt;->isSpeaker(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    .line 28
    move-result v0

    .line 29
    :cond_1
    return v0
.end method

.method public final isSpeakerHasOtherOriganizer(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->getSpeakerChannelUser(Lcom/narvii/model/ChatThread;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    move v3, v1

    .line 14
    .line 15
    :goto_0
    if-ge v3, v2, :cond_4

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 22
    .line 23
    .line 24
    invoke-static {v4}, Lcom/narvii/chat/util/ChatHelperKt;->getUser(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Lcom/narvii/model/User;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    .line 33
    :goto_1
    if-nez v4, :cond_2

    .line 34
    .line 35
    const-string v4, ""

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-static {p2, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v5

    .line 40
    .line 41
    if-nez v5, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, v4}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 45
    move-result v4

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    const/4 p1, 0x1

    .line 49
    return p1

    .line 50
    .line 51
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    return v1
.end method

.method public final isThreadUnread(Lcom/narvii/model/ChatThread;)Z
    .locals 4
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 12
    move-result-wide v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-wide v2, v0

    .line 15
    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    :cond_1
    cmp-long p1, v2, v0

    .line 27
    .line 28
    if-gez p1, :cond_2

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/4 p1, 0x0

    .line 32
    :goto_1
    return p1
.end method

.method public final isVideoPlayer(Lcom/narvii/model/ChatThread;)Z
    .locals 2
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->isCurrentChat(Lcom/narvii/model/ChatThread;)Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v1, "rtc"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isVideoPlayer(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    .line 34
    move-result p1

    .line 35
    const/4 v1, 0x5

    .line 36
    .line 37
    if-ne p1, v1, :cond_1

    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_1
    return v0
.end method

.method public final leaveChat(Ljava/lang/String;Lcom/narvii/model/ChatThread;Landroidx/fragment/app/FragmentManager;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/chat/util/ChatHelper;->isVideoPlayer(Lcom/narvii/model/ChatThread;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v1, "config"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->isGroupChat(Lcom/narvii/model/ChatThread;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    const v1, 0x7f1211f0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 47
    .line 48
    .line 49
    const v1, 0x7f1211ee

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setDismissByClickOutside()V

    .line 59
    .line 60
    new-instance v1, Lcom/narvii/chat/util/c;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, p2, p0}, Lcom/narvii/chat/util/c;-><init>(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatHelper;)V

    .line 64
    .line 65
    .line 66
    const v3, 0x7f1211eb

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v3, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 70
    .line 71
    new-instance v1, Lcom/narvii/chat/util/d;

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, p0, p2, v0, p3}, Lcom/narvii/chat/util/d;-><init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;)V

    .line 75
    .line 76
    const/high16 p2, -0x10000

    .line 77
    .line 78
    .line 79
    const p3, 0x7f1203bb

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p3, v1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    const p2, 0x7f1201e2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_1
    if-eqz p1, :cond_2

    .line 95
    .line 96
    .line 97
    const p1, 0x7f120b86

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :cond_2
    const p1, 0x7f120b87

    .line 102
    .line 103
    :goto_0
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 112
    .line 113
    .line 114
    const p1, 0x7f120d57

    .line 115
    .line 116
    .line 117
    const v3, -0x444445

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 121
    .line 122
    new-instance p1, Lcom/narvii/chat/util/e;

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, p0, p2, v0, p3}, Lcom/narvii/chat/util/e;-><init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;)V

    .line 126
    .line 127
    .line 128
    const p2, 0x7f1212a7

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 135
    :goto_1
    return-void
.end method

.method public final setChatThreadChannelType(Lcom/narvii/model/ChatThread;I)V
    .locals 1
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 22
    .line 23
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    .line 25
    const-string v0, "channelType"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public final transOrganizer(Lcom/narvii/model/ChatThread;)V
    .locals 6
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "rtc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "getService(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    const-string v2, "config"

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget v3, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v3, v2

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x5

    .line 46
    .line 47
    if-ne v4, v5, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object v4, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v4, v2

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v4}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    const v4, 0x7f12080b

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v4}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 81
    .line 82
    .line 83
    const v4, 0x7f1211ef

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 87
    .line 88
    .line 89
    const v4, 0x7f1201e2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 93
    .line 94
    new-instance v2, Lcom/narvii/chat/util/f;

    .line 95
    .line 96
    .line 97
    invoke-direct {v2, p1, v1, v3, p0}, Lcom/narvii/chat/util/f;-><init>(Lcom/narvii/model/ChatThread;ILjava/lang/Integer;Lcom/narvii/chat/util/ChatHelper;)V

    .line 98
    .line 99
    .line 100
    const p1, 0x7f12033f

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 107
    return-void

    .line 108
    .line 109
    :cond_2
    const-class v0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    const-string v2, "thread"

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .line 124
    if-nez v3, :cond_3

    .line 125
    goto :goto_2

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 129
    move-result p1

    .line 130
    .line 131
    if-eq v1, p1, :cond_4

    .line 132
    .line 133
    :goto_2
    const-string p1, "__communityId"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    .line 138
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper;->ctx:Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 142
    return-void
.end method
