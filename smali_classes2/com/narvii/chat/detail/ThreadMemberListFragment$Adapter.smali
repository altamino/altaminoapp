.class Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ThreadMemberListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/detail/ThreadMemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/chat/detail/MemberListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/detail/ThreadMemberListFragment;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 118
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "account"

    .line 119
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method


# virtual methods
.method public addUsers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 211
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b03e9

    const-string v1, "loading"

    .line 178
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090a78

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SpinningView;

    if-eqz p2, :cond_1

    .line 182
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const v0, -0xbbbbbc

    :goto_0
    invoke-virtual {p2, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    :cond_1
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/chat/thread/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$000(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/member"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string/jumbo v0, "type"

    const-string v1, "default"

    .line 136
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 137
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 124
    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 157
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    .line 158
    check-cast p1, Lcom/narvii/model/User;

    .line 159
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const v1, 0x7f0b0460

    .line 160
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 161
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 163
    iget-boolean p3, v0, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    iput-boolean p3, p1, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    :cond_0
    const p3, 0x7f090c10

    .line 165
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const p3, 0x7f090764

    .line 166
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p3, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const p3, 0x7f0901f3

    .line 167
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget p1, p1, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public inviteMembers()V
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-ne v0, v1, :cond_6

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 295
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v3}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$300(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v3}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$300(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 297
    :cond_2
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v3}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 298
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v3}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 300
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v3}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v3

    iget v3, v3, Lcom/narvii/model/ChatThread;->membersQuota:I

    if-lt v0, v3, :cond_4

    .line 301
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 302
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    const v3, 0x7f0f023b

    new-array v2, v2, [Ljava/lang/Object;

    .line 303
    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v4

    iget v4, v4, Lcom/narvii/model/ChatThread;->membersQuota:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 302
    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 304
    invoke-virtual {v0, v1, v5, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 306
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_1

    .line 308
    :cond_4
    const-class v0, Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "showSearchBar"

    .line 309
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$300(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->list()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    .line 312
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v2

    iget-object v2, v2, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 314
    :cond_5
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exists"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v2

    iget v2, v2, Lcom/narvii/model/ChatThread;->membersQuota:I

    const-string v3, "maxMember"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "threadId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notJoined()Z
    .locals 2

    const-string v0, "config"

    .line 215
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 216
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    iget-object v1, v1, Lcom/narvii/chat/detail/ThreadMemberListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    goto :goto_0

    .line 200
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    .line 201
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 222
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$100(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 226
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {p0, v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->userOptions(Lcom/narvii/model/User;)V

    .line 228
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/detail/MemberListResponse;",
            ">;"
        }
    .end annotation

    .line 129
    const-class v0, Lcom/narvii/chat/detail/MemberListResponse;

    return-object v0
.end method

.method public userOptions(Lcom/narvii/model/User;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 235
    :cond_1
    new-instance v0, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 236
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;-><init>(Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;Lcom/narvii/model/User;)V

    const-string v3, "Chat Thread More Info"

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    return-void
.end method
