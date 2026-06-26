.class Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "MyChatsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllMembersAdapter"
.end annotation


# instance fields
.field private memberCount:I

.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

.field userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/list/NVArrayAdapter<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 2

    .line 919
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 920
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 893
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$1;

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    const-class v1, Lcom/narvii/model/User;

    invoke-direct {p1, p0, v0, v1}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$1;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    return-void
.end method

.method static synthetic access$1102(Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;I)I
    .locals 0

    .line 888
    iput p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->memberCount:I

    return p1
.end method

.method private goToMemberListPage()V
    .locals 3

    .line 956
    const-class v0, Lcom/narvii/members/PeopleListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    const-string v2, "My Chats"

    .line 957
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isOldUserList()Z
    .locals 4

    .line 986
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 992
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 993
    iget-object v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 994
    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private sendRequest()V
    .locals 4

    .line 962
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/user-profile"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string v2, "summary"

    .line 963
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v1, 0x0

    .line 964
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v1, 0x5

    .line 965
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 966
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 967
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 968
    new-instance v2, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$2;

    const-class v3, Lcom/narvii/model/api/UserListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$2;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p1, 0x7f0b0088

    .line 925
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 928
    :try_start_0
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    iget p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->memberCount:I

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    iget p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->memberCount:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 933
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    const v1, 0x7f0f02c3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->memberCount:I

    if-nez v0, :cond_0

    const-string p2, ""

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f090b9a

    .line 934
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09009a

    .line 935
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/HorizontalUnbrokenLayout;

    .line 936
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->isOldUserList()Z

    move-result p3

    if-nez p3, :cond_2

    .line 937
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    invoke-virtual {p3}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    .line 938
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    if-eqz p3, :cond_1

    .line 939
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/narvii/list/NVArrayAdapter;->addAll(Ljava/util/Collection;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 942
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    iget v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->memberCount:I

    invoke-virtual {p2, p3, v0}, Lcom/narvii/widget/HorizontalUnbrokenLayout;->setAdapter(Lcom/narvii/list/NVArrayAdapter;I)V

    .line 943
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object p1
.end method

.method public onAttach()V
    .locals 0

    .line 907
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 908
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->sendRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 951
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->goToMemberListPage()V

    const/4 p1, 0x1

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

    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 915
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->sendRequest()V

    .line 916
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method
