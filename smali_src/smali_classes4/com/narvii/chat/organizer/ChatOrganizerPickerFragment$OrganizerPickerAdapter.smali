.class public Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;
.super Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V

    .line 6
    return-void
.end method

.method static synthetic access$300(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->pickerUser(Lcom/narvii/model/User;)V

    .line 4
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
    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$000(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/model/ChatThread;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "/member"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    .line 39
    const-string v0, "type"

    .line 40
    .line 41
    const-string v1, "organizer-transfer-candidates"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$100(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 50
    move-result-object v0

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
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$200(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    const-string v1, "q"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 79
    move-result-object p1

    .line 80
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/user/list/UserListAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/model/User;

    .line 29
    .line 30
    iget-boolean v1, v0, Lcom/narvii/model/User;->isAvailableCandidate:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->y(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;Lcom/narvii/model/User;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/User;

    .line 7
    .line 8
    .line 9
    const p3, 0x7f0a0c58

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p3

    .line 14
    .line 15
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->w(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Ljava/util/Set;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->v(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    .line 46
    move-result p1

    .line 47
    const/4 v0, 0x4

    .line 48
    .line 49
    if-eq p1, v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 51
    .line 52
    if-eq p1, v0, :cond_0

    .line 53
    const/4 v0, 0x5

    .line 54
    .line 55
    if-ne p1, v0, :cond_1

    .line 56
    .line 57
    :cond_0
    const-string p1, "assets://video_green.webp"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 61
    const/4 p1, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_1
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d0771

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/User;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->u(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->z(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->w(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Ljava/util/Set;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    const p2, 0x7f1211f1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 53
    const/4 p2, 0x0

    .line 54
    .line 55
    .line 56
    const p3, -0x444445

    .line 57
    .line 58
    .line 59
    const p4, 0x7f1201e2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p4, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 63
    .line 64
    new-instance p2, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, p0, v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;-><init>(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;Lcom/narvii/model/User;)V

    .line 68
    .line 69
    .line 70
    const p3, 0x7f120e88

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 77
    const/4 p1, 0x1

    .line 78
    return p1

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 82
    move-result p1

    .line 83
    return p1
.end method
