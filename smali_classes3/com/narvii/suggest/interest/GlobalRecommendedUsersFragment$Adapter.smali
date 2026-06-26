.class Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "GlobalRecommendedUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;
    }
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

.field uidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    .line 163
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 152
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;Lcom/narvii/suggest/interest/RcmdUserListResponse;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->getUserList(Lcom/narvii/suggest/interest/RcmdUserListResponse;)V

    return-void
.end method

.method private getUserList(Lcom/narvii/suggest/interest/RcmdUserListResponse;)V
    .locals 5

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    .line 198
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-direct {v0, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    if-eqz p1, :cond_1

    .line 200
    iget-object p1, p1, Lcom/narvii/suggest/interest/RcmdUserListResponse;->rcmdUsersList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/suggest/interest/RcmdUser;

    .line 202
    iget-object v2, v1, Lcom/narvii/suggest/interest/RcmdUser;->rcmdUsers:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 203
    invoke-static {v2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    new-instance v4, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;

    invoke-virtual {v1}, Lcom/narvii/suggest/interest/RcmdUser;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p0, v1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;-><init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 207
    iget-object v3, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendRequest()V
    .locals 4

    .line 216
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/rcmd/users"

    .line 217
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "scenario"

    const-string v2, "onboarding"

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    invoke-virtual {v1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 218
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 219
    new-instance v2, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;

    const-class v3, Lcom/narvii/suggest/interest/RcmdUserListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;-><init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 263
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 242
    :cond_0
    instance-of p1, p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getUidList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 291
    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 293
    instance-of v0, p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;

    if-eqz v0, :cond_0

    const v0, 0x7f0b05dd

    .line 294
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0909ef

    .line 295
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 296
    check-cast p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;

    iget-object p1, p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 297
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_5

    .line 298
    check-cast p1, Lcom/narvii/model/User;

    const v0, 0x7f0b05de

    .line 299
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090c10

    .line 300
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p3, :cond_1

    .line 302
    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_1
    const p3, 0x7f090764

    .line 304
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 305
    instance-of v0, p3, Lcom/narvii/widget/NicknameView;

    if-eqz v0, :cond_2

    .line 306
    check-cast p3, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p3, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    :cond_2
    const p3, 0x7f090131

    .line 308
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 309
    iget-object v0, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0909fe

    .line 313
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 314
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f08048f

    goto :goto_1

    :cond_4
    const p1, 0x7f08048d

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f0905f9

    .line 316
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 172
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 173
    invoke-direct {p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->sendRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 276
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0905f9

    if-ne v0, v1, :cond_1

    .line 277
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/User;

    .line 278
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 284
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->access$100(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V

    .line 286
    :cond_1
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

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    .line 189
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    .line 190
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->error:Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->sendRequest()V

    .line 192
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
