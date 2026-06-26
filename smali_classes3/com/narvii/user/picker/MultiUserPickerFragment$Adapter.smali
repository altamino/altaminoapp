.class public Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "MultiUserPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/picker/MultiUserPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Adapter"
.end annotation


# instance fields
.field exists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field existsIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

.field users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/user/picker/MultiUserPickerFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 172
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private isListContainsUser(Ljava/util/List;Lcom/narvii/model/User;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;",
            "Lcom/narvii/model/User;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 261
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v1, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 192
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-boolean v0, p1, Lcom/narvii/user/picker/MultiUserPickerFragment;->spamProtection:Z

    const-string v1, "type"

    if-eqz v0, :cond_1

    const-string v0, "id"

    .line 193
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "account"

    .line 195
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 196
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 198
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

    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 199
    invoke-virtual {p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->target()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "name"

    .line 200
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/user-profile"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "all"

    .line 203
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 212
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_3
    const/4 v0, 0x1

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "needCheckCanBeInvitedToChat"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 217
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
    .locals 6

    .line 233
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090c32

    .line 235
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090c31

    .line 236
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f090c33

    .line 237
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    instance-of v1, p1, Lcom/narvii/model/User;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 240
    check-cast p1, Lcom/narvii/model/User;

    .line 242
    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->exists:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->isListContainsUser(Ljava/util/List;Lcom/narvii/model/User;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->existsIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget-object p3, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-direct {p0, p3, p1}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->isListContainsUser(Ljava/util/List;Lcom/narvii/model/User;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 245
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 243
    :cond_2
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :goto_1
    iget-boolean p1, p1, Lcom/narvii/model/User;->canNotBeInvitedToChat:Z

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 252
    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 253
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06bb

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 272
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_d

    .line 273
    check-cast p3, Lcom/narvii/model/User;

    .line 275
    iget-boolean p1, p3, Lcom/narvii/model/User;->canNotBeInvitedToChat:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 276
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string p4, "api"

    invoke-interface {p1, p4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 277
    iget-object p4, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    const-string p5, "id"

    invoke-virtual {p4, p5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 278
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    const-string p4, "account"

    .line 279
    invoke-virtual {p0, p4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/account/AccountService;

    .line 280
    invoke-virtual {p4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p4

    .line 282
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p5

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/user-profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/chat-invite-check/"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 285
    iget-object p3, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    const-string p4, "threadId"

    invoke-virtual {p3, p4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 286
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p5, p4, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 289
    :cond_1
    invoke-virtual {p5}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p3

    new-instance p4, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter$1;

    const-class p5, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {p4, p0, p5}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter$1;-><init>(Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {p1, p3, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return p2

    .line 300
    :cond_2
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->exists:Ljava/util/ArrayList;

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    .line 301
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/2addr p1, p4

    goto :goto_1

    .line 302
    :cond_3
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->existsIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 303
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 305
    :goto_1
    iget-object p5, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    if-nez p5, :cond_5

    const/4 p5, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    :goto_2
    add-int/2addr p1, p5

    .line 306
    iget-object p5, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {p5}, Lcom/narvii/user/picker/MultiUserPickerFragment;->access$000(Lcom/narvii/user/picker/MultiUserPickerFragment;)I

    move-result p5

    if-lez p5, :cond_6

    iget-object p5, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {p5}, Lcom/narvii/user/picker/MultiUserPickerFragment;->access$000(Lcom/narvii/user/picker/MultiUserPickerFragment;)I

    move-result p5

    if-lt p1, p5, :cond_6

    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p3}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->isListContainsUser(Ljava/util/List;Lcom/narvii/model/User;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 307
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 308
    iget-object p3, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    const p5, 0x7f0f0235

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/narvii/user/picker/MultiUserPickerFragment;->access$000(Lcom/narvii/user/picker/MultiUserPickerFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p4

    invoke-virtual {p3, p5, v0}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p3, 0x104000a

    const/4 p5, 0x0

    .line 309
    invoke-virtual {p1, p3, p4, p5}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 310
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return p2

    .line 314
    :cond_6
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->exists:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p3}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->isListContainsUser(Ljava/util/List;Lcom/narvii/model/User;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->existsIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    invoke-virtual {p3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 316
    :cond_7
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    .line 317
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 318
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_9

    .line 319
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/narvii/model/User;

    .line 320
    iget-object p5, p5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v0, p3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p5, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_8

    .line 321
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    const/4 p4, 0x1

    :cond_9
    if-nez p4, :cond_b

    .line 328
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    if-nez p1, :cond_a

    .line 329
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 331
    :cond_a
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_b
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 337
    :cond_c
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->access$100(Lcom/narvii/user/picker/MultiUserPickerFragment;)V

    return p2

    .line 340
    :cond_d
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 177
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    const-string v1, "keyword"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 184
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object v1, v1, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
