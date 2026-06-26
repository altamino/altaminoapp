.class public Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "ChatMemberPickerFragment.java"


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

    .line 219
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 220
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 226
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/member"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 228
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatMemberPickerFragment;->getMemberType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 230
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterYourself()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 252
    check-cast p1, Lcom/narvii/model/User;

    .line 253
    iget-object p3, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    const p3, 0x7f090c31

    .line 255
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090c33

    .line 257
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06bb

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 265
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 266
    check-cast p3, Lcom/narvii/model/User;

    .line 267
    invoke-virtual {p0, p3}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->pickerUser(Lcom/narvii/model/User;)V

    const/4 p1, 0x1

    return p1

    .line 270
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected pickerUser(Lcom/narvii/model/User;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 278
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatMemberPickerFragment;->access$100(Lcom/narvii/chat/ChatMemberPickerFragment;)Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->access$000(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;)V

    return-void
.end method
