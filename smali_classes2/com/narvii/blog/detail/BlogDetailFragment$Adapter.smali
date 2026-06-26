.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;
.super Lcom/narvii/detail/FeedDetailAdapter;
.source "BlogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/FeedDetailAdapter<",
        "Lcom/narvii/model/Blog;",
        ">;"
    }
.end annotation


# instance fields
.field private pollAdapter:Lcom/narvii/poll/PollAdapter;

.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

.field videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

.field private voting:Z


# direct methods
.method public constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 2

    .line 689
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 690
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 701
    new-instance v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)V

    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    .line 692
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v0, p1, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;

    if-eqz v0, :cond_0

    .line 693
    check-cast p1, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;

    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;->getVideoDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    .line 694
    instance-of v0, p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    if-eqz v0, :cond_0

    .line 695
    check-cast p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    invoke-virtual {p1, v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->setVideoViewClickListener(Lcom/narvii/nvplayerview/listener/VideoViewClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)Lcom/narvii/poll/PollAdapter;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    return-object p0
.end method

.method static synthetic access$5402(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Z)Z
    .locals 0

    .line 683
    iput-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->voting:Z

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/logging/ActSemantic;)V
    .locals 0

    .line 683
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailAdapter;->sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method

.method private configLinkPostCustomContentBackground(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1711
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    .line 1712
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1713
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v1, :cond_2

    const v1, -0x9090a

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_1
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$requestLinkedBlog$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 908
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method private requestLinkedBlog()V
    .locals 5

    .line 896
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 899
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    .line 900
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getLinkedBlogId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2300(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    goto/16 :goto_1

    .line 902
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 903
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1200(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V

    .line 904
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 905
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 906
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const v2, 0x7f0f03a8

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0193

    .line 907
    new-instance v2, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$Adapter$0BUIgOLnUj8eBHghOsqsqU8fx_g;

    invoke-direct {v2, v0}, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$Adapter$0BUIgOLnUj8eBHghOsqsqU8fx_g;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f119f

    .line 910
    new-instance v2, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$Adapter$isWKPKFkBiETnew16KQyr6Jy2n4;

    invoke-direct {v2, p0, v0}, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$Adapter$isWKPKFkBiETnew16KQyr6Jy2n4;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 v1, 0x0

    .line 914
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 915
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 916
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2202(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z

    goto :goto_1

    .line 918
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "api"

    .line 919
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 920
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/blog/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 921
    new-instance v2, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;

    const-class v3, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 939
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2300(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private sendImagePostUpdateNotificaion(Lcom/narvii/model/Feed;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 950
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/narvii/model/Feed;->needHidden:Z

    if-nez v0, :cond_0

    .line 951
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 952
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 953
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public allowTipping()Z
    .locals 3

    .line 1276
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1280
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    .line 1281
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    return v1

    .line 1285
    :cond_1
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->allowTipping()Z

    move-result v0

    return v0
.end method

.method protected buildCells(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/narvii/model/Blog;

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->taggedObjects()Ljava/util/List;

    move-result-object v9

    .line 1102
    iget-object v0, v8, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    const/4 v11, 0x1

    if-nez v0, :cond_1

    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    :goto_1
    if-nez v12, :cond_2

    .line 1107
    invoke-virtual {v8}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1108
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    :cond_2
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    const/4 v13, 0x6

    if-ne v0, v13, :cond_3

    .line 1123
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    :cond_3
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    if-eqz v0, :cond_6

    .line 1128
    iget-object v1, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v2, v1, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4000(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/narvii/poll/PollAdapter;->setPreview(Z)V

    .line 1129
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    invoke-virtual {v0, v7}, Lcom/narvii/poll/PollAdapter;->buildCells(Ljava/util/List;)V

    :cond_6
    if-eqz v12, :cond_7

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f06b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    const-string v0, ""

    .line 1136
    :goto_4
    iget-object v1, v8, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v12, :cond_8

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f06b4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1141
    :cond_8
    iget-object v1, v8, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_5
    move-object v1, v0

    .line 1145
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    .line 1146
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    iget-object v2, v8, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    const/16 v5, 0x8

    if-eq v0, v5, :cond_b

    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4100(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    const/16 v17, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move-object v4, v15

    const/16 v10, 0x8

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    const/4 v1, 0x7

    move-object/from16 v0, v16

    .line 1165
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1166
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1167
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LINK_CUSTOM_CONTENT_PADDING:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    :cond_c
    :goto_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_e

    .line 1173
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Media;

    if-eqz v0, :cond_d

    const/16 v18, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_e
    const/16 v18, 0x0

    .line 1179
    :goto_9
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_f

    .line 1180
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->STORY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    :cond_f
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    if-ne v0, v13, :cond_10

    invoke-virtual {v8}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1185
    invoke-virtual {v8}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1189
    :cond_10
    invoke-virtual {v8}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-eqz v0, :cond_11

    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    if-ne v0, v2, :cond_11

    .line 1190
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    :cond_11
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 1194
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    if-eq v0, v1, :cond_13

    if-eq v0, v10, :cond_13

    if-eqz v18, :cond_12

    .line 1195
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->MORE_PHOTOS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    goto :goto_a

    :cond_12
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->PHOTOS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    :goto_a
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    :cond_13
    invoke-interface {v7, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_14
    if-eqz v12, :cond_17

    .line 1202
    iget-object v0, v8, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_16

    .line 1203
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1204
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1206
    :cond_15
    iget-object v0, v8, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1210
    :cond_16
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_NULL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    :cond_17
    :goto_b
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    if-eq v0, v2, :cond_18

    if-ne v0, v10, :cond_19

    .line 1216
    :cond_18
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/detail/FeedDetailAdapter;->addDivider(Ljava/util/List;)V

    .line 1221
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    if-eqz v9, :cond_1b

    .line 1226
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 1227
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->allowTipping()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1237
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    :cond_1c
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const-string v1, "fromHeadline"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 1242
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2400(Lcom/narvii/blog/detail/BlogDetailFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 1243
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2400(Lcom/narvii/blog/detail/BlogDetailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1244
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->RELATED_AMINOS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_1d
    invoke-virtual {v8}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v0

    if-lez v0, :cond_1e

    .line 1264
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-virtual {v1, v0}, Lcom/narvii/detail/DetailAdapter$HeaderTag;->setCount(I)V

    .line 1265
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    :cond_1e
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public commentNew()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 763
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->commentNew()V

    return-void
.end method

.method public commentNew(Ljava/lang/String;)V
    .locals 0

    .line 1920
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    .line 1921
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object p1, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    return-void
.end method

.method protected commentRefresh()V
    .locals 2

    .line 1937
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    move-result v0

    iput v0, v1, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->flHeight:I

    .line 1938
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    return-void
.end method

.method protected commentSort()I
    .locals 1

    .line 1926
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    move-result v0

    return v0
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    move-object v0, p0

    .line 1686
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 1687
    iget v2, v1, Lcom/narvii/model/Blog;->type:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1688
    :goto_0
    iget v5, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const v5, 0x7f0b014c

    if-eqz v2, :cond_2

    const v5, 0x7f0b014d

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    const v7, 0x7f0b014d

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    const v5, 0x7f0b015c

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    const v7, 0x7f0b015c

    goto :goto_2

    :cond_3
    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    const v7, 0x7f0b014c

    .line 1695
    :goto_2
    invoke-virtual {p0, p1, v7, v3, v5}, Lcom/narvii/detail/FeedDetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1696
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1697
    iget v5, v1, Lcom/narvii/model/Blog;->type:I

    if-ne v5, v6, :cond_4

    const v8, 0x7f090571

    .line 1698
    invoke-virtual {v1, v4}, Lcom/narvii/model/Blog;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object v9

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v3

    move-object v10, p1

    invoke-static/range {v7 .. v13}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    goto :goto_3

    :cond_4
    const v8, 0x7f090571

    .line 1700
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v3

    move-object v9, p1

    move-object v10, p1

    invoke-static/range {v7 .. v13}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    :cond_5
    :goto_3
    const v1, 0x7f0906ce

    .line 1703
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->configLinkPostCustomContentBackground(Landroid/view/View;)V

    return-object v3
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1063
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3900(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1066
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    invoke-static {v3}, Lcom/narvii/model/extension/FeedExtensionKt;->apiTypeNameForBlog(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1068
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public createTextView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1675
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    .line 1676
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0b015e

    const v3, 0x7f0b015e

    goto :goto_1

    :cond_1
    const v0, 0x7f0b015d

    const v3, 0x7f0b015d

    :goto_1
    const/4 v6, 0x1

    .line 1677
    sget-object v7, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/detail/FeedDetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090b5b

    .line 1679
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->configLinkPostCustomContentBackground(Landroid/view/View;)V

    return-object p1
.end method

.method protected createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1073
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1076
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    invoke-static {v3}, Lcom/narvii/model/extension/FeedExtensionKt;->apiTypeNameForBlog(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/g-vote"

    goto :goto_0

    :cond_1
    const-string v2, "/vote"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 1078
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "start"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 1079
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "size"

    invoke-virtual {p1, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string p2, "cv"

    const-string v1, "1.2"

    .line 1080
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1081
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1332
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    const v5, -0xcccccd

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-ne v1, v4, :cond_8

    const v1, 0x7f0b0150

    .line 1333
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 1336
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    .line 1337
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v6

    .line 1340
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const v4, 0x7f090a60

    .line 1341
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/16 v7, 0x8

    .line 1342
    :goto_1
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1343
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f090a5a

    .line 1345
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1346
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f090a5d

    .line 1348
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/narvii/widget/NVImageView;

    .line 1349
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getFirstMediaUrl()Ljava/lang/String;

    move-result-object v12

    .line 1350
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x8

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1351
    invoke-virtual {v11, v12}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 1352
    iget-object v12, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v11, 0x7f090a5b

    .line 1354
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/narvii/widget/ThumbImageView;

    .line 1355
    iget-object v12, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060058

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-static {v12}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v12

    .line 1356
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getShowFavIcon()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const v13, 0x7f080209

    invoke-static {v6, v13}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1358
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4

    .line 1360
    :cond_5
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getShowFavIcon()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 1361
    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_4
    const v6, 0x7f090a5f

    .line 1364
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1365
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getShowSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getShowSource()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1368
    invoke-virtual {v0, v1, v4, v5, v9}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    .line 1369
    invoke-virtual {v0, v1, v7, v5, v9}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    const v4, 0x7f090a5f

    const v5, -0x404041

    const v6, -0x77000001

    .line 1370
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    .line 1371
    invoke-virtual {v2}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v2

    if-eqz v2, :cond_7

    const v12, 0x7f090a5d

    .line 1373
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v13

    const/4 v14, 0x0

    iget-object v2, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v1

    invoke-static/range {v11 .. v17}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    :cond_7
    return-object v1

    .line 1377
    :cond_8
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    const v11, 0x7f090425

    if-ne v1, v4, :cond_c

    const v1, 0x7f0b015f

    .line 1378
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090b9a

    .line 1380
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1381
    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v3, :cond_9

    const/4 v5, -0x1

    :cond_9
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1382
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Blog;

    iget-object v3, v3, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v8, 0x0

    :cond_a
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-object v1

    .line 1390
    :cond_c
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->ADDRESS:Lcom/narvii/detail/DetailAdapter$CellType;

    const v5, -0x66000001

    if-ne v1, v4, :cond_e

    const v1, 0x7f0b0134

    .line 1391
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    const v3, 0x7f090562

    .line 1396
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/TintButton;

    .line 1397
    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_d

    goto :goto_6

    :cond_d
    const v5, -0x818182

    :goto_6
    invoke-virtual {v3, v5}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    const v3, 0x7f09006f

    .line 1399
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/AddressView;

    iget v5, v2, Lcom/narvii/model/Feed;->latitude:I

    iget v6, v2, Lcom/narvii/model/Feed;->longitude:I

    iget-object v2, v2, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2, v7}, Lcom/narvii/widget/AddressView;->setLatLngE6(IILjava/lang/String;Z)V

    .line 1400
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/AddressView;

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {v2, v4}, Lcom/narvii/widget/AddressView;->setDarkTheme(Z)V

    .line 1401
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/AddressView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    return-object v1

    .line 1404
    :cond_e
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    const v12, -0xaaaaab

    if-ne v1, v4, :cond_2e

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 1406
    iget v4, v1, Lcom/narvii/model/Blog;->type:I

    if-ne v4, v8, :cond_f

    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    :goto_7
    const v13, 0x7f0b0160

    if-eqz v4, :cond_10

    const v13, 0x7f0b013d

    goto :goto_8

    .line 1410
    :cond_10
    iget v14, v1, Lcom/narvii/model/Blog;->type:I

    const/4 v15, 0x7

    if-ne v14, v15, :cond_11

    const v13, 0x7f0b0162

    .line 1413
    :cond_11
    :goto_8
    invoke-virtual {v0, v13, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900e4

    .line 1416
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVImageView;

    const v13, 0x7f090c10

    .line 1417
    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/narvii/widget/UserAvatarLayout;

    .line 1418
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/narvii/model/Blog;->getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v4, :cond_12

    if-eqz v14, :cond_12

    if-eqz v3, :cond_12

    .line 1420
    invoke-virtual {v3, v14}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_12
    if-eqz v13, :cond_13

    .line 1423
    iget-object v3, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v13, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 1424
    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iget-object v6, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v6}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4300(Lcom/narvii/blog/detail/BlogDetailFragment;)I

    move-result v6

    invoke-virtual {v13, v3, v6, v10}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    goto :goto_a

    :cond_13
    if-eqz v3, :cond_15

    .line 1426
    iget-object v13, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v13, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {v13}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v6

    :goto_9
    invoke-virtual {v3, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_15
    :goto_a
    const v3, 0x7f090764

    .line 1436
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1437
    instance-of v6, v3, Lcom/narvii/widget/NicknameView;

    if-eqz v6, :cond_17

    if-eqz v4, :cond_16

    .line 1439
    move-object v4, v3

    check-cast v4, Lcom/narvii/widget/NicknameView;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/narvii/model/Blog;->getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/narvii/widget/NicknameView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1441
    :cond_16
    move-object v4, v3

    check-cast v4, Lcom/narvii/widget/NicknameView;

    iget-object v6, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v4, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 1443
    :goto_b
    check-cast v3, Lcom/narvii/widget/NicknameView;

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {v3, v4}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    goto :goto_d

    .line 1444
    :cond_17
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_19

    .line 1445
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/narvii/model/Blog;->getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_18

    const/4 v4, -0x1

    goto :goto_c

    :cond_18
    const v4, -0x555556

    :goto_c
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_19
    :goto_d
    const v3, 0x7f09032e

    .line 1449
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1d

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v4

    iget-object v6, v1, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {v4, v6}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1452
    iget-object v6, v1, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    if-eqz v6, :cond_1b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1b

    .line 1453
    iget-object v6, v1, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_1a

    .line 1454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v13, 0x7f0f06b7

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 1456
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v13, 0x7f0f06b8

    new-array v14, v7, [Ljava/lang/Object;

    iget-object v15, v1, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v7, v15

    invoke-static {v7, v8}, Lcom/narvii/util/text/TextUtils;->getLiteCount2(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v10

    invoke-virtual {v4, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1459
    :cond_1b
    :goto_e
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v4, :cond_1c

    const v5, -0x555556

    :cond_1c
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1d
    const v3, 0x7f090c27

    .line 1464
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1466
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1469
    :cond_1e
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1471
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x0

    goto :goto_f

    :cond_1f
    const/16 v4, 0x8

    :goto_f
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1474
    :cond_20
    iget-object v3, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-nez v3, :cond_22

    iget v3, v1, Lcom/narvii/model/Blog;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    goto :goto_10

    :cond_21
    const/16 v17, 0x0

    goto :goto_11

    :cond_22
    :goto_10
    const/16 v17, 0x1

    :goto_11
    const v3, 0x7f090366

    .line 1475
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v17, :cond_24

    .line 1476
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    iget v4, v1, Lcom/narvii/model/Feed;->latitude:I

    if-eqz v4, :cond_24

    iget v4, v1, Lcom/narvii/model/Feed;->longitude:I

    if-nez v4, :cond_23

    goto :goto_12

    :cond_23
    const/4 v4, 0x0

    goto :goto_13

    :cond_24
    :goto_12
    const/16 v4, 0x8

    :goto_13
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1478
    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_25

    const v4, 0x14ffffff

    goto :goto_14

    :cond_25
    const v4, -0x171718

    :goto_14
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const v3, 0x7f090cd5

    .line 1480
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1481
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1482
    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4400(Lcom/narvii/blog/detail/BlogDetailFragment;)Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v4, 0x7f0801c4

    .line 1484
    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1485
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v4

    if-eqz v4, :cond_26

    .line 1486
    invoke-static {v4}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v4

    if-nez v4, :cond_26

    const v4, 0x7f0801c6

    goto :goto_15

    :cond_26
    const v4, 0x7f0801c5

    .line 1492
    :cond_27
    :goto_15
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v4, 0x7f090cdc

    .line 1494
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/VoteIcon;

    .line 1495
    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 1496
    iget-boolean v5, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v5, :cond_28

    const v5, -0xaaaaab

    goto :goto_16

    :cond_28
    const/4 v5, -0x1

    :goto_16
    invoke-virtual {v4, v5}, Lcom/narvii/widget/VoteIcon;->setNoneColor(I)V

    .line 1497
    iget-boolean v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->voting:Z

    if-eqz v5, :cond_29

    const/16 v5, 0x8

    goto :goto_17

    :cond_29
    const/4 v5, 0x0

    :goto_17
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, 0x7f090cd7

    const v5, -0x111112

    .line 1498
    invoke-virtual {v0, v2, v4, v12, v5}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    const v4, 0x7f090ce0

    .line 1500
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/SpinningView;

    if-eqz v4, :cond_2c

    .line 1502
    iget-boolean v5, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v5, :cond_2a

    goto :goto_18

    :cond_2a
    const/4 v12, -0x1

    :goto_18
    invoke-virtual {v4, v12}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 1503
    iget-boolean v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->voting:Z

    if-eqz v5, :cond_2b

    goto :goto_19

    :cond_2b
    const/16 v10, 0x8

    :goto_19
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    const v4, 0x7f090cd7

    .line 1507
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1508
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v4

    if-nez v4, :cond_2d

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const v4, 0x7f0f0ae0

    invoke-virtual {v1, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    .line 1509
    :cond_2d
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1508
    :goto_1a
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    .line 1512
    :cond_2e
    sget-object v4, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_2f

    .line 1513
    invoke-super/range {p0 .. p3}, Lcom/narvii/detail/FeedDetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 1515
    :cond_2f
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_NULL:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_31

    const v1, 0x7f0b0157

    .line 1516
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09079d

    .line 1518
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1519
    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v3, :cond_30

    const/4 v12, -0x1

    :cond_30
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1

    .line 1523
    :cond_31
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_34

    const v1, 0x7f0b0064

    .line 1524
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090921

    .line 1525
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1526
    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v3, :cond_32

    goto :goto_1b

    :cond_32
    const v9, -0x8b8b8c

    :goto_1b
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_33

    const v4, 0x7f080727

    goto :goto_1c

    :cond_33
    const v4, 0x7f080726

    :goto_1c
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1528
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    .line 1532
    :cond_34
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->STORY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_37

    .line 1533
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 1534
    invoke-virtual {v1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v4

    if-nez v4, :cond_35

    const/16 v4, 0x66

    .line 1535
    iput v4, v1, Lcom/narvii/model/Media;->type:I

    :cond_35
    if-nez v1, :cond_36

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Blog;

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 1539
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Blog;

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_36

    .line 1540
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    .line 1543
    :cond_36
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 1548
    :cond_37
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v5, 0x4

    const v7, 0x7f090a91

    if-ne v1, v4, :cond_40

    .line 1549
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    const v4, 0x7f0b0152

    .line 1550
    invoke-virtual {v0, v4, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0908f7

    .line 1551
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1552
    new-instance v8, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v8, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1553
    invoke-virtual {v8, v1}, Lcom/narvii/feed/FeedHelper;->getQuizHintInfo(Lcom/narvii/model/Blog;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0x777778

    .line 1554
    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    const v3, 0x7f0908ed

    .line 1555
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/feed/quizzes/QuizCoverView;

    .line 1556
    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {v3, v4}, Lcom/narvii/feed/quizzes/QuizCoverView;->setDarkTheme(Z)V

    .line 1557
    invoke-virtual {v3, v1}, Lcom/narvii/feed/quizzes/QuizCoverView;->setQuiz(Lcom/narvii/model/Blog;)V

    const v4, 0x7f0908f6

    .line 1558
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 1560
    iget-object v8, v1, Lcom/narvii/model/Blog;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    if-eqz v8, :cond_38

    iget v8, v8, Lcom/narvii/model/CurrentQuizzesResult;->totalTimes:I

    if-eqz v8, :cond_38

    const/4 v5, 0x0

    :cond_38
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    :cond_39
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v4

    if-nez v4, :cond_3a

    goto :goto_1d

    :cond_3a
    iget-object v6, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    :goto_1d
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1563
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1564
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_3b

    const v4, 0x7f0800ac

    goto :goto_1e

    :cond_3b
    const v4, 0x7f0800ab

    :goto_1e
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v3, 0x7f0908fa

    .line 1565
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0908f8

    .line 1566
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1567
    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_3c

    const/4 v4, -0x1

    goto :goto_1f

    :cond_3c
    const v4, -0x646465

    :goto_1f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1568
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_3d

    const v4, 0x7f08047e

    goto :goto_20

    :cond_3d
    const v4, 0x7f08047d

    :goto_20
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0908f9

    .line 1569
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0908fb

    .line 1570
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1571
    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_3e

    goto :goto_21

    :cond_3e
    const v9, -0x646465

    :goto_21
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1572
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v3

    if-eqz v3, :cond_3f

    const v12, 0x7f0908ef

    .line 1574
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v13

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v11, v2

    invoke-static/range {v11 .. v17}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    :cond_3f
    return-object v2

    .line 1579
    :cond_40
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->LINK_CUSTOM_CONTENT_PADDING:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_41

    const v1, 0x7f0b014b

    .line 1580
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09080f

    .line 1581
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->configLinkPostCustomContentBackground(Landroid/view/View;)V

    return-object v1

    .line 1584
    :cond_41
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->RELATED_AMINOS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_45

    const v1, 0x7f0b03d3

    .line 1585
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0904c4

    .line 1586
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 1587
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-nez v3, :cond_42

    .line 1588
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v10, v10}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1590
    :cond_42
    new-instance v3, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$6;

    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2400(Lcom/narvii/blog/detail/BlogDetailFragment;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v0, v0, v4}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$6;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 1597
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1598
    iget-boolean v2, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {v3, v2}, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;->setDarkTheme(Z)V

    const v2, 0x7f0909ee

    .line 1599
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v3, :cond_43

    goto :goto_22

    :cond_43
    const v9, -0xb5b5b6

    :goto_22
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0909ee

    .line 1600
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v3, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getHeaderBackgroundColor()I

    move-result v3

    goto :goto_23

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600ef

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    :goto_23
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v1

    .line 1603
    :cond_45
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    if-ne v1, v4, :cond_46

    .line 1604
    invoke-super/range {p0 .. p3}, Lcom/narvii/detail/FeedDetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1605
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    .line 1609
    :cond_46
    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    if-eqz v4, :cond_47

    .line 1610
    invoke-virtual {v4, v1, v2, v3}, Lcom/narvii/poll/PollAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_47

    return-object v4

    .line 1617
    :cond_47
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_48

    .line 1618
    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v4, v4, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    if-eqz v4, :cond_48

    invoke-virtual {v4}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    if-eqz v4, :cond_48

    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v4, v4, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {v4}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Blog;

    iget-object v4, v4, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v4, :cond_48

    const v1, 0x7f0b0154

    .line 1619
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090948

    .line 1620
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/feed/FeedListItem;

    .line 1621
    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4600(Lcom/narvii/blog/detail/BlogDetailFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    .line 1622
    iget-object v3, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {v3}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Blog;

    iget-object v3, v3, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v2, v3}, Lcom/narvii/feed/FeedListItem;->setDisabledFeed(Lcom/narvii/model/Feed;)V

    .line 1623
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    .line 1627
    :cond_48
    instance-of v4, v1, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_4d

    .line 1628
    move-object v4, v1

    check-cast v4, Lcom/narvii/model/Blog;

    iget v4, v4, Lcom/narvii/model/Blog;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_49

    const v4, 0x7f0b015a

    const v10, 0x7f0b015a

    goto :goto_24

    :cond_49
    const/4 v6, 0x6

    if-ne v4, v6, :cond_4a

    const v4, 0x7f0b0159

    const v10, 0x7f0b0159

    goto :goto_24

    :cond_4a
    if-ne v4, v5, :cond_4b

    const v4, 0x7f0b0158

    const v10, 0x7f0b0158

    goto :goto_24

    :cond_4b
    const/16 v5, 0x8

    if-ne v4, v5, :cond_4c

    const v4, 0x7f0b0155

    const v10, 0x7f0b0155

    goto :goto_24

    :cond_4c
    const v4, 0x7f0b0153

    const v10, 0x7f0b0153

    goto :goto_24

    .line 1640
    :cond_4d
    instance-of v4, v1, Lcom/narvii/model/Item;

    if-eqz v4, :cond_4e

    const v10, 0x7f0b0156

    .line 1644
    :cond_4e
    :goto_24
    if-eqz v10, :cond_50

    .line 1657
    invoke-virtual {v0, v10, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090948

    .line 1659
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/feed/FeedListItem;

    .line 1660
    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4700(Lcom/narvii/blog/detail/BlogDetailFragment;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    .line 1661
    check-cast v1, Lcom/narvii/model/Feed;

    invoke-virtual {v3, v1}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    .line 1662
    iget-object v1, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1663
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 1665
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4f
    return-object v2

    .line 1670
    :cond_50
    invoke-super/range {p0 .. p3}, Lcom/narvii/detail/FeedDetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 1296
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 1298
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1300
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->ADDRESS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->STORY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1303
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_NULL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LINK_CUSTOM_CONTENT_PADDING:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1308
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-class v1, Lcom/narvii/model/Item;

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1310
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->RELATED_AMINOS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->ADS:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1312
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    invoke-static {p1}, Lcom/narvii/poll/PollAdapter;->getCellTypes(Ljava/util/List;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isPageBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 757
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isPageBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 749
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isPageBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 741
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->isListShown()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$requestLinkedBlog$1$BlogDetailFragment$Adapter(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 911
    iget-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->onPromoteStory()V

    .line 912
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method protected notJoined()Z
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$900(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    return v0
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation

    .line 778
    const-class v0, Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 728
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 729
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Lcom/narvii/poll/PollAdapter;->destory()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 14

    move-object v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    .line 1720
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/poll/PollAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v9

    .line 1723
    :cond_0
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    const/16 v2, 0x8

    const-string v3, "Page Detailed View"

    const-string v4, "Source"

    if-ne v7, v1, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v1

    const v5, 0x7f090c27

    if-ne v1, v5, :cond_5

    .line 1724
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    .line 1725
    instance-of v5, v1, Lcom/narvii/model/Blog;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Lcom/narvii/model/Blog;

    iget v6, v5, Lcom/narvii/model/Blog;->type:I

    if-ne v6, v2, :cond_2

    iget-object v2, v5, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v2, :cond_2

    .line 1727
    invoke-virtual {v2}, Lcom/narvii/model/ExternalSource;->isNotAvaileable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1728
    new-instance v1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1729
    invoke-virtual {v1}, Lcom/narvii/feed/FeedHelper;->showExternalSourceNotAvailable()V

    return v9

    .line 1732
    :cond_1
    const-class v1, Lcom/narvii/feed/ExternalPostListFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 1733
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_EXTERNAL_SOURCE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1734
    iget-object v2, v2, Lcom/narvii/model/ExternalSource;->sourceId:Ljava/lang/String;

    const-string v3, "KEY_EXTERNAL_SOURCE_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1735
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v9

    .line 1738
    :cond_2
    iget-object v2, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    sget-object v5, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {v2, v5}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v5, "UserIcon"

    invoke-virtual {v2, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    iget-object v5, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v2, v5}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1739
    iget-object v2, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4800(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v2

    if-nez v2, :cond_3

    return v9

    .line 1742
    :cond_3
    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_4

    return v9

    .line 1744
    :cond_4
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1745
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v9

    .line 1749
    :cond_5
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v7, v1, :cond_8

    if-eqz v8, :cond_8

    .line 1750
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v1

    const v10, 0x7f090cd5

    if-ne v1, v10, :cond_8

    .line 1751
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->notJoined()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1752
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1, v6, v6, v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    goto :goto_0

    .line 1754
    :cond_6
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const v2, 0x7f090cdc

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/blog/detail/BlogDetailFragment;->voteIconView:Landroid/view/View;

    .line 1755
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4900(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1756
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1, v6, v6, v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    goto :goto_0

    .line 1758
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "vote"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    :goto_0
    return v9

    :cond_8
    const-string v1, "Repost"

    const-string v10, "isAnnouncement"

    if-eqz v8, :cond_d

    .line 1763
    sget-object v11, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v7, v11, :cond_d

    .line 1764
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_c

    .line 1765
    iget-object v3, v2, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v3, :cond_c

    .line 1766
    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$5000(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/account/AccountService;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$5000(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/account/AccountService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v5

    goto :goto_1

    :cond_9
    move-object v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1767
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1768
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b021c

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09002c

    .line 1769
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1770
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$7;

    invoke-direct {v4, p0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$7;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1777
    :cond_a
    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 1778
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    return v9

    .line 1781
    :cond_b
    iget-object v2, v2, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-static {v2}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v2

    .line 1782
    iget-object v3, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1783
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1784
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_c
    return v9

    :cond_d
    if-eqz v8, :cond_e

    .line 1788
    instance-of v11, v7, Lcom/narvii/model/Feed;

    if-eqz v11, :cond_e

    .line 1789
    move-object v2, v7

    check-cast v2, Lcom/narvii/model/Feed;

    invoke-static {v2}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v2

    .line 1790
    iget-object v3, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1791
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1792
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v9

    .line 1795
    :cond_e
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v10, "position"

    const-string v11, "list"

    const-string v12, "parentClass"

    const-string v13, "parent"

    if-ne v7, v1, :cond_13

    if-eqz v8, :cond_12

    .line 1796
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090a5d

    if-ne v1, v2, :cond_12

    .line 1797
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    if-nez v1, :cond_f

    goto :goto_2

    .line 1798
    :cond_f
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getLinkSummaryMedia()Lcom/narvii/model/Media;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_12

    .line 1800
    invoke-virtual {v6}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1801
    invoke-static {v6}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1803
    :cond_10
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1805
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    const-class v3, Lcom/narvii/model/Feed;

    invoke-virtual {v2, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1807
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1808
    iget-object v1, v1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 1809
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1811
    :cond_11
    invoke-interface {v3, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1812
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1813
    invoke-virtual {v2, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1814
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_12
    :goto_3
    return v9

    .line 1821
    :cond_13
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v7, v1, :cond_1b

    if-eqz v8, :cond_15

    .line 1822
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0908ed

    if-ne v1, v2, :cond_15

    .line 1823
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 1824
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1826
    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1827
    invoke-static {v2}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 1829
    :cond_14
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v6, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1830
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1831
    const-class v4, Lcom/narvii/model/Blog;

    invoke-virtual {v2, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1832
    iget-object v4, v1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->firstMediaIndex()I

    move-result v1

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1834
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_15
    :goto_4
    const-string v1, "statistics"

    if-eqz v8, :cond_18

    .line 1839
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f0908fa

    if-ne v2, v4, :cond_18

    .line 1840
    iget-object v2, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    .line 1841
    new-instance v4, Lcom/narvii/influencer/InfluencerHelper;

    iget-object v6, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v4, v6}, Lcom/narvii/influencer/InfluencerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1842
    invoke-virtual {v4, v2, v3}, Lcom/narvii/influencer/InfluencerHelper;->checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    return v9

    .line 1845
    :cond_16
    const-class v4, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 1846
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "quizzes"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1847
    iget-object v2, v2, Lcom/narvii/model/Blog;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    if-nez v2, :cond_17

    const-string v2, "isGuestMode"

    .line 1848
    invoke-virtual {v4, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_17
    const-string v2, "showNextQuizLayout"

    .line 1850
    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1851
    new-instance v2, Lcom/narvii/feed/FeedHelper;

    iget-object v5, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v5}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1852
    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/narvii/feed/FeedHelper;->addQuizListExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 1853
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_18
    if-eqz v8, :cond_1a

    .line 1859
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f090a91

    if-ne v2, v4, :cond_1a

    .line 1860
    iget-object v2, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    .line 1861
    new-instance v4, Lcom/narvii/influencer/InfluencerHelper;

    iget-object v5, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v4, v5}, Lcom/narvii/influencer/InfluencerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1862
    invoke-virtual {v4, v2, v3}, Lcom/narvii/influencer/InfluencerHelper;->checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v9

    .line 1865
    :cond_19
    new-instance v2, Lcom/narvii/feed/FeedHelper;

    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v3}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1866
    sget-object v3, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object v3, v2, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 1867
    iget-object v3, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1868
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Blog;

    invoke-virtual {v2, v4, v3}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V

    :cond_1a
    return v9

    .line 1874
    :cond_1b
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v7, v1, :cond_1e

    .line 1875
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 1876
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v3

    .line 1877
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1878
    iget v3, v1, Lcom/narvii/model/Blog;->type:I

    if-ne v3, v2, :cond_1c

    const-string v2, "External Content"

    .line 1879
    invoke-virtual {v5, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_1c
    const/4 v2, 0x5

    if-ne v3, v2, :cond_1d

    const-string v2, "Link Post"

    .line 1881
    invoke-virtual {v5, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1883
    :cond_1d
    :goto_5
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->objectType()I

    move-result v2

    const-string v3, "loggingObjectType"

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1884
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loggingObjectId"

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1885
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const-string v2, "loggingBlogType"

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1886
    invoke-virtual {p0, v5}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 1888
    :cond_1e
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->STORY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v7, v1, :cond_1f

    .line 1889
    sget-object v1, Lcom/narvii/logging/ActSemantic;->enterStoryDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v1}, Lcom/narvii/detail/DetailAdapter;->sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 1890
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    invoke-static {v1, v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$800(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)Landroid/content/Intent;

    move-result-object v1

    .line 1891
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->preview()Z

    move-result v2

    const-string v3, "preview"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1892
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 1894
    :cond_1f
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    if-ne v7, v1, :cond_20

    .line 1895
    invoke-virtual {p0, v8, v6}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    return v9

    .line 1900
    :cond_20
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/FeedDetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 788
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 789
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0, p1}, Lcom/narvii/poll/PollAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 792
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Comment;

    const-string v2, "delete"

    const-string v3, "new"

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 810
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "edit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 818
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/scene/notification/PromotedFromObject;

    if-eqz v0, :cond_3

    .line 819
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    .line 820
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/scene/notification/PromotedFromObject;

    if-eqz v0, :cond_9

    .line 821
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getLinkedBlogId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/narvii/scene/notification/PromotedFromObject;->promotedFrom:Ljava/lang/String;

    iget-object v2, v0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/narvii/scene/notification/PromotedFromObject;->story:Lcom/narvii/model/Blog;

    if-eqz v1, :cond_9

    .line 822
    iget-object v1, v1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/model/Blog;->setLinkedBlogId(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object p1, p1, Lcom/narvii/scene/notification/PromotedFromObject;->story:Lcom/narvii/model/Blog;

    invoke-static {v0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1200(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V

    .line 824
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 825
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    goto/16 :goto_3

    .line 828
    :cond_3
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of p1, p1, Lcom/narvii/scene/notification/CloseSceneTemplateObject;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 829
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    goto/16 :goto_3

    .line 811
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_9

    .line 812
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getLinkedBlogId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 813
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/Blog;

    :goto_1
    invoke-static {v0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1200(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V

    .line 814
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 815
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    goto :goto_3

    .line 793
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_7

    .line 795
    iget v2, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    iget-object v2, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/narvii/model/Feed;

    if-eqz v2, :cond_7

    .line 796
    check-cast v1, Lcom/narvii/model/Feed;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 797
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/Feed;

    iput-object v1, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 798
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v1, v1, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    if-eqz v1, :cond_7

    .line 799
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 804
    :cond_7
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1000(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 805
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/narvii/model/Comment;

    if-eqz v2, :cond_8

    .line 806
    check-cast v1, Lcom/narvii/model/Comment;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 808
    :cond_8
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1, v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1100(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V

    :cond_9
    :goto_3
    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/FeedResponse<",
            "+",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_1

    .line 845
    instance-of v0, p2, Lcom/narvii/model/api/BlogResponse;

    if-eqz v0, :cond_1

    .line 846
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 848
    move-object v1, p2

    check-cast v1, Lcom/narvii/model/api/BlogResponse;

    .line 849
    iget-object v1, v1, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    iget v2, v0, Lcom/narvii/model/Blog;->type:I

    iput v2, v1, Lcom/narvii/model/Blog;->type:I

    .line 850
    iget-object v2, v0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 851
    iget-object v2, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 852
    iget-object v2, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 853
    iget-object v2, v0, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    iput-object v2, v1, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    .line 854
    iget v2, v0, Lcom/narvii/model/Feed;->latitude:I

    iput v2, v1, Lcom/narvii/model/Feed;->latitude:I

    .line 855
    iget v2, v0, Lcom/narvii/model/Feed;->longitude:I

    iput v2, v1, Lcom/narvii/model/Feed;->longitude:I

    .line 856
    iget-object v2, v0, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    .line 857
    iget-object v2, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    iput-object v2, v1, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 858
    iget-object v2, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v2, v1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 859
    iget-object v2, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 860
    iget-object v2, v0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 861
    iget-object v2, v0, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    .line 862
    iget-object v2, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    .line 863
    iget-object v0, v0, Lcom/narvii/model/Blog;->credits:Ljava/lang/String;

    iput-object v0, v1, Lcom/narvii/model/Blog;->credits:Ljava/lang/String;

    .line 865
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    return-void

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->onFeedObjectResponse()V

    .line 873
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 874
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;

    invoke-direct {p2, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 886
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2000(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    .line 887
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Feed;

    invoke-static {p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2100(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V

    .line 888
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->sendImagePostUpdateNotificaion(Lcom/narvii/model/Feed;)V

    .line 890
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p1

    if-nez p1, :cond_2

    .line 891
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->requestLinkedBlog()V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 683
    check-cast p2, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method protected onTipBoxClicked(Z)V
    .locals 0

    .line 836
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onTipBoxClicked(Z)V

    if-nez p1, :cond_0

    .line 838
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1400(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    :cond_0
    return-void
.end method

.method protected onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    .line 1905
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 1906
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    const/4 v0, 0x0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkAllLikes:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1907
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1909
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nvObject"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getPublishNdcId()I

    move-result v0

    :goto_0
    const-string v1, "__communityId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1911
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    xor-int/2addr v0, p2

    const-string v1, "__model"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1912
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return p2
.end method

.method protected openCommentSetting()V
    .locals 3

    .line 1324
    const-class v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1325
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blogId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1326
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected preview()Z
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/FeedResponse<",
            "Lcom/narvii/model/Blog;",
            ">;>;"
        }
    .end annotation

    .line 783
    const-class v0, Lcom/narvii/model/api/BlogResponse;

    return-object v0
.end method

.method protected setCommentSort(I)V
    .locals 2

    .line 1931
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    move-result v0

    iput v0, v1, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->flHeight:I

    .line 1932
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/Blog;)V
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/BlogResponse;

    if-nez v0, :cond_0

    .line 1055
    new-instance v0, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v0}, Lcom/narvii/model/api/BlogResponse;-><init>()V

    .line 1057
    :cond_0
    iput-object p1, v0, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    .line 1058
    invoke-virtual {p0, v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 683
    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->setObject(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/model/api/FeedResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/api/FeedResponse<",
            "+",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 963
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    .line 964
    instance-of v1, p1, Lcom/narvii/model/api/BlogResponse;

    if-eqz v1, :cond_1

    .line 965
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    move-object v3, p1

    check-cast v3, Lcom/narvii/model/api/BlogResponse;

    iget-object v3, v3, Lcom/narvii/model/api/BlogResponse;->suggestedCommunityList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2402(Lcom/narvii/blog/detail/BlogDetailFragment;Ljava/util/List;)Ljava/util/List;

    .line 967
    :cond_1
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 968
    invoke-virtual {p1}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const-string v4, "__communityId"

    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/narvii/model/Feed;->ndcId:I

    .line 970
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    .line 971
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_3

    .line 973
    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v3, v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    :cond_3
    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 977
    iget-object v4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/model/Feed;->hasBackground()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2602(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z

    .line 978
    iget-object v4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v5

    invoke-static {v5}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v4, v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2702(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z

    .line 979
    iget-object v4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v5

    invoke-static {v4, v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2802(Lcom/narvii/blog/detail/BlogDetailFragment;I)I

    .line 980
    iget-object v4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2900(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    .line 981
    iget-object v4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3000(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    .line 984
    :cond_6
    iget-boolean v4, p1, Lcom/narvii/model/api/FeedResponse;->isBookmarked:Z

    iput-boolean v4, p0, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    .line 985
    iget-object v4, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v4, v4, Lcom/narvii/blog/detail/BlogDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    if-eqz v4, :cond_7

    .line 986
    invoke-virtual {p1}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 989
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    move-object v4, p1

    check-cast v4, Lcom/narvii/model/api/BlogResponse;

    iget-object v4, v4, Lcom/narvii/model/api/BlogResponse;->taggedBlogCategoryList:Ljava/util/List;

    invoke-static {v1, v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3102(Lcom/narvii/blog/detail/BlogDetailFragment;Ljava/util/List;)Ljava/util/List;

    :cond_8
    if-eqz v2, :cond_9

    .line 992
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v1, v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$300(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V

    .line 994
    :cond_9
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v1, v1, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    if-eqz v2, :cond_a

    .line 996
    invoke-virtual {v1}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    :cond_a
    if-eqz v2, :cond_c

    .line 998
    iget v0, v2, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 999
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    if-nez v0, :cond_b

    .line 1000
    new-instance v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$4;

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$4;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/list/NVAdapter;Lcom/narvii/app/NVFragment;)V

    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    .line 1006
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3300(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v1

    iget-object v4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3400(Lcom/narvii/blog/detail/BlogDetailFragment;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/narvii/poll/PollAdapter;->setDarkTheme(ZI)V

    .line 1007
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1008
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    new-instance v1, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$5;

    invoke-direct {v1, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$5;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)V

    iput-object v1, v0, Lcom/narvii/poll/PollAdapter;->previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

    .line 1016
    :cond_b
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    invoke-virtual {p1}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {v0, p1}, Lcom/narvii/poll/PollAdapter;->setBlog(Lcom/narvii/model/Blog;)V

    .line 1019
    :cond_c
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1, v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3700(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V

    .line 1021
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->resetHover()V

    if-eqz v2, :cond_d

    .line 1023
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v0, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->stated:Z

    if-nez v0, :cond_d

    .line 1025
    iput-boolean v3, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->stated:Z

    :cond_d
    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 683
    check-cast p1, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method protected shouldBlockShareMedia()Z
    .locals 2

    .line 1951
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$5200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1952
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    const-string v1, "Page Detailed View"

    invoke-static {p0, v0, v1}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 1955
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/FeedDetailAdapter;->shouldBlockShareMedia()Z

    move-result v0

    return v0
.end method

.method protected showEmojiOnly()Z
    .locals 5

    const-string v0, "affiliations"

    .line 1943
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 1944
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const-string v4, "__communityId"

    .line 1945
    invoke-virtual {v1, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1946
    :goto_0
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v4, v1, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$5100(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method protected showEmptyContent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showShareMediaBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showUserCommentSetting()Z
    .locals 1

    .line 1319
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    move-result v0

    return v0
.end method

.method public taggedObjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v1, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v1, :cond_0

    const-string v1, "taggedObjects"

    .line 1087
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Item;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/FeedDetailAdapter;->taggedObjects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
