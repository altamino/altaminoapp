.class public final Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "ChatGuestListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ChatGuestListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatGuestListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatGuestListFragment.kt\ncom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter\n*L\n1#1,321:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method

.method private final sendRequest()V
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 207
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 208
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    goto :goto_1

    :cond_0
    const-string v3, ","

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/user-profile"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "q"

    .line 213
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "uid"

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "api"

    .line 215
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 216
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;

    const-class v3, Lcom/narvii/model/api/UserListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/narvii/model/User;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0b039d

    .line 121
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 122
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_10

    const p3, 0x7f090c10

    .line 124
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p3, :cond_0

    .line 125
    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    goto :goto_0

    :cond_0
    const p3, 0x7f0900e4

    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :goto_0
    const p3, 0x7f090764

    .line 128
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 129
    instance-of v0, p3, Lcom/narvii/widget/NicknameView;

    if-eqz v0, :cond_1

    .line 130
    check-cast p3, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p3, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    goto :goto_1

    .line 131
    :cond_1
    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 132
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    const p3, 0x7f0900a0

    .line 135
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 137
    iget-object v2, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 141
    :cond_3
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_2
    const p3, 0x7f0905c0

    .line 145
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_5

    .line 146
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_5
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v2}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->isHost()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v2}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->isCoHost()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_10

    .line 161
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    .line 148
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :cond_8
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->isInvite(Lcom/narvii/model/User;)Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz p3, :cond_9

    const p1, 0x7f0f07ba

    .line 150
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    if-eqz p3, :cond_a

    const p1, 0x7f080592

    .line 151
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_a
    if-eqz p3, :cond_b

    const-wide v2, 0x99ffffffL

    long-to-int p1, v2

    .line 152
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    if-eqz p3, :cond_10

    .line 153
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_4

    :cond_c
    if-eqz p3, :cond_d

    const p1, 0x7f0f07a4

    .line 155
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    if-eqz p3, :cond_e

    .line 156
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060223

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    if-eqz p3, :cond_f

    const p1, 0x7f080591

    .line 157
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_f
    if-eqz p3, :cond_10

    const/4 p1, 0x1

    .line 158
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_10
    :goto_4
    const-string p1, "cell"

    .line 164
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public isListShown()Z
    .locals 1

    .line 200
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 106
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/User;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 107
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->sendRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 168
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_a

    if-eqz p5, :cond_0

    .line 169
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0905c0

    if-ne v0, v1, :cond_0

    .line 170
    sget-object v0, Lcom/narvii/logging/ActSemantic;->invite:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 171
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    move-object v1, p3

    check-cast v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->access$inviteUser(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/model/User;)V

    goto/16 :goto_5

    .line 173
    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 174
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserWrapperList()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    move-object v2, p3

    check-cast v2, Lcom/narvii/model/User;

    invoke-static {v1, v2}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->access$getChannelId(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/model/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 175
    iget-object v2, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 177
    new-instance v3, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    invoke-direct {v3, p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v5}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChannelType()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 178
    :goto_1
    iget-object v6, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v6}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 177
    invoke-virtual {v3, v0, v5, v6}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object v0

    .line 179
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v3}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getVvProfileClickListener$Amino_bundle()Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object v0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 180
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v2}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChannelType()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v0, v2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->muteVideoWhenBlockUser(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v2}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChannelType()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_7

    :goto_4
    const/4 v1, 0x1

    :cond_7
    invoke-virtual {v0, v1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v4}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->curUserIsGuest(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    goto :goto_5

    .line 178
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 177
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 189
    :cond_a
    :goto_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 115
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 116
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->sendRequest()V

    .line 117
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
