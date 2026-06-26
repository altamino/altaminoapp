.class public Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;
.super Lcom/narvii/app/NVFragment;
.source "ClaimOrganizerTransFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/chat/ThreadInfoHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;
    }
.end annotation


# static fields
.field private static final REQUEST_TYPE_ACCEPT:I = 0x1

.field private static final REQUEST_TYPE_CLAIM:I = 0x2


# instance fields
.field private claimLayout:Landroid/view/View;

.field private communityHelper:Lcom/narvii/community/CommunityHelper;

.field private confirmLayout:Landroid/view/View;

.field private isGlobal:Z

.field private listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

.field private final pushListener:Lcom/narvii/pushservice/PushService$PushListener;

.field private requestLayout:Landroid/view/View;

.field private requestType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 408
    new-instance v0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;-><init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showActivatedToast(I)V

    return-void
.end method

.method private checkAuthBeforeShowConfirmView()V
    .locals 9

    .line 364
    new-instance v0, Lcom/narvii/modulization/entry/EntryManager;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "post"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "postType"

    aput-object v5, v2, v4

    const/4 v5, 0x2

    const-string v6, "publicChatRooms"

    aput-object v6, v2, v5

    .line 365
    invoke-virtual {v0, v2}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    move-result-object v0

    const-string v2, "account"

    .line 366
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 368
    iget-boolean v6, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->isGlobal:Z

    if-eqz v6, :cond_1

    const-string v0, "membership"

    .line 369
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 370
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    .line 371
    iget-boolean v1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->isGlobal:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    invoke-direct {v0, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 373
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showConfirmLayout()V

    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_4

    .line 379
    iget-object v6, v0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-eqz v6, :cond_4

    .line 380
    iget v6, v6, Lcom/narvii/modulization/entry/Privilege;->type:I

    const/4 v7, 0x0

    const v8, 0x104000a

    if-ne v6, v5, :cond_2

    .line 381
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 382
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v5

    iget v5, v5, Lcom/narvii/model/User;->level:I

    iget-object v6, v0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    iget v6, v6, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    if-ge v5, v6, :cond_2

    .line 383
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/model/User;->isCurator()Z

    move-result v5

    if-nez v5, :cond_2

    .line 385
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f10e0

    new-array v4, v4, [Ljava/lang/Object;

    .line 386
    iget-object v0, v0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    iget v0, v0, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v1, v8, v7}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 388
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 389
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    goto :goto_1

    .line 390
    :cond_2
    iget-object v0, v0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    iget v0, v0, Lcom/narvii/modulization/entry/Privilege;->type:I

    if-ne v0, v1, :cond_3

    .line 391
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-nez v0, :cond_3

    .line 394
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 396
    invoke-virtual {v0, v8, v7}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 397
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 398
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    goto :goto_1

    .line 400
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showConfirmLayout()V

    goto :goto_1

    .line 403
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showConfirmLayout()V

    :goto_1
    return-void
.end method

.method private sendClaim()V
    .locals 5

    .line 237
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/transfer-organizer/apply"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 243
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 244
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v2, "api"

    .line 247
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 248
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    new-instance v3, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;-><init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public static sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 338
    invoke-static {p0, p1, v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    return-void
.end method

.method public static sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "api"

    .line 342
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    const-string v1, "notification"

    .line 343
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/notification/NotificationCenter;

    .line 344
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 345
    new-instance v2, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;

    const-class v3, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v2, v3, p2, p0, v1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;-><init>(Ljava/lang/Class;ZLcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationCenter;)V

    invoke-virtual {v0, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendReplyRequest(Z)V
    .locals 5

    .line 203
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getOrganizerTransferRequest()Lcom/narvii/model/OrganizerTransferRequest;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/transfer-organizer/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/narvii/model/OrganizerTransferRequest;->requestId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v0, "/accept"

    goto :goto_0

    :cond_1
    const-string v0, "/decline"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 210
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "api"

    .line 214
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 215
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    new-instance v3, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;-><init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private showActivatedToast(I)V
    .locals 8

    .line 329
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    const v1, 0x7f0f02eb

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f080148

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0f02eb

    .line 331
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f01004c

    const-wide/16 v6, 0x1f4

    .line 330
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_2

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const p1, 0x7f0f02eb

    :goto_1
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_2
    return-void
.end method


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 170
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    .line 165
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideAllLayout()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->claimLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;->OnFragmentSizeChangedFragment()V

    :cond_0
    return-void
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    iget p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestType:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendReplyRequest(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_4

    .line 141
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    goto :goto_0

    .line 145
    :pswitch_1
    iget p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestType:I

    if-ne p1, v1, :cond_2

    .line 146
    invoke-direct {p0, v1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendReplyRequest(Z)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_4

    .line 148
    invoke-direct {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendClaim()V

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-direct {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->checkAuthBeforeShowConfirmView()V

    goto :goto_0

    :pswitch_3
    const-string p1, "account"

    .line 123
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 124
    new-instance v0, Lcom/narvii/modulization/entry/EntryManager;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 125
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/modulization/entry/EntryManager;->canUserChat(Lcom/narvii/model/User;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    move-result-object p1

    .line 126
    iget-boolean v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->isGlobal:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    if-nez v0, :cond_3

    iget-boolean p1, p1, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->needMembership:Z

    if-eqz p1, :cond_3

    .line 127
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 128
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 131
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->communityHelper:Lcom/narvii/community/CommunityHelper;

    iget p1, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showConfirmLayout()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090246
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "push"

    .line 79
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 80
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p1, v0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 81
    new-instance p1, Lcom/narvii/community/CommunityHelper;

    invoke-direct {p1, p0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->communityHelper:Lcom/narvii/community/CommunityHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b009a

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    const-string v0, "push"

    .line 87
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 88
    iget-object v1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->updateView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const p2, 0x7f090246

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09024a

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090249

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090248

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090247

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090806

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    const p2, 0x7f090803

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    const p2, 0x7f090802

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->claimLayout:Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->updateView()V

    const-string p1, "config"

    .line 111
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 112
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->isGlobal:Z

    return-void
.end method

.method public setOnFragmentSizeChange(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

    return-void
.end method

.method public showAcceptLayout()V
    .locals 7

    .line 268
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getOrganizerTransferRequest()Lcom/narvii/model/OrganizerTransferRequest;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    const v4, 0x7f090804

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0f10e8

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    aput-object v0, v6, v3

    invoke-virtual {p0, v4, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    const v2, 0x7f090807

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {v2}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    iget-object v1, v1, Lcom/narvii/model/OrganizerTransferRequest;->createdTime:Ljava/util/Date;

    invoke-virtual {v2, v1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iput v5, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestType:I

    .line 278
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->claimLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

    if-eqz v0, :cond_1

    .line 281
    invoke-interface {v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;->OnFragmentSizeChangedFragment()V

    :cond_1
    return-void

    .line 269
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    return-void
.end method

.method public showClaimLayout()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->claimLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    .line 312
    iput v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestType:I

    .line 313
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;->OnFragmentSizeChangedFragment()V

    :cond_0
    return-void
.end method

.method public showConfirmLayout()V
    .locals 7

    .line 286
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    const v2, 0x7f090801

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0f10e2

    .line 290
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0224

    .line 291
    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 293
    new-instance v5, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$3;

    invoke-direct {v5, p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$3;-><init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;)V

    .line 298
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x12

    .line 293
    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 299
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 300
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->claimLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

    if-eqz v0, :cond_0

    .line 304
    invoke-interface {v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;->OnFragmentSizeChangedFragment()V

    :cond_0
    return-void
.end method

.method public updateThread(Z)V
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateView()V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    return-void

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getOrganizerTransferRequest()Lcom/narvii/model/OrganizerTransferRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showAcceptLayout()V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isCurrentUserEligibleToBeTheOrganizer()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    :goto_0
    return-void
.end method
