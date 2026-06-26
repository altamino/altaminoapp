.class public final Lcom/narvii/chat/setting/LiveWaitingListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "LiveWaitingListFragment.kt"

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
    value = "SMAP\nLiveWaitingListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveWaitingListFragment.kt\ncom/narvii/chat/setting/LiveWaitingListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,428:1\n1495#2,3:429\n*E\n*S KotlinDebug\n*F\n+ 1 LiveWaitingListFragment.kt\ncom/narvii/chat/setting/LiveWaitingListFragment\n*L\n416#1,3:429\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private currentUser:Lcom/narvii/model/User;

.field private emptyView:Landroid/view/View;

.field private isHostOrCoHost:Z

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private thread:Lcom/narvii/model/ChatThread;

.field private waitingListListener:Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    return-void
.end method

.method private final acceptUser(Lcom/narvii/model/User;)V
    .locals 5

    .line 387
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string/jumbo v2, "user.uid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->addRequestedId(Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    const-string v3, "thread"

    if-eqz v2, :cond_2

    iget v4, v2, Lcom/narvii/model/ChatThread;->ndcId:I

    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    new-instance v3, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;

    invoke-direct {v3, p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->waitListJoinApprove(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;)V

    return-void

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "rtcService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic access$acceptUser(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->acceptUser(Lcom/narvii/model/User;)V

    return-void
.end method

.method public static final synthetic access$cancelJoin(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->cancelJoin(Lcom/narvii/model/User;)V

    return-void
.end method

.method public static final synthetic access$getCurrentUser$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "currentUser"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getRtcService$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "rtcService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "thread"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getWaitListAdapter(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isHostOrCoHost$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    return p0
.end method

.method public static final synthetic access$setCurrentUser$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    return-void
.end method

.method public static final synthetic access$setHostOrCoHost$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    return-void
.end method

.method public static final synthetic access$setRtcService$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-void
.end method

.method public static final synthetic access$setThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public static final synthetic access$updateClearBtn(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateClearBtn()V

    return-void
.end method

.method private final cancelJoin(Lcom/narvii/model/User;)V
    .locals 5

    .line 408
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string/jumbo v2, "user.uid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->addRequestedId(Ljava/lang/String;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    const-string v3, "thread"

    if-eqz v2, :cond_2

    iget v4, v2, Lcom/narvii/model/ChatThread;->ndcId:I

    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    new-instance v3, Lcom/narvii/chat/setting/LiveWaitingListFragment$cancelJoin$1;

    invoke-direct {v3, p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$cancelJoin$1;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->waitListJoinCancel(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "rtcService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final clearWaitingList()V
    .locals 3

    .line 370
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 371
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0271

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 372
    new-instance v1, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$1;

    invoke-direct {v1, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    const v2, 0x7f0f0193

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 375
    new-instance v1, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;

    invoke-direct {v1, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    const v2, 0x7f0f119f

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f09098b

    .line 382
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$3;

    invoke-direct {v2, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$3;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private final getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    check-cast v0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    return-object v0
.end method

.method private final invite()V
    .locals 5

    .line 196
    invoke-virtual {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->checkCommunityAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    const-class v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    const/4 v2, 0x0

    const-string v3, "thread"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v1

    const-string v4, "key_channel_type"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 202
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
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

    .line 429
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 430
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 416
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "currentUser"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :goto_0
    xor-int/2addr p1, v1

    .line 417
    sget v0, Lcom/narvii/amino/R$id;->apply_talk_layout:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "apply_talk_layout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 418
    sget v0, Lcom/narvii/amino/R$id;->apply_to_talk:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "apply_to_talk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const v1, 0x7f0f0127

    goto :goto_1

    :cond_4
    const v1, 0x7f0f117a

    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    sget v0, Lcom/narvii/amino/R$id;->apply_talk_image:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const-string v1, "apply_talk_image"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final updateClearBtn()V
    .locals 3

    .line 366
    sget v0, Lcom/narvii/amino/R$id;->clear_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "clear_btn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->getItemCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final updateView(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 185
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 186
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/model/ChatThread;->isHostOrCoHost(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    .line 190
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->emptyView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget v1, Lcom/narvii/amino/R$id;->invite_talk_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    :cond_2
    sget p1, Lcom/narvii/amino/R$id;->apply_talk_layout:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "apply_talk_layout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    if-eqz v1, :cond_3

    const/16 v0, 0x8

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateClearBtn()V

    return-void

    :cond_4
    const-string p1, "currentUser"

    .line 189
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "thread"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateWaitingListInner(Lcom/narvii/model/ChatThread;)V
    .locals 1

    const-string v0, "signalling"

    .line 103
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/signalling/SignallingService;

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->setWaitingUserList(Ljava/util/Collection;)V

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateApplyTalkLayout(Ljava/util/Collection;)V

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final checkCommunityAvailability()Z
    .locals 4

    const-string v0, "config"

    .line 207
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 209
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {v1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v2, 0x0

    .line 210
    new-instance v3, Lcom/narvii/chat/setting/LiveWaitingListFragment$checkCommunityAvailability$invalidStatus$1;

    invoke-direct {v3, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$checkCommunityAvailability$invalidStatus$1;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 208
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 131
    new-instance v0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "WaitingList"

    return-object v0
.end method

.method public final getWaitingListListener()Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;
    .locals 1

    .line 53
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

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "thread"

    .line 61
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "JacksonUtils.readAs(getS\u2026, ChatThread::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/model/ChatThread;

    iput-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    const-string v0, "account"

    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 63
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const-string v1, "account.userProfile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    .line 64
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    const-string p1, "rtc"

    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"rtc\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 136
    sget v0, Lcom/narvii/amino/R$id;->clear_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->clearWaitingList()V

    goto/16 :goto_1

    .line 139
    :cond_0
    sget v0, Lcom/narvii/amino/R$id;->close_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->waitingListListener:Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;->closeWaitingList()V

    goto/16 :goto_1

    .line 142
    :cond_1
    sget v0, Lcom/narvii/amino/R$id;->invite_talk_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "InviteMemberButton"

    .line 144
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 146
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->invite()V

    goto :goto_1

    .line 148
    :cond_2
    sget v0, Lcom/narvii/amino/R$id;->apply_talk_layout:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 149
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->getWaitingList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserInWaitingList(Lcom/narvii/app/NVContext;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 150
    invoke-static {p0}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->isCurrentUserSpeaker(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "ApplyToTalk"

    .line 153
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 154
    new-instance p1, Lcom/narvii/chat/setting/LiveWaitingListFragment$onClick$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$onClick$1;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V

    invoke-static {p0, p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getInstance(Lcom/narvii/app/NVFragment;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V

    goto :goto_1

    :cond_5
    const-string p1, "thread"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p1, "rtcService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/rtc/RtcService;->addWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void

    :cond_0
    const-string p1, "thread"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "rtcService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b02b5

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 112
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeWaitingListListener(Ljava/lang/String;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void

    :cond_0
    const-string v0, "thread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "rtcService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onThreadUpdate(Lcom/narvii/model/ChatThread;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateView(Lcom/narvii/model/ChatThread;)V

    .line 174
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b06ec

    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->emptyView:Landroid/view/View;

    .line 84
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    const-string p2, "thread"

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->currentUser:Lcom/narvii/model/User;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/narvii/model/ChatThread;->isHostOrCoHost(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    .line 85
    sget p1, Lcom/narvii/amino/R$id;->clear_btn:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget p1, Lcom/narvii/amino/R$id;->close_btn:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget p1, Lcom/narvii/amino/R$id;->clear_btn:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "clear_btn"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_0

    sget v2, Lcom/narvii/amino/R$id;->invite_talk_btn:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->emptyView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    sget v3, Lcom/narvii/amino/R$id;->invite_talk_btn:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_2
    sget p1, Lcom/narvii/amino/R$id;->apply_talk_layout:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget p1, Lcom/narvii/amino/R$id;->apply_talk_layout:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "apply_talk_layout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->isHostOrCoHost:Z

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateWaitingListInner(Lcom/narvii/model/ChatThread;)V

    return-void

    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p1, "currentUser"

    .line 84
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onWaitingListApprove(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    return-void
.end method

.method public onWaitingListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
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

    if-eqz p3, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->getWaitListAdapter()Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->setWaitingUserList(Ljava/util/Collection;)V

    .line 125
    :cond_0
    invoke-direct {p0, p3}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateApplyTalkLayout(Ljava/util/Collection;)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    return-void
.end method

.method public final setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateView(Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method

.method public final setWaitingListListener(Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment;->waitingListListener:Lcom/narvii/chat/setting/LiveWaitingListFragment$IWaitingListListener;

    return-void
.end method

.method public final updateWaitingList(Lcom/narvii/model/ChatThread;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->updateWaitingListInner(Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method
