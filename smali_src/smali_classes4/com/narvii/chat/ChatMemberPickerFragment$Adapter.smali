.class public Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

.field protected users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "/chat/thread/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "/member"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/chat/ChatMemberPickerFragment;->getMemberType()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v1, "type"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    const-string v1, "q"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method protected filterYourself()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/User;

    .line 7
    .line 8
    iget-object p3, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    const p3, 0x7f0a0f53

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    const/16 v0, 0x8

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    move v2, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    const p3, 0x7f0a0f55

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p3

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    move v0, v1

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d0770

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/User;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p3}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->pickerUser(Lcom/narvii/model/User;)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method protected pickerUser(Lcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/chat/ChatMemberPickerFragment;->t(Lcom/narvii/chat/ChatMemberPickerFragment;)Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->g(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;)V

    .line 28
    return-void
.end method
