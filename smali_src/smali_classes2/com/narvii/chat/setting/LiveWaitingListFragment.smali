.class public final Lcom/narvii/chat/setting/LiveWaitingListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/chat/waitinglist/WaitingListListener;
.implements Lcom/narvii/chat/IThreadInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;,
        Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiveWaitingListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveWaitingListFragment.kt\ncom/narvii/chat/setting/LiveWaitingListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,483:1\n1747#2,3:484\n*S KotlinDebug\n*F\n+ 1 LiveWaitingListFragment.kt\ncom/narvii/chat/setting/LiveWaitingListFragment\n*L\n120#1:484,3\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private currentUser:Lcom/narvii/model/User;

.field private emptyView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isHostOrCoHost:Z

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private thread:Lcom/narvii/model/ChatThread;

.field private waitingListListener:Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/chat/setting/LiveWaitingListFragment$binding$2;->INSTANCE:Lcom/narvii/chat/setting/LiveWaitingListFragment$binding$2;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->binding$delegate:Lkotlin/properties/d;

    .line 12
    return-void
.end method

.method public static synthetic A(Lcom/narvii/chat/setting/LiveWaitingListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->clearWaitingList$lambda$7(Lcom/narvii/chat/setting/LiveWaitingListFragment;Landroid/view/View;)V

    return-void
.end method

.method private final acceptUser(Lcom/narvii/model/User;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "uid"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->addRequestedId(Ljava/lang/String;)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "rtcService"

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 27
    move-object v0, v1

    .line 28
    .line 29
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 30
    .line 31
    const-string v3, "thread"

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 37
    move-object v2, v1

    .line 38
    .line 39
    :cond_2
    iget v2, v2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 40
    .line 41
    iget-object v4, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move-object v1, v4

    .line 49
    .line 50
    :goto_0
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v4, Lcom/narvii/chat/setting/e;

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, p0, p1}, Lcom/narvii/chat/setting/e;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/narvii/chat/rtc/RtcService;->waitListJoinApprove(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;)V

    .line 61
    return-void
.end method

.method private static final acceptUser$lambda$12(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$user"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "uid"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->removeRequestedId(Ljava/lang/String;)V

    .line 34
    .line 35
    :cond_1
    iget p2, p1, Lcom/narvii/model/User;->status:I

    .line 36
    .line 37
    const/16 v0, 0x9

    .line 38
    .line 39
    if-ne p2, v0, :cond_2

    .line 40
    const/4 p2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p2, 0x0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    move-result p3

    .line 47
    .line 48
    if-eqz p3, :cond_3

    .line 49
    .line 50
    if-eqz p2, :cond_5

    .line 51
    .line 52
    :cond_3
    new-instance p3, Lcom/narvii/widget/ACMAlertDialog;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-direct {p3, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    .line 68
    const p2, 0x7f120065

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_4
    const p2, 0x7f120066

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    new-instance p2, Lcom/narvii/chat/setting/f;

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p3}, Lcom/narvii/chat/setting/f;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 85
    .line 86
    .line 87
    const v0, 0x7f1201e2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 91
    .line 92
    new-instance p2, Lcom/narvii/chat/setting/g;

    .line 93
    .line 94
    .line 95
    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/setting/g;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    .line 96
    .line 97
    .line 98
    const p0, 0x7f1212a7

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    const p0, 0x7f0a0c4c

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object p0

    .line 109
    .line 110
    new-instance p1, Lcom/narvii/chat/setting/h;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, p3}, Lcom/narvii/chat/setting/h;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Lcom/narvii/app/NVDialog;->show()V

    .line 120
    :cond_5
    return-void
.end method

.method private static final acceptUser$lambda$12$lambda$10(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$user"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->cancelJoin(Lcom/narvii/model/User;)V

    .line 14
    return-void
.end method

.method private static final acceptUser$lambda$12$lambda$11(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method private static final acceptUser$lambda$12$lambda$9(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method public static final synthetic access$acceptUser(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->acceptUser(Lcom/narvii/model/User;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$cancelJoin(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->cancelJoin(Lcom/narvii/model/User;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getCurrentUser$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRtcService$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$isHostOrCoHost$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateClearBtn()V

    .line 4
    return-void
.end method

.method private final cancelJoin(Lcom/narvii/model/User;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "uid"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->addRequestedId(Ljava/lang/String;)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "rtcService"

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 27
    move-object v0, v1

    .line 28
    .line 29
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 30
    .line 31
    const-string v3, "thread"

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 37
    move-object v2, v1

    .line 38
    .line 39
    :cond_2
    iget v2, v2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 40
    .line 41
    iget-object v4, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move-object v1, v4

    .line 49
    .line 50
    :goto_0
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v4, Lcom/narvii/chat/setting/c;

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, p0, p1}, Lcom/narvii/chat/setting/c;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/narvii/chat/rtc/RtcService;->waitListJoinCancel(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 61
    return-void
.end method

.method private static final cancelJoin$lambda$13(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$user"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "uid"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->removeUserInList(Ljava/lang/String;)V

    .line 34
    :cond_1
    return-void
.end method

.method private final clearWaitingList()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    const v2, 0x7f1202b6

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/chat/setting/i;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0}, Lcom/narvii/chat/setting/i;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 29
    .line 30
    .line 31
    const v2, 0x7f1201e2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/chat/setting/j;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/narvii/chat/setting/j;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    .line 40
    .line 41
    .line 42
    const v2, 0x7f1212a7

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const v1, 0x7f0a0c4c

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    new-instance v2, Lcom/narvii/chat/setting/k;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v0}, Lcom/narvii/chat/setting/k;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 64
    return-void
.end method

.method private static final clearWaitingList$lambda$5(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method private static final clearWaitingList$lambda$7(Lcom/narvii/chat/setting/LiveWaitingListFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "ClearAllButton"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, "rtcService"

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    move-object p1, v0

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 28
    .line 29
    const-string v2, "thread"

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 35
    move-object v1, v0

    .line 36
    .line 37
    :cond_1
    iget v1, v1, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v0, v3

    .line 47
    .line 48
    :goto_0
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Lcom/narvii/chat/setting/d;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, p0}, Lcom/narvii/chat/setting/d;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/chat/rtc/RtcService;->waitListClean(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 57
    return-void
.end method

.method private static final clearWaitingList$lambda$7$lambda$6(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V
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
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->clear()V

    .line 22
    :cond_1
    return-void
.end method

.method private static final clearWaitingList$lambda$8(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/chat/setting/LiveWaitingListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 14
    return-object v0
.end method

.method private final getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    check-cast v0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 5
    return-object v0
.end method

.method private final invite()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->checkCommunityAvailability()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const-class v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    const-string v3, "thread"

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 24
    move-object v1, v2

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 28
    move-result v1

    .line 29
    .line 30
    const-string v4, "key_channel_type"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 41
    move-object v1, v2

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move-object v2, v1

    .line 58
    .line 59
    :goto_0
    iget-object v1, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 60
    .line 61
    const-string v2, "id"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public static synthetic s(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->clearWaitingList$lambda$5(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic t(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->acceptUser$lambda$12$lambda$10(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->acceptUser$lambda$12(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final updateApplyTalkLayout(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Iterable;

    .line 3
    .line 4
    instance-of v0, p1, Ljava/util/Collection;

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    move-object v0, p1

    .line 10
    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    :cond_0
    move p1, v2

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/model/User;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    .line 40
    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    const-string v3, "currentUser"

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x0

    .line 48
    .line 49
    :cond_3
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    move p1, v1

    .line 57
    :goto_0
    xor-int/2addr p1, v1

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->applyTalkLayout:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->applyToTalk:Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    .line 77
    const v1, 0x7f12016a

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_4
    const v1, 0x7f121281

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->applyTalkImage:Lcom/narvii/widget/NVImageView;

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_5
    const/16 v2, 0x8

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void
.end method

.method private final updateClearBtn()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->clearBtn:Landroid/widget/TextView;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->getItemCount()I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x4

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    return-void
.end method

.method private final updateView(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->emptyView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    const v2, 0x7f0a0748

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    .line 18
    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    return-void

    .line 24
    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    const-string p1, "thread"

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 31
    move-object p1, v1

    .line 32
    .line 33
    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    const-string v2, "currentUser"

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move-object v1, v2

    .line 43
    .line 44
    :goto_1
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/narvii/model/ChatThread;->isHostOrCoHost(Ljava/lang/String;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    iput-boolean p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    .line 51
    const/4 v1, 0x0

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    goto :goto_3

    .line 55
    .line 56
    :cond_4
    if-eqz p1, :cond_5

    .line 57
    move p1, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_5
    const/4 p1, 0x4

    .line 60
    .line 61
    .line 62
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :goto_3
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->applyTalkLayout:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    iget-boolean v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    const/16 v1, 0x8

    .line 75
    .line 76
    .line 77
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateClearBtn()V

    .line 81
    return-void
.end method

.method private final updateWaitingListInner(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "signalling"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/signalling/SignallingService;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    move-object v1, p1

    .line 28
    .line 29
    check-cast v1, Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->setWaitingUserList(Ljava/util/Collection;)V

    .line 33
    .line 34
    :cond_0
    check-cast p1, Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateApplyTalkLayout(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 41
    return-void
.end method

.method public static synthetic v(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->clearWaitingList$lambda$8(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->cancelJoin$lambda$13(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->acceptUser$lambda$12$lambda$11(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->clearWaitingList$lambda$7$lambda$6(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public static synthetic z(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->acceptUser$lambda$12$lambda$9(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final checkCommunityAvailability()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 15
    move-result v0

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    new-instance v2, Lcom/narvii/chat/setting/LiveWaitingListFragment$checkCommunityAvailability$invalidStatus$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$checkCommunityAvailability$invalidStatus$1;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    xor-int/lit8 v0, v0, 0x1

    .line 33
    return v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "waiting_list"

    return-object v0
.end method

.method public final getWaitingListListener()Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->waitingListListener:Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;

    return-object v0
.end method

.method public isFinalPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    const-string v0, "thread"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "readAs(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 30
    .line 31
    const-string v0, "account"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v1, "getUserProfile(...)"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 56
    .line 57
    const-string p1, "rtc"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    const-string v0, "getService(...)"

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    const v2, 0x7f0a0310

    .line 24
    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->clearWaitingList()V

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 33
    goto :goto_2

    .line 34
    .line 35
    .line 36
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    const v2, 0x7f0a0324

    .line 41
    .line 42
    if-ne v1, v2, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->waitingListListener:Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;

    .line 45
    .line 46
    if-eqz p1, :cond_c

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;->closeWaitingList()V

    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 54
    goto :goto_3

    .line 55
    .line 56
    .line 57
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v1

    .line 59
    .line 60
    .line 61
    const v2, 0x7f0a0748

    .line 62
    .line 63
    if-ne v1, v2, :cond_6

    .line 64
    .line 65
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    const-string v0, "InviteMemberButton"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->invite()V

    .line 82
    goto :goto_6

    .line 83
    .line 84
    :cond_6
    :goto_3
    if-nez p1, :cond_7

    .line 85
    goto :goto_6

    .line 86
    .line 87
    .line 88
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 89
    move-result p1

    .line 90
    .line 91
    .line 92
    const v1, 0x7f0a013f

    .line 93
    .line 94
    if-ne p1, v1, :cond_c

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    if-eqz p1, :cond_8

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->getWaitingList()Ljava/util/List;

    .line 104
    move-result-object p1

    .line 105
    goto :goto_4

    .line 106
    :cond_8
    move-object p1, v0

    .line 107
    .line 108
    .line 109
    :goto_4
    invoke-static {p0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z

    .line 110
    move-result p1

    .line 111
    .line 112
    if-nez p1, :cond_c

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserSpeaker(Lcom/narvii/app/NVContext;)Z

    .line 116
    move-result p1

    .line 117
    .line 118
    if-eqz p1, :cond_9

    .line 119
    goto :goto_6

    .line 120
    .line 121
    :cond_9
    const-string p1, "ApplyToTalk"

    .line 122
    .line 123
    .line 124
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 129
    .line 130
    new-instance p1, Lcom/narvii/chat/setting/LiveWaitingListFragment$onClick$1;

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$onClick$1;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p0, p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getInstance(Lcom/narvii/app/NVFragment;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 140
    .line 141
    if-nez v1, :cond_a

    .line 142
    .line 143
    const-string v1, "rtcService"

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 147
    move-object v1, v0

    .line 148
    .line 149
    :cond_a
    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 150
    .line 151
    if-nez v2, :cond_b

    .line 152
    .line 153
    const-string v2, "thread"

    .line 154
    .line 155
    .line 156
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 157
    goto :goto_5

    .line 158
    :cond_b
    move-object v0, v2

    .line 159
    .line 160
    :goto_5
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v0}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 168
    nop

    .line 169
    :cond_c
    :goto_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "rtcService"

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    move-object p1, v0

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "thread"

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v1

    .line 26
    .line 27
    :goto_0
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/rtc/RtcService;->addWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "rtcService"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    move-object v0, v1

    .line 15
    .line 16
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    const-string v2, "thread"

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v1, v2

    .line 26
    .line 27
    :goto_0
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    .line 31
    return-void
.end method

.method public onThreadUpdate(Lcom/narvii/model/ChatThread;)V
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
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateView(Lcom/narvii/model/ChatThread;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d079f

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->emptyView:Landroid/view/View;

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0748

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Landroid/widget/TextView;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p1, p2

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 34
    .line 35
    const-string v1, "thread"

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 41
    move-object v0, p2

    .line 42
    .line 43
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    const-string v2, "currentUser"

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 51
    move-object v2, p2

    .line 52
    .line 53
    :cond_2
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/narvii/model/ChatThread;->isHostOrCoHost(Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->clearBtn:Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->closeBtn:Landroid/widget/FrameLayout;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->clearBtn:Landroid/widget/TextView;

    .line 84
    const/4 v2, 0x4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_3
    const/4 v0, 0x0

    .line 94
    .line 95
    if-nez p1, :cond_4

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_4
    iget-boolean v3, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    .line 99
    .line 100
    if-eqz v3, :cond_5

    .line 101
    move v2, v0

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->applyTalkLayout:Landroid/widget/LinearLayout;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;->applyTalkLayout:Landroid/widget/LinearLayout;

    .line 120
    .line 121
    iget-boolean v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    .line 122
    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    const/16 v0, 0x8

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 131
    .line 132
    if-nez p1, :cond_7

    .line 133
    .line 134
    .line 135
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 136
    goto :goto_2

    .line 137
    :cond_7
    move-object p2, p1

    .line 138
    .line 139
    .line 140
    :goto_2
    invoke-direct {p0, p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateWaitingListInner(Lcom/narvii/model/ChatThread;)V

    .line 141
    return-void
.end method

.method public onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->setWaitingUserList(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p3}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateApplyTalkLayout(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 18
    return-void
.end method

.method public final setChatThread(Lcom/narvii/model/ChatThread;)V
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
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateView(Lcom/narvii/model/ChatThread;)V

    .line 6
    :cond_0
    return-void
.end method

.method public final setWaitingListListener(Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->waitingListListener:Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;

    return-void
.end method

.method public final updateWaitingList(Lcom/narvii/model/ChatThread;)V
    .locals 1
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "t"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateWaitingListInner(Lcom/narvii/model/ChatThread;)V

    .line 15
    :cond_0
    return-void
.end method
