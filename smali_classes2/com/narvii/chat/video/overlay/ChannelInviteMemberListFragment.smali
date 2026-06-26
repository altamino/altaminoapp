.class public Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ChannelInviteMemberListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;,
        Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;,
        Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;
    }
.end annotation


# static fields
.field static final ADD_MEMBBER:I = 0x2

.field static final INVITE:I = 0x1

.field private static final SUB_FRAGMENT_TAG_BG:Ljava/lang/String; = "vv_background"


# instance fields
.field finishListener:Landroid/view/View$OnClickListener;

.field private inviteNewUserAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;

.field private inviteUserListAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

.field membersAlreadyInChannel:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field membersAlreadyJoinedMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field private myDividerAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyJoinedMapper:Ljava/util/HashMap;

    .line 319
    new-instance v0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$3;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->finishListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteUserListAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteUser(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p0
.end method

.method private inviteUser(Lcom/narvii/model/User;)V
    .locals 4

    .line 523
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id"

    .line 524
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/invite-av-chat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 525
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 526
    new-instance v2, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;Ljava/lang/Class;Lcom/narvii/model/User;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public addMembers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v3

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    .line 264
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 269
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    const/4 v5, 0x2

    .line 270
    iput v5, v4, Lcom/narvii/model/User;->membershipStatus:I

    .line 271
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance v4, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;Lcom/narvii/model/ChatThread;Ljava/util/List;Ljava/util/List;)V

    iput-object v4, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 306
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 309
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/member/invite"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "uids"

    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 310
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 311
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 340
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 341
    new-instance p1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->myDividerAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;

    .line 342
    new-instance p1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteNewUserAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;

    .line 343
    new-instance p1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteUserListAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

    .line 344
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->myDividerAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteUserListAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->myDividerAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 346
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteNewUserAdapter:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 347
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 335
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 559
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "thread"

    .line 562
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public inviteMembers()V
    .locals 9

    .line 152
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget v1, v0, Lcom/narvii/model/ChatThread;->type:I

    const-string v2, "threadId"

    const-string v3, "maxMember"

    const-string v4, "exists"

    const-string v5, "showSearchBar"

    const/4 v6, 0x1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-ne v1, v6, :cond_1

    .line 159
    const-class v1, Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 160
    iget-object v7, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    invoke-static {v7}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v4, 0x64

    .line 162
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v1, v6}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 166
    :cond_1
    iget v1, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v7, 0x2

    if-eq v1, v6, :cond_2

    if-ne v1, v7, :cond_5

    .line 168
    :cond_2
    iget v1, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 169
    iget-object v8, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 171
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 170
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 173
    :cond_3
    iget v8, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    if-lt v1, v8, :cond_4

    .line 174
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f023b

    new-array v3, v6, [Ljava/lang/Object;

    .line 175
    iget v0, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 175
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x104000a

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v1, v0, v4, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 179
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 181
    :cond_4
    const-class v1, Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 182
    iget-object v8, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 183
    invoke-static {v8}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget v4, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v1, v7}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const-string/jumbo v0, "users"

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 198
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    const-class v3, Lcom/narvii/model/User;

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    invoke-virtual {p0, v2}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->addMembers(Ljava/util/List;)V

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_5

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    const-string v1, "account"

    .line 206
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 207
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    const-class v4, Lcom/narvii/model/User;

    invoke-static {v0, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 213
    iget-object v5, v4, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 215
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v4, v4, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/User;

    .line 217
    iget-object v7, v6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 218
    iget-object v6, v6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    .line 222
    iget-object v6, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 223
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    .line 228
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_5

    .line 229
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_5

    .line 230
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v3, [Ljava/lang/String;

    .line 231
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/chat/invite/ChatInviteFragment;->askInvite([Ljava/lang/String;)V

    .line 232
    new-instance v2, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$1;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V

    iput-object v2, v0, Lcom/narvii/chat/invite/ChatInviteFragment;->onStartListener:Lcom/narvii/util/Callback;

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0905c6

    if-ne p1, v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteMembers()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 94
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f07a3

    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "rtc"

    .line 96
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 97
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyInChannel:Landroid/util/SparseArray;

    .line 98
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyInChannel:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyInChannel:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyInChannel:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v1, :cond_0

    .line 101
    iget-object v2, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyJoinedMapper:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 107
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Source"

    const-string v2, "1-1 > Group Chat"

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 113
    new-instance p1, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;

    invoke-direct {p1}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;-><init>()V

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_chat_thread"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0901d5

    const-string/jumbo v2, "vv_background"

    .line 120
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b030d

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 519
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 328
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 329
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 330
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b01eb

    .line 146
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0905c6

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
