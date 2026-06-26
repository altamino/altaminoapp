.class Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "SingleUserPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/picker/SingleUserPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field exists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field existsBg:Landroid/graphics/drawable/ColorDrawable;

.field final synthetic this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/picker/SingleUserPickerFragment;)V
    .locals 2

    .line 115
    iput-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    .line 116
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 117
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06006f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->existsBg:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 143
    iget-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    iget-boolean v0, p1, Lcom/narvii/user/picker/SingleUserPickerFragment;->spamProtection:Z

    const-string v1, "type"

    if-eqz v0, :cond_1

    const-string v0, "id"

    .line 144
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "account"

    .line 146
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 147
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/user-profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    .line 150
    invoke-virtual {p1}, Lcom/narvii/user/picker/SingleUserPickerFragment;->target()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "name"

    .line 151
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/user-profile"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "all"

    .line 154
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    iget-object v0, v0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    iget-object v0, v0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 161
    :cond_2
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
    .locals 2

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 170
    instance-of p3, p1, Lcom/narvii/model/User;

    if-eqz p3, :cond_1

    .line 171
    check-cast p1, Lcom/narvii/model/User;

    .line 172
    iget-object p3, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->exists:Ljava/util/List;

    if-eqz p3, :cond_1

    .line 173
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 174
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 182
    iget-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->existsBg:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 189
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_3

    .line 190
    check-cast p3, Lcom/narvii/model/User;

    const/4 p1, 0x0

    .line 192
    iget-object p2, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->exists:Ljava/util/List;

    const/4 p4, 0x1

    if-eqz p2, :cond_1

    .line 193
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/narvii/model/User;

    .line 194
    iget-object p5, p5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v0, p3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p5, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_1
    if-nez p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    invoke-virtual {p1, p3}, Lcom/narvii/user/picker/SingleUserPickerFragment;->onPickUser(Lcom/narvii/model/User;)V

    :cond_2
    return p4

    .line 205
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    iget-object v0, v0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    const-string v1, "keyword"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 130
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    iget-object v1, v1, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
