.class public Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;
.super Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
.source "ChatOrganizerPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OrganizerPickerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;


# direct methods
.method protected constructor <init>(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;Lcom/narvii/model/User;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->pickerUser(Lcom/narvii/model/User;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 131
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {v1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$000(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/member"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string/jumbo v0, "type"

    const-string v1, "organizer-transfer-candidates"

    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 135
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$100(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$200(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-super {p0, p1, p2}, Lcom/narvii/user/list/UserListAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p1

    .line 196
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 198
    iget-boolean v1, v0, Lcom/narvii/model/User;->isAvailableCandidate:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {v1, v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$800(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;Lcom/narvii/model/User;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method protected filterYourself()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 151
    check-cast p1, Lcom/narvii/model/User;

    const p3, 0x7f090992

    .line 153
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    .line 155
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$300(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {p1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$400(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    const-string p1, "assets://video_green.webp"

    .line 159
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 160
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06bc

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 170
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 171
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/User;

    .line 172
    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {v1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$500(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {v1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$600(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {v1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$300(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f10e7

    .line 174
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f0193

    const/4 p3, 0x0

    const p4, -0x444445

    .line 175
    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const p2, 0x7f0f0d5b

    .line 176
    new-instance p3, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;

    invoke-direct {p3, p0, v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;-><init>(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;Lcom/narvii/model/User;)V

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 183
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 187
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
