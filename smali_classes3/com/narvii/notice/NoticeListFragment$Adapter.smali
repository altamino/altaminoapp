.class public Lcom/narvii/notice/NoticeListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "NoticeListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/notice/Notice;",
        "Lcom/narvii/notice/NoticeListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field fmt:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/notice/NoticeListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 1

    .line 549
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const/4 v0, 0x1

    .line 550
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 551
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method

.method private getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;
    .locals 0

    .line 907
    iget-object p1, p1, Lcom/narvii/notice/Notice;->objectText:Ljava/lang/String;

    return-object p1
.end method

.method private getContentType(II)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x83

    if-eq p1, v0, :cond_4

    .line 931
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const p2, 0x7f0f0d7a

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 927
    :cond_0
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const p2, 0x7f0f0d50

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 929
    :cond_1
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const p2, 0x7f0f0249

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 925
    :cond_2
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const p2, 0x7f0f029b

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 923
    :cond_3
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const p2, 0x7f0f0e0d

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/16 p1, 0x9

    if-ne p2, p1, :cond_5

    .line 917
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const p2, 0x7f0f0e0c

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x4

    if-ne p2, p1, :cond_6

    .line 919
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const p2, 0x7f0f0e08

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 921
    :cond_6
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const p2, 0x7f0f0e05

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 913
    :cond_7
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const p2, 0x7f0f0131

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;
    .locals 2

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/narvii/notice/Notice;->objectType:I

    invoke-static {p1}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1128
    iget v0, p2, Lcom/narvii/notice/Notice;->objectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p2, p2, Lcom/narvii/notice/Notice;->objectSubtype:I

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    .line 1129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?displayMode=fullscreenPlay"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;
    .locals 0

    .line 903
    iget-object p1, p1, Lcom/narvii/notice/Notice;->parentText:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 580
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/notification"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget v1, v1, Lcom/narvii/notice/NoticeListFragment;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "start0"

    .line 582
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 584
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/notice/Notice;",
            ">;"
        }
    .end annotation

    .line 566
    const-class v0, Lcom/narvii/notice/Notice;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "AlertList"

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    .line 631
    move-object/from16 v1, p1

    check-cast v1, Lcom/narvii/notice/Notice;

    const v2, 0x7f0b054b

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 632
    invoke-virtual {v0, v2, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 635
    iget-object v3, v1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "?"

    .line 641
    :goto_1
    iget v4, v1, Lcom/narvii/notice/Notice;->type:I

    const v6, 0x7f080280

    const v7, 0x7f080279

    const v8, 0x7f080287

    const v9, 0x7f080277

    const/4 v10, 0x0

    const v11, 0x7f08027e

    const/4 v12, 0x1

    const/4 v13, 0x0

    const v14, 0x7f08027a

    if-eq v4, v12, :cond_16

    const/4 v15, 0x2

    if-eq v4, v15, :cond_15

    const/4 v5, 0x3

    if-eq v4, v5, :cond_11

    const/4 v5, 0x4

    if-eq v4, v5, :cond_f

    const/16 v7, 0x18

    if-eq v4, v7, :cond_e

    const/16 v7, 0x37

    if-eq v4, v7, :cond_d

    const/16 v7, 0x39

    if-eq v4, v7, :cond_c

    packed-switch v4, :pswitch_data_0

    const v6, 0x7f0f00db

    const/16 v7, 0x9

    const v15, 0x7f0f00ce

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_11

    .line 838
    :pswitch_0
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00c6

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 834
    :pswitch_1
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00c3

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 830
    :pswitch_2
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00c4

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 826
    :pswitch_3
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00c5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v6, v10

    const/4 v5, 0x0

    goto/16 :goto_14

    .line 813
    :pswitch_4
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const-string v5, "community"

    invoke-virtual {v4, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/narvii/model/Community;

    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Community;

    if-eqz v4, :cond_2

    .line 814
    iget v5, v4, Lcom/narvii/model/Community;->id:I

    iget v6, v1, Lcom/narvii/notice/Notice;->contextNdcId:I

    if-eq v5, v6, :cond_3

    :cond_2
    const-string v4, "community"

    .line 815
    invoke-virtual {v0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/community/CommunityService;

    .line 816
    iget v5, v1, Lcom/narvii/notice/Notice;->contextNdcId:I

    invoke-virtual {v4, v5}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    .line 819
    iget-object v5, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v6, 0x7f0f00e0

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    aput-object v8, v7, v13

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 821
    :cond_4
    iget-object v5, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v6, 0x7f0f00e0

    new-array v7, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v6, v10

    move-object v10, v4

    move-object v4, v5

    goto/16 :goto_12

    .line 795
    :pswitch_5
    iget v4, v1, Lcom/narvii/notice/Notice;->objectType:I

    const/16 v5, 0x72

    if-eq v4, v5, :cond_7

    const/16 v5, 0x74

    if-eq v4, v5, :cond_6

    const/16 v5, 0x7a

    if-eq v4, v5, :cond_5

    .line 806
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00d7

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 803
    :cond_5
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00d8

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 800
    :cond_6
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00d6

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 797
    :cond_7
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00d9

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 809
    :goto_4
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto/16 :goto_b

    :pswitch_6
    const v5, 0x7f08028c

    .line 789
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    new-array v6, v12, [Ljava/lang/Object;

    iget v7, v1, Lcom/narvii/notice/Notice;->objectType:I

    iget v8, v1, Lcom/narvii/notice/Notice;->objectSubtype:I

    invoke-direct {v0, v7, v8}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentType(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-virtual {v4, v15, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 790
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_14

    :pswitch_7
    const v5, 0x7f080278

    .line 784
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-virtual {v4, v6}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 785
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_14

    .line 772
    :pswitch_8
    iget v4, v1, Lcom/narvii/notice/Notice;->objectSubtype:I

    if-ne v4, v7, :cond_8

    const v4, 0x7f080286

    const v5, 0x7f080286

    goto :goto_5

    :cond_8
    if-ne v4, v5, :cond_9

    const v4, 0x7f08027f

    const v5, 0x7f08027f

    goto :goto_5

    :cond_9
    const v4, 0x7f080282

    const v5, 0x7f080282

    .line 779
    :goto_5
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    new-array v6, v12, [Ljava/lang/Object;

    iget v7, v1, Lcom/narvii/notice/Notice;->objectType:I

    iget v8, v1, Lcom/narvii/notice/Notice;->objectSubtype:I

    invoke-direct {v0, v7, v8}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentType(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-virtual {v4, v15, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 780
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_14

    :pswitch_9
    const v5, 0x7f08027b

    .line 769
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v6, 0x7f0f00cb

    invoke-virtual {v4, v6}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_13

    :pswitch_a
    const v5, 0x7f08027b

    .line 765
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v6, 0x7f0f00ca

    invoke-virtual {v4, v6}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_13

    :pswitch_b
    const v5, 0x7f080289

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, v1, Lcom/narvii/notice/Notice;->contextValue:I

    const v7, 0x7f0f00c9

    const v8, 0x7f0f00c8

    invoke-static {v4, v6, v7, v8}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_13

    :pswitch_c
    const v5, 0x7f080284

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, v1, Lcom/narvii/notice/Notice;->contextValue:I

    const v7, 0x7f0f00e1

    const v8, 0x7f0f00e2

    invoke-static {v4, v6, v7, v8}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_13

    .line 744
    :pswitch_d
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00dc

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 745
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 735
    :pswitch_e
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00d5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 736
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 726
    :pswitch_f
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-virtual {v4, v6}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 727
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    move-object v6, v5

    const v5, 0x7f080277

    goto/16 :goto_14

    .line 721
    :pswitch_10
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    new-array v5, v12, [Ljava/lang/Object;

    iget v6, v1, Lcom/narvii/notice/Notice;->objectType:I

    iget v7, v1, Lcom/narvii/notice/Notice;->objectSubtype:I

    invoke-direct {v0, v6, v7}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentType(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-virtual {v4, v15, v5}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 722
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_c

    .line 709
    :pswitch_11
    iget v4, v1, Lcom/narvii/notice/Notice;->objectSubtype:I

    if-ne v4, v7, :cond_a

    const v4, 0x7f080285

    const v5, 0x7f080285

    goto :goto_7

    :cond_a
    if-ne v4, v5, :cond_b

    const v5, 0x7f08027e

    goto :goto_7

    :cond_b
    const v4, 0x7f080281

    const v5, 0x7f080281

    .line 716
    :goto_7
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    new-array v6, v12, [Ljava/lang/Object;

    iget v7, v1, Lcom/narvii/notice/Notice;->objectType:I

    iget v8, v1, Lcom/narvii/notice/Notice;->objectSubtype:I

    invoke-direct {v0, v7, v8}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentType(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-virtual {v4, v15, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 717
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_14

    .line 700
    :pswitch_12
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00d1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 701
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 694
    :pswitch_13
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00d0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    :goto_8
    move-object v6, v5

    const v5, 0x7f080280

    goto/16 :goto_14

    .line 687
    :pswitch_14
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00e3

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 688
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 682
    :pswitch_15
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00c7

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 683
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 677
    :pswitch_16
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00d3

    new-array v6, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 678
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    :goto_9
    move-object v6, v5

    const v5, 0x7f08027e

    goto/16 :goto_14

    :pswitch_17
    const v5, 0x7f08027d

    .line 667
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v6, 0x7f0f00d4

    new-array v7, v12, [Ljava/lang/Object;

    iget v8, v1, Lcom/narvii/notice/Notice;->objectType:I

    iget v9, v1, Lcom/narvii/notice/Notice;->objectSubtype:I

    invoke-direct {v0, v8, v9}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentType(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v4, v6, v7}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 668
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_14

    .line 761
    :cond_c
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00df

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    .line 757
    :cond_d
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00de

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_a
    move-object v6, v10

    :goto_b
    const v5, 0x7f080287

    goto/16 :goto_14

    .line 705
    :cond_e
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00dd

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 706
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    :goto_c
    move-object v6, v5

    const v5, 0x7f08028b

    goto/16 :goto_14

    .line 660
    :cond_f
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00da

    new-array v6, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 661
    iget v5, v1, Lcom/narvii/notice/Notice;->parentType:I

    if-eqz v5, :cond_10

    .line 662
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    :goto_d
    move-object v6, v5

    goto :goto_f

    :cond_10
    :goto_e
    move-object v6, v10

    :goto_f
    const v5, 0x7f080279

    goto :goto_14

    .line 651
    :cond_11
    iget v4, v1, Lcom/narvii/notice/Notice;->parentType:I

    if-nez v4, :cond_12

    .line 652
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00cd

    new-array v6, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_12
    if-eq v4, v12, :cond_14

    if-eq v4, v15, :cond_14

    const/16 v5, 0x6d

    if-ne v4, v5, :cond_13

    goto :goto_10

    :cond_13
    move-object v4, v10

    move-object v6, v4

    goto :goto_f

    .line 654
    :cond_14
    :goto_10
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v5, 0x7f0f00cc

    new-array v6, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 655
    invoke-direct {v0, v1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_15
    :goto_11
    :pswitch_18
    move-object v4, v10

    move-object v6, v4

    :goto_12
    const v5, 0x7f08027a

    goto :goto_14

    :cond_16
    const v5, 0x7f08027c

    .line 644
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v6, 0x7f0f00d2

    invoke-virtual {v4, v6}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_13
    move-object v6, v10

    :goto_14
    if-nez v4, :cond_17

    .line 845
    iget-object v4, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const v7, 0x7f0f0c9a

    invoke-virtual {v4, v7}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_17
    const v7, 0x7f090562

    .line 848
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v7, 0x7f0900e4

    .line 849
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/ThumbImageView;

    .line 850
    iget-object v8, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f090c10

    .line 852
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/UserAvatarLayout;

    const v8, 0x7f090562

    .line 853
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f090563

    .line 854
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v11, 0x7f0902a3

    .line 855
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/narvii/widget/CommunityIconView;

    const/16 v12, 0x8

    if-eqz v10, :cond_18

    .line 858
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 859
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 860
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 862
    invoke-virtual {v11, v10}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 863
    iget-object v3, v10, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    goto :goto_15

    .line 864
    :cond_18
    iget-object v10, v1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Lcom/narvii/model/User;->isSystem()Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v10, v1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    invoke-virtual {v10}, Lcom/narvii/model/User;->isModerator()Z

    move-result v10

    if-eqz v10, :cond_1a

    :cond_19
    if-eqz v5, :cond_1a

    .line 866
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 868
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 869
    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 870
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 872
    :cond_1a
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 873
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    invoke-virtual {v7, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 876
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 877
    iget-object v5, v1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    invoke-virtual {v7, v5}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :goto_15
    const v5, 0x7f09074b

    .line 880
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f09032e

    .line 881
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    iget-object v7, v1, Lcom/narvii/notice/Notice;->createdTime:Ljava/util/Date;

    invoke-virtual {v5, v7}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090b5b

    .line 883
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090b5d

    .line 885
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090b5e

    .line 886
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 887
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 888
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 890
    :cond_1b
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 894
    :goto_16
    iget-object v3, v1, Lcom/narvii/notice/Notice;->createdTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-wide v6, v5, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    cmp-long v8, v3, v6

    if-lez v8, :cond_1e

    iget-object v3, v5, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    if-eqz v3, :cond_1c

    iget-object v1, v1, Lcom/narvii/notice/Notice;->notificationId:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_18

    .line 897
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v1

    if-eqz v1, :cond_1d

    const v1, 0x19ffffff

    goto :goto_17

    :cond_1d
    const v1, -0x3071b

    :goto_17
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_19

    .line 895
    :cond_1e
    :goto_18
    invoke-virtual {v2, v13}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_19
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 589
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 590
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-static {v0}, Lcom/narvii/notice/NoticeListFragment;->access$100(Lcom/narvii/notice/NoticeListFragment;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 937
    instance-of v3, v1, Lcom/narvii/notice/Notice;

    if-nez v3, :cond_0

    .line 938
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    return v1

    .line 941
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/narvii/notice/Notice;

    const/4 v4, 0x0

    const-string v5, "Source"

    const-string v6, "Alerts"

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    .line 942
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0900e4

    if-ne v8, v9, :cond_3

    .line 943
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 944
    iget-object v1, v3, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    if-eqz v1, :cond_2

    .line 945
    invoke-static {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    return v7

    .line 947
    :cond_1
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 951
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    return v7

    .line 962
    :cond_3
    sget-object v2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    iget v2, v3, Lcom/narvii/notice/Notice;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "alertType"

    invoke-virtual {v1, v8, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 964
    new-instance v1, Lcom/narvii/chat/video/VVChatEntryHelper;

    invoke-direct {v1, v0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 967
    iget v2, v3, Lcom/narvii/notice/Notice;->contextNdcId:I

    const-string v8, "/"

    if-nez v2, :cond_4

    const-string v2, "ndc://g/"

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ndc://x"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/narvii/notice/Notice;->contextNdcId:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 969
    :goto_0
    iget v9, v3, Lcom/narvii/notice/Notice;->type:I

    const/4 v10, 0x0

    const-string v11, "android.intent.action.VIEW"

    if-eq v9, v7, :cond_11

    const/4 v12, 0x2

    if-eq v9, v12, :cond_10

    const-string v12, "g-comment/"

    const-string v13, "comment/"

    const/4 v14, 0x4

    const/4 v15, 0x3

    if-eq v9, v15, :cond_b

    if-eq v9, v14, :cond_b

    const/16 v4, 0x18

    if-eq v9, v4, :cond_8

    const/16 v4, 0x37

    if-eq v9, v4, :cond_8

    const/16 v4, 0x39

    if-eq v9, v4, :cond_8

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    packed-switch v9, :pswitch_data_3

    goto :goto_1

    .line 1094
    :pswitch_0
    const-class v1, Lcom/narvii/monetization/coupons/CouponListFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    goto :goto_1

    .line 1091
    :pswitch_1
    const-class v1, Lcom/narvii/influencer/MySubscriptionListFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    goto :goto_1

    .line 1087
    :pswitch_2
    const-class v1, Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    goto :goto_1

    .line 1079
    :pswitch_3
    iget-object v1, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const-string v2, "community"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/narvii/model/Community;

    invoke-static {v1, v4}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    if-eqz v1, :cond_5

    .line 1080
    iget v4, v1, Lcom/narvii/model/Community;->id:I

    iget v8, v3, Lcom/narvii/notice/Notice;->contextNdcId:I

    if-eq v4, v8, :cond_6

    .line 1081
    :cond_5
    invoke-virtual {v0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 1082
    iget v2, v3, Lcom/narvii/notice/Notice;->contextNdcId:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    .line 1084
    :cond_6
    iget-object v2, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-static {v2, v1}, Lcom/narvii/notice/NoticeListFragment;->access$000(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;)V

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1074
    :pswitch_4
    invoke-direct {v0, v2, v3}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v1

    .line 1075
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    :pswitch_5
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1064
    :pswitch_6
    const-class v1, Lcom/narvii/influencer/FansListFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    .line 1065
    iget-object v1, v3, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    .line 1066
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "account"

    .line 1067
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 1068
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    :cond_7
    const-string v2, "id"

    .line 1070
    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    invoke-virtual {v10, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_7
    const/4 v2, 0x5

    .line 1055
    iget-object v4, v3, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v2, v10, v4, v6}, Lcom/narvii/chat/video/VVChatEntryHelper;->getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1056
    invoke-virtual {v1, v2, v7}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v10

    goto :goto_1

    .line 1060
    :pswitch_8
    invoke-direct {v0, v2, v3}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v1

    .line 1061
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 1048
    :pswitch_9
    iget-object v2, v3, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v15, v10, v2, v6}, Lcom/narvii/chat/video/VVChatEntryHelper;->getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1049
    invoke-virtual {v1, v2, v7}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v10

    goto :goto_1

    .line 1031
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x6a

    invoke-static {v2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/?notification-id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/narvii/notice/Notice;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1032
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1042
    :pswitch_b
    iget-object v2, v3, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v14, v10, v2, v6}, Lcom/narvii/chat/video/VVChatEntryHelper;->getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1043
    invoke-virtual {v1, v2, v7}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_1

    .line 1036
    :pswitch_c
    iget-object v2, v3, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v7, v10, v2, v6}, Lcom/narvii/chat/video/VVChatEntryHelper;->getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1037
    invoke-virtual {v1, v2, v7}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_1

    .line 1026
    :pswitch_d
    invoke-direct {v0, v2, v3}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v1

    .line 1027
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1019
    :pswitch_e
    invoke-direct {v0, v2, v3}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_1

    :pswitch_f
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    :pswitch_10
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 990
    :pswitch_11
    iget v1, v3, Lcom/narvii/notice/Notice;->objectType:I

    if-ne v1, v15, :cond_a

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/narvii/notice/Notice;->ndcId:I

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    move-object v12, v13

    :goto_2
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/narvii/notice/Notice;->parentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/narvii/notice/Notice;->parentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 992
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "show_reply"

    const/4 v4, 0x0

    .line 993
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_a
    const/4 v4, 0x0

    .line 995
    invoke-direct {v0, v2, v3}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v1

    .line 996
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_8

    .line 1006
    :cond_b
    :goto_3
    iget v1, v3, Lcom/narvii/notice/Notice;->parentType:I

    if-nez v1, :cond_c

    const-string v1, "user-profile"

    goto :goto_4

    .line 1007
    :cond_c
    invoke-static {v1}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1008
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/narvii/notice/Notice;->parentId:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    iget v9, v3, Lcom/narvii/notice/Notice;->type:I

    if-eq v9, v15, :cond_d

    if-ne v9, v14, :cond_f

    .line 1010
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/narvii/notice/Notice;->ndcId:I

    if-nez v2, :cond_e

    goto :goto_5

    :cond_e
    move-object v12, v13

    :goto_5
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/narvii/notice/Notice;->parentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/narvii/notice/Notice;->parentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    :cond_f
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_8

    .line 984
    :cond_10
    :goto_6
    invoke-direct {v0, v2, v3}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v1

    .line 985
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_8

    .line 972
    :cond_11
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/narvii/notice/Notice;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 973
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_8
    :try_start_0
    const-string v1, "navigator"

    .line 1101
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/navigator/Navigator;

    .line 1102
    invoke-interface {v1, v10}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 1103
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_12

    .line 1104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to open "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", type="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/narvii/notice/Notice;->type:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", objectType="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/narvii/notice/Notice;->objectType:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 1106
    :cond_12
    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1107
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_13
    const-string v2, "__communityId"

    .line 1109
    iget v5, v3, Lcom/narvii/notice/Notice;->contextNdcId:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1111
    iget v2, v3, Lcom/narvii/notice/Notice;->ndcId:I

    if-nez v2, :cond_14

    const-string v2, "fromHeadline"

    .line 1113
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_14
    const-string v2, "__interactionScope"

    .line 1116
    iget v5, v3, Lcom/narvii/notice/Notice;->ndcId:I

    if-nez v5, :cond_15

    const/4 v4, 0x1

    :cond_15
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1118
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :catch_0
    iget-object v1, v0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v1, v1, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    iget-object v2, v3, Lcom/narvii/notice/Notice;->notificationId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v7

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_6
        :pswitch_5
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1137
    instance-of v0, p3, Lcom/narvii/notice/Notice;

    if-eqz v0, :cond_0

    .line 1138
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    check-cast p3, Lcom/narvii/notice/Notice;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/narvii/notice/NoticeListFragment;->delete(Lcom/narvii/notice/Notice;Z)V

    const/4 p1, 0x1

    return p1

    .line 1141
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1146
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/notice/Notice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1147
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 544
    check-cast p2, Lcom/narvii/notice/NoticeListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/notice/NoticeListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/notice/NoticeListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/notice/NoticeListResponse;I)V
    .locals 4

    .line 595
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 596
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "start0"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "push"

    .line 598
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 599
    iget-object p3, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget p3, p3, Lcom/narvii/notice/NoticeListFragment;->cid:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    const-string p1, "account"

    .line 601
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 602
    iget p3, p2, Lcom/narvii/notice/NoticeListResponse;->notificationCount:I

    if-nez p3, :cond_0

    iget-object p3, p2, Lcom/narvii/notice/NoticeListResponse;->notificationList:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget p3, p2, Lcom/narvii/notice/NoticeListResponse;->notificationCount:I

    .line 603
    :goto_0
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget v1, v1, Lcom/narvii/notice/NoticeListFragment;->cid:I

    if-nez v1, :cond_1

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-noticeListResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "globalNotificationCount"

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget v1, v1, Lcom/narvii/notice/NoticeListFragment;->cid:I

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v1, p3, v2, v0}, Lcom/narvii/account/AccountService;->updateNotificationCount(IILjava/lang/String;Z)V

    .line 607
    iget-object p2, p2, Lcom/narvii/notice/NoticeListResponse;->lastCheckTime:Ljava/util/Date;

    if-eqz p2, :cond_2

    .line 608
    iget-object p3, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-wide v2, p2, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    .line 609
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 610
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget p3, p3, Lcom/narvii/notice/NoticeListFragment;->cid:I

    const-string v0, "notificationReadTime"

    invoke-virtual {p1, p3, v0}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-wide v0, p3, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 611
    invoke-virtual {p0}, Lcom/narvii/notice/NoticeListFragment$Adapter;->notifyDataSetChanged()V

    .line 613
    :cond_2
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-virtual {p1}, Lcom/narvii/notice/NoticeListFragment;->requestCheckNotification()V

    :cond_3
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/notice/NoticeListResponse;",
            ">;"
        }
    .end annotation

    .line 571
    const-class v0, Lcom/narvii/notice/NoticeListResponse;

    return-object v0
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
