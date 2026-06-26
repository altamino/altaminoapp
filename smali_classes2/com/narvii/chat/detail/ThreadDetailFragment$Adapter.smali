.class Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "ThreadDetailFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/ThreadResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field public fullAuthorInfo:Lcom/narvii/model/User;

.field memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final memberListListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/chat/detail/MemberListResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 1

    .line 546
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 547
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 624
    new-instance p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;

    const-class v0, Lcom/narvii/chat/detail/MemberListResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberListListener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method

.method private isCommunityOpen()Z
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$600(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/model/Community;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "community"

    .line 749
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 750
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$700(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/config/ConfigService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 752
    iget v1, v0, Lcom/narvii/model/Community;->id:I

    if-lez v1, :cond_1

    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendMemberListReqeust()V
    .locals 3

    const-string v0, "api"

    .line 619
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member?start=0&size=100&type=default&cv=1.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberListListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private showNotAllowTransformFansOnlyThread()V
    .locals 3

    .line 1325
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0c50

    .line 1326
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f073e

    const/4 v2, 0x0

    .line 1327
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1328
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 669
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 671
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v1

    if-nez v1, :cond_1

    .line 676
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->CONTENT:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 678
    :cond_1
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 682
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->TOPICS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_2
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    iget v1, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 690
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->joined()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 694
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->PIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_4
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 699
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->joined()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 700
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v1

    if-nez v1, :cond_6

    .line 705
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isCoHost()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isJumpstart()Z

    move-result v1

    if-nez v1, :cond_8

    .line 710
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_8
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isCoHost()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 715
    :cond_9
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_a
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isCoHost()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 720
    :cond_b
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_c
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 725
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->publicChat()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 732
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isGlobal()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->isCommunityOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 733
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_d
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$500(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 737
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_e
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 664
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 785
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    const v5, 0x7f090764

    const/4 v6, 0x0

    const/4 v9, 0x0

    if-ne v0, v2, :cond_6

    const v0, 0x7f0b00a6

    .line 786
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 790
    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->fullAuthorInfo:Lcom/narvii/model/User;

    if-eqz v2, :cond_0

    move-object v6, v2

    goto :goto_1

    .line 792
    :cond_0
    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 793
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 794
    iget-object v4, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 795
    iput-object v3, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->fullAuthorInfo:Lcom/narvii/model/User;

    move-object v6, v3

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v6, :cond_3

    .line 802
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v6

    :cond_3
    if-nez v6, :cond_4

    .line 806
    iget-object v6, v1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 808
    :cond_4
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 809
    check-cast v2, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v2, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const v2, 0x7f090b04

    .line 811
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/User;->isModerator()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v8, 0x8

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    return-object v0

    .line 817
    :cond_6
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->CONTENT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_7

    .line 818
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    const v2, 0x7f0b00a1

    const/4 v5, 0x1

    sget-object v6, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 822
    :cond_7
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->COPY:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v0, v2, :cond_c

    const v0, 0x7f0b00a2

    .line 823
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 824
    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    if-ne v1, v10, :cond_8

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    const v1, 0x7f0902e9

    .line 825
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v11, :cond_9

    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 826
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$800(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090478

    .line 828
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$900(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v8, 0x0

    goto :goto_6

    :cond_b
    const/16 v8, 0x8

    :goto_6
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    return-object v0

    .line 833
    :cond_c
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->TOPICS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_11

    const v0, 0x7f0b068e

    .line 834
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090bc8

    .line 835
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 836
    iget-object v3, v1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    if-eqz v3, :cond_10

    if-eqz v2, :cond_10

    .line 837
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    .line 838
    :goto_7
    iget-object v5, v1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    if-ge v4, v3, :cond_d

    .line 841
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/story/widgets/StoryTopicView;

    goto :goto_8

    .line 843
    :cond_d
    iget-object v5, v7, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0b068d

    invoke-virtual {v5, v6, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/story/widgets/StoryTopicView;

    .line 844
    new-instance v6, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$2;

    invoke-direct {v6, v7}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$2;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;)V

    invoke-virtual {v5, v6}, Lcom/narvii/story/widgets/StoryTopicView;->setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    .line 850
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 852
    :goto_8
    iget-object v6, v1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/story/StoryTopic;

    .line 853
    invoke-virtual {v5, v6}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 854
    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 857
    :cond_e
    :goto_9
    iget-object v3, v1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 858
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_9

    :cond_f
    return-object v0

    :cond_10
    return-object v6

    .line 866
    :cond_11
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_23

    .line 867
    iget-object v0, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    .line 868
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v2, v13}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v0, v2

    .line 872
    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-nez v2, :cond_12

    .line 873
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getOptimizedMembersSummary()Ljava/util/List;

    move-result-object v2

    goto :goto_a

    .line 875
    :cond_12
    invoke-virtual {v1, v2}, Lcom/narvii/model/ChatThread;->getOptimizedMembersSummary(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_a
    const/16 v13, 0xa

    if-eqz v2, :cond_13

    .line 878
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-lt v14, v13, :cond_13

    const/16 v14, 0x9

    .line 879
    invoke-interface {v2, v9, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    :cond_13
    const v14, 0x7f0b00aa

    .line 881
    invoke-virtual {v7, v14, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0904e3

    .line 883
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout;

    .line 886
    invoke-virtual {v4}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v14

    if-lez v14, :cond_14

    invoke-virtual {v4, v9}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v14

    const v15, 0x7f0901f2

    if-ne v14, v15, :cond_14

    .line 887
    invoke-virtual {v4, v9}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 888
    invoke-virtual {v4, v9}, Landroid/widget/GridLayout;->removeViewAt(I)V

    goto :goto_b

    :cond_14
    move-object v14, v6

    .line 891
    :goto_b
    invoke-virtual {v4}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v15

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-le v15, v6, :cond_15

    .line 892
    invoke-virtual {v4}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {v4, v6}, Landroid/widget/GridLayout;->removeViewAt(I)V

    const/4 v6, 0x0

    goto :goto_b

    .line 895
    :cond_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v6, :cond_21

    .line 896
    invoke-virtual {v4}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v12

    if-ge v15, v12, :cond_16

    invoke-virtual {v4, v15}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto :goto_d

    :cond_16
    const/4 v12, 0x0

    :goto_d
    if-nez v12, :cond_17

    .line 899
    iget-object v12, v7, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0b00a8

    invoke-virtual {v12, v11, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 900
    invoke-virtual {v4, v12}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 902
    :cond_17
    iget-object v11, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-nez v11, :cond_18

    const/4 v11, 0x0

    goto :goto_e

    :cond_18
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    .line 903
    :goto_e
    iget v8, v1, Lcom/narvii/model/ChatThread;->membersCount:I

    iget-object v9, v1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-nez v9, :cond_19

    const/4 v9, 0x0

    goto :goto_f

    :cond_19
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    :goto_f
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 904
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-lt v8, v13, :cond_1a

    const/4 v8, 0x1

    goto :goto_10

    :cond_1a
    const/4 v8, 0x0

    :goto_10
    if-eqz v8, :cond_1b

    add-int/lit8 v9, v6, -0x1

    if-ne v15, v9, :cond_1b

    const/4 v9, 0x1

    goto :goto_11

    :cond_1b
    const/4 v9, 0x0

    .line 907
    :goto_11
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    float-to-int v13, v0

    .line 908
    iput v13, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 909
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/narvii/model/User;

    .line 910
    iget-object v13, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {v13}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$1000(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/account/AccountService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v13

    if-eqz v13, :cond_1c

    .line 911
    invoke-virtual {v11}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 912
    iget-boolean v5, v13, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    iput-boolean v5, v11, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    :cond_1c
    const v5, 0x7f090c10

    .line 914
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v10, v9}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    .line 915
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v5, v11}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const v5, 0x7f090764

    .line 916
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v10, v11}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 917
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/narvii/widget/NicknameView;

    if-nez v9, :cond_1d

    const/4 v13, 0x0

    goto :goto_12

    :cond_1d
    const/4 v13, 0x4

    :goto_12
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v10, 0x7f0901f3

    .line 918
    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget v13, v11, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v5, 0x2

    if-ne v13, v5, :cond_1e

    if-nez v9, :cond_1e

    const/4 v5, 0x0

    goto :goto_13

    :cond_1e
    const/4 v5, 0x4

    :goto_13
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 919
    iget-object v5, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    invoke-virtual {v12, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f090723

    .line 922
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_20

    const v9, 0x7f090b70

    .line 924
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 925
    iget-object v9, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_1f

    add-int/lit8 v8, v6, -0x1

    if-ne v15, v8, :cond_1f

    const/4 v8, 0x0

    goto :goto_14

    :cond_1f
    const/16 v8, 0x8

    .line 926
    :goto_14
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    add-int/lit8 v15, v15, 0x1

    const v5, 0x7f090764

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/16 v13, 0xa

    goto/16 :goto_c

    :cond_21
    if-nez v14, :cond_22

    .line 932
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b00a9

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    goto :goto_15

    :cond_22
    const/4 v5, 0x0

    .line 934
    :goto_15
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int v0, v0

    .line 935
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 936
    invoke-virtual {v4, v14, v5}, Landroid/widget/GridLayout;->addView(Landroid/view/View;I)V

    .line 937
    iget-object v0, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {v0, v14}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$102(Lcom/narvii/chat/detail/ThreadDetailFragment;Landroid/view/View;)Landroid/view/View;

    .line 938
    iget-object v0, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    .line 944
    :cond_23
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_26

    const v0, 0x7f0b00ac

    .line 945
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901fa

    .line 947
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, v1, Lcom/narvii/model/ChatThread;->alertOption:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    const/4 v3, 0x0

    goto :goto_16

    :cond_24
    const/4 v3, 0x4

    .line 948
    :goto_16
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0901f9

    .line 949
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 950
    iget v1, v1, Lcom/narvii/model/ChatThread;->alertOption:I

    if-ne v1, v4, :cond_25

    const/4 v1, 0x1

    goto :goto_17

    :cond_25
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 951
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 955
    :cond_26
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->PIN:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_27

    const v0, 0x7f0b00ae

    .line 956
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901fd

    .line 957
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 958
    iget-boolean v1, v1, Lcom/narvii/model/ChatThread;->isPinned:Z

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 959
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 963
    :cond_27
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_29

    const v0, 0x7f0b008c

    .line 964
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900aa

    .line 965
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900ab

    .line 966
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900ac

    .line 967
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 968
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/16 v5, 0x8

    .line 970
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    .line 971
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    :cond_28
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 973
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 974
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 975
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    :goto_18
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 981
    :cond_29
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->AV_PERMISSION:Lcom/narvii/detail/DetailAdapter$CellType;

    const v5, 0x7f09002c

    if-ne v0, v2, :cond_2a

    const v0, 0x7f0b009e

    .line 982
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 983
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 987
    :cond_2a
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->SCREENROOM_PERMISSION:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_2b

    const v0, 0x7f0b00b0

    .line 988
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 989
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 993
    :cond_2b
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_2e

    const v0, 0x7f0b00a0

    .line 994
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090110

    .line 995
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09010f

    .line 996
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVImageView;

    .line 997
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_2c

    const/16 v4, 0x8

    .line 999
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto :goto_19

    :cond_2c
    const-string v1, "config"

    .line 1002
    invoke-virtual {v7, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    const-string v4, "themePack"

    .line 1003
    invoke-virtual {v7, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/theme/ThemePackService;

    .line 1005
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 1006
    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1007
    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1008
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v9

    sget-object v10, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v4, v9, v10, v8, v6}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_2d

    .line 1011
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    move-result v1

    const/4 v4, 0x3

    new-array v4, v4, [F

    .line 1013
    invoke-static {v1, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 1014
    aget v6, v4, v1

    const v8, 0x3f59999a    # 0.85f

    mul-float v6, v6, v8

    aput v6, v4, v1

    .line 1015
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/16 v6, 0x8

    .line 1016
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    :cond_2d
    const/4 v1, 0x0

    .line 1019
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    invoke-virtual {v3, v6}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1023
    :goto_19
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_2e
    const/16 v6, 0x8

    .line 1027
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_2f

    const v0, 0x7f0b00ab

    .line 1028
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901f5

    .line 1029
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 1030
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->canMemberInvite()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1031
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 1035
    :cond_2f
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_30

    const v0, 0x7f0b00ad

    .line 1036
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1037
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 1041
    :cond_30
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_34

    const v0, 0x7f0b009c

    .line 1042
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901ec

    .line 1045
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1046
    iget v3, v1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_31

    const/4 v3, 0x0

    goto :goto_1a

    :cond_31
    const/16 v3, 0x8

    :goto_1a
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    iget-object v3, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901ee

    .line 1050
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1051
    iget v1, v1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-ne v1, v4, :cond_32

    const/4 v1, 0x0

    goto :goto_1b

    :cond_32
    const/16 v1, 0x8

    :goto_1b
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0909f9

    .line 1055
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1056
    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const-string v3, "showListEntry"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v6, 0x0

    :cond_33
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 1062
    :cond_34
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_36

    const v0, 0x7f0b03a2

    .line 1063
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const-string v1, "account"

    .line 1064
    invoke-virtual {v7, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 1065
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatThread;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/model/ChatThread;->getCurBubble(Ljava/lang/String;)Lcom/narvii/model/ChatBubble;

    move-result-object v1

    const v2, 0x7f090312

    .line 1066
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    const/4 v3, 0x0

    .line 1067
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    if-eqz v1, :cond_35

    .line 1068
    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1069
    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1c

    .line 1071
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f080322

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1073
    :goto_1c
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 1077
    :cond_36
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_37

    const v0, 0x7f0b00b2

    .line 1078
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090c9b

    .line 1079
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 1080
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1081
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 1085
    :cond_37
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_38

    const v0, 0x7f0b00a4

    .line 1086
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0903f1

    .line 1087
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 1088
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isEnableProps()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1089
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 1093
    :cond_38
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_39

    const v0, 0x7f0b00af

    .line 1094
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0908dd

    .line 1095
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 1096
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1097
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 1101
    :cond_39
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v2, :cond_3a

    const v0, 0x7f0b00a5

    .line 1102
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090424

    .line 1103
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 1104
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1105
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 1109
    :cond_3a
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v1, :cond_3b

    const v0, 0x7f0b009d

    .line 1110
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1111
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 1115
    :cond_3b
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v1, :cond_3c

    const v0, 0x7f0b00a7

    .line 1116
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1119
    :cond_3c
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v0, v1, :cond_3d

    const v0, 0x7f0b00a3

    .line 1120
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1123
    :cond_3d
    invoke-super/range {p0 .. p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 757
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 758
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->CONTENT:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->TOPICS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .line 552
    const-class v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public onAttach()V
    .locals 1

    .line 608
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->onAttach()V

    .line 609
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 613
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->sendMemberListReqeust()V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 9

    .line 1129
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    const v1, 0x7f0901ec

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v0, :cond_0

    if-eqz p5, :cond_0

    .line 1130
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1131
    :goto_0
    sget-object v4, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    const v5, 0x7f0901f2

    if-ne p3, v4, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz p5, :cond_2

    const v6, 0x7f090b70

    .line 1132
    invoke-virtual {p5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    .line 1133
    sget-object v6, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-eq p3, v6, :cond_3

    iget-object v6, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    xor-int/lit8 v7, v4, 0x1

    invoke-static {v6, v0, v7}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$000(Lcom/narvii/chat/detail/ThreadDetailFragment;ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v4, :cond_3

    .line 1134
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return v3

    .line 1138
    :cond_3
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v4, "Chat Thread More Info"

    if-ne p3, v0, :cond_5

    if-eqz p5, :cond_5

    .line 1139
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v6, 0x7f0900e4

    if-ne v0, v6, :cond_5

    .line 1140
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 1141
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_4

    return v3

    :cond_4
    const-string p2, "Source"

    .line 1143
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 1148
    :cond_5
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v6, 0x2

    const-string v7, "thread"

    if-ne p3, v0, :cond_11

    if-nez p5, :cond_6

    goto/16 :goto_4

    .line 1150
    :cond_6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v8, 0x7f0901f1

    if-ne v0, v8, :cond_7

    .line 1151
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_7

    .line 1152
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 1153
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->userOptions(Lcom/narvii/model/User;)V

    return v3

    .line 1155
    :cond_7
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v5, :cond_10

    .line 1156
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$300(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1157
    sget-object p1, Lcom/narvii/logging/ActSemantic;->invite:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "InviteButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1159
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 1160
    iget p2, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-ne p2, v3, :cond_9

    const/4 v2, 0x1

    .line 1161
    :cond_9
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined()Z

    move-result p2

    if-nez p2, :cond_c

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->publicChat()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->groupChat()Z

    move-result p2

    if-eqz p2, :cond_c

    :cond_a
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isCoHost()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->canMemberInvite()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1162
    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->inviteMembers()V

    goto :goto_3

    .line 1163
    :cond_c
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->groupChat()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result p2

    if-eqz p2, :cond_e

    :cond_d
    iget p2, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-ne p2, v6, :cond_e

    .line 1164
    new-instance p2, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1165
    new-instance p3, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;

    invoke-direct {p3, p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {p2, p1, p3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showAcceptChatInvitationDialog(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    goto :goto_3

    .line 1180
    :cond_e
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->groupChat()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1181
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f018e

    .line 1182
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f119f

    const/4 p3, 0x0

    .line 1183
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1184
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_3

    .line 1186
    :cond_f
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogForThread(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :goto_3
    return v3

    .line 1190
    :cond_10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v5, 0x7f090723

    if-ne v0, v5, :cond_11

    .line 1191
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 1192
    const-class p2, Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 1193
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p3

    const-string p4, "threadId"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1194
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$600(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/model/Community;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "__community"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 1201
    :cond_11
    :goto_4
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_12

    .line 1202
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1, v3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchClicked(Z)V

    return v3

    .line 1205
    :cond_12
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PIN:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_13

    .line 1206
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1, v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchClicked(Z)V

    return v3

    .line 1209
    :cond_13
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_16

    .line 1210
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "Announcement"

    .line 1211
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1212
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1213
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 1214
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object p2

    .line 1215
    iget-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    move-result p3

    if-nez p3, :cond_14

    iget-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isCoHost()Z

    move-result p3

    if-eqz p3, :cond_15

    :cond_14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1216
    sget-object p2, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;->intent(Lcom/narvii/model/ChatThread;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 1218
    :cond_15
    sget-object p2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;->intent(Lcom/narvii/model/ChatThread;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_5
    return v3

    .line 1222
    :cond_16
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_17

    .line 1223
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1, v3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(I)V

    return v3

    .line 1226
    :cond_17
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_18

    .line 1227
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1, v6}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(I)V

    return v3

    .line 1230
    :cond_18
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_19

    .line 1231
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(I)V

    .line 1233
    :cond_19
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_1a

    .line 1234
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(I)V

    .line 1236
    :cond_1a
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_1b

    .line 1237
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "AddCoHost"

    .line 1238
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1239
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1240
    const-class p1, Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1241
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 1245
    :cond_1b
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->COPY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_1e

    if-eqz p5, :cond_1d

    .line 1247
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0902e9

    if-ne p1, p2, :cond_1c

    .line 1248
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1249
    iput-object v4, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 1250
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p2, p2, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    goto :goto_6

    .line 1251
    :cond_1c
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f090478

    if-ne p1, p2, :cond_1d

    .line 1252
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$1100(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    :cond_1d
    :goto_6
    return v3

    .line 1257
    :cond_1e
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_1f

    .line 1258
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->changeBackground()V

    return v3

    .line 1262
    :cond_1f
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_20

    .line 1263
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchUserCanInviteClicked()V

    return v3

    .line 1267
    :cond_20
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_22

    .line 1268
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 1269
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1270
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->showNotAllowTransformFansOnlyThread()V

    goto :goto_7

    .line 1272
    :cond_21
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->transOrganizer()V

    .line 1276
    :cond_22
    :goto_7
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_29

    .line 1277
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "joinThread"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 1280
    iget-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 1281
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1284
    :cond_23
    new-instance p1, Lcom/narvii/chat/invite/JoinThreadFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/JoinThreadFragment;-><init>()V

    .line 1285
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1286
    iget-object p4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const-string v0, "id"

    invoke-virtual {p4, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p4

    check-cast p4, Lcom/narvii/model/ChatThread;

    .line 1288
    invoke-static {p4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p1, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1290
    iget-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 1291
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1292
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    if-nez p5, :cond_24

    goto/16 :goto_8

    .line 1295
    :cond_24
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, v1, :cond_26

    .line 1296
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/ChatThread;

    invoke-virtual {p2, p3}, Lcom/narvii/chat/util/ChatHelper;->isMeAccessibleToThisChat(Lcom/narvii/model/ChatThread;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 1297
    invoke-virtual {p1}, Lcom/narvii/chat/invite/JoinThreadFragment;->joinConversation()V

    goto :goto_8

    .line 1299
    :cond_25
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 1300
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FansOnlyContent;

    const-string p2, "Chat Thread"

    invoke-static {p0, p1, p2}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    goto :goto_8

    .line 1303
    :cond_26
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0901ee

    if-ne p1, p2, :cond_27

    .line 1304
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "LeaveConversationButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1305
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$1200(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/chat/util/ChatHelper;->leaveChat(Ljava/lang/String;Lcom/narvii/model/ChatThread;Landroid/support/v4/app/FragmentManager;)V

    goto :goto_8

    .line 1306
    :cond_27
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0909f9

    if-ne p1, p2, :cond_28

    .line 1307
    const-class p1, Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1308
    invoke-virtual {p4}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    invoke-static {p4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_28
    :goto_8
    return v3

    .line 1314
    :cond_29
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_2a

    .line 1315
    const-class v0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1316
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 1317
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_thread"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_thread_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 1321
    :cond_2a
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 1333
    iget-object v0, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "update"

    if-eqz v0, :cond_5

    .line 1335
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "delete"

    if-ne v0, v2, :cond_0

    .line 1336
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 1340
    :cond_0
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/narvii/model/ChatThread;

    if-eqz v2, :cond_5

    if-eq v0, v1, :cond_1

    const-string v2, "edit"

    if-ne v0, v2, :cond_5

    .line 1342
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v2, "_fromChatFragment"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const-string v2, "_fromThreadDetailFragment"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 1346
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 1347
    new-instance v2, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v2}, Lcom/narvii/chat/ThreadResponse;-><init>()V

    .line 1348
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/model/ChatThread;

    iput-object v3, v2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_4

    .line 1349
    iget-object v3, v2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    iget-object v4, v3, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-nez v4, :cond_4

    .line 1350
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    iput-object v0, v3, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 1352
    :cond_4
    invoke-virtual {p0, v2}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->updateResponse(Lcom/narvii/chat/ThreadResponse;)V

    .line 1353
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-eqz v0, :cond_5

    .line 1354
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1358
    :cond_5
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    const-string v3, "account"

    if-eqz v2, :cond_8

    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    iget-object v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->threadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 1359
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1360
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 1361
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 1362
    iget-object v4, v2, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    if-nez v4, :cond_6

    .line 1363
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    .line 1365
    :cond_6
    invoke-virtual {p0, v3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 1366
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1367
    iget-object v5, v2, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    :cond_7
    new-instance v0, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v0}, Lcom/narvii/chat/ThreadResponse;-><init>()V

    .line 1370
    iput-object v2, v0, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 1371
    invoke-virtual {p0, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->updateResponse(Lcom/narvii/chat/ThreadResponse;)V

    .line 1372
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-eqz v0, :cond_8

    .line 1373
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1377
    :cond_8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/narvii/model/User;

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v2, v1, :cond_9

    .line 1378
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 1379
    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    .line 1381
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 1383
    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/model/User;

    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    .line 1384
    iget v2, v2, Lcom/narvii/model/User;->membershipStatus:I

    iput v2, v4, Lcom/narvii/model/User;->membershipStatus:I

    .line 1385
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    invoke-interface {v2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1386
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1391
    :cond_9
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v2, :cond_b

    .line 1392
    check-cast v0, Lcom/narvii/influencer/FanClub;

    iget-object v0, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatThread;

    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1393
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/ChatHelper;->isMeAccessibleToThisChat(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1394
    invoke-virtual {p0, v3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1395
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/narvii/influencer/FanClub;

    iget-object v2, v2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1396
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1397
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1398
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/narvii/model/ChatThread;->needHidden:Z

    .line 1399
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1405
    :cond_b
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/narvii/chat/util/ThreadNotification;

    if-eqz v2, :cond_d

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne p1, v1, :cond_d

    .line 1406
    check-cast v0, Lcom/narvii/chat/util/ThreadNotification;

    .line 1407
    iget p1, v0, Lcom/narvii/chat/util/ThreadNotification;->action:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_c

    .line 1408
    iget-object p1, v0, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    if-eqz p1, :cond_d

    .line 1409
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->addMembers(Ljava/util/List;)V

    goto :goto_1

    :cond_c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    .line 1412
    iget-object p1, v0, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_d

    .line 1413
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {v0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$1300(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/User;)V

    .line 1417
    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$400(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 569
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 571
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->sendMemberListReqeust()V

    .line 572
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorAbort()V

    .line 573
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/ThreadResponse;",
            ">;"
        }
    .end annotation

    .line 557
    const-class v0, Lcom/narvii/chat/ThreadResponse;

    return-object v0
.end method

.method public setObject(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 562
    new-instance v0, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v0}, Lcom/narvii/chat/ThreadResponse;-><init>()V

    .line 563
    iput-object p1, v0, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 564
    invoke-virtual {p0, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->updateResponse(Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 540
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->setObject(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/chat/ThreadResponse;)V
    .locals 3

    .line 578
    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->updateResponse(Lcom/narvii/chat/ThreadResponse;)V

    .line 580
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 581
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 582
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_fromThreadDetailFragment"

    const/4 v2, 0x1

    .line 583
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 584
    iput-object p1, v0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const-string p1, "notification"

    .line 585
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 586
    invoke-static {p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 540
    check-cast p1, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->setResponse(Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method

.method public updateResponse(Lcom/narvii/chat/ThreadResponse;)V
    .locals 2

    .line 590
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 591
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 592
    iget-object v0, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p1}, Lcom/narvii/chat/ThreadResponse;->object()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, p1}, Lcom/narvii/detail/DetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    .line 597
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$100(Lcom/narvii/chat/detail/ThreadDetailFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$200(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 598
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$302(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)Z

    .line 599
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$100(Lcom/narvii/chat/detail/ThreadDetailFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 600
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$302(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)Z

    .line 601
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$202(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)Z

    .line 603
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$400(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    return-void
.end method
