.class Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CommentDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/CommentDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParentSummaryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/CommentDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/comment/CommentDetailFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 233
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)Ljava/lang/String;
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)I
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->onParentRequestFinished(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 224
    invoke-direct/range {p0 .. p6}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->onParentRequestFailed(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method private getApiResponseListener(I)Lcom/narvii/util/http/ApiResponseListener;
    .locals 1

    if-nez p1, :cond_0

    .line 413
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$3;

    const-class v0, Lcom/narvii/model/api/UserResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$3;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Ljava/lang/Class;)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x83

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 450
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$5;

    const-class v0, Lcom/narvii/model/api/ItemResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$5;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Ljava/lang/Class;)V

    return-object p1

    :cond_2
    const/16 v0, 0x6d

    if-ne p1, v0, :cond_3

    .line 468
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$6;

    const-class v0, Lcom/narvii/sharedfolder/SharedFileResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$6;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Ljava/lang/Class;)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 431
    :cond_4
    :goto_0
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$4;

    const-class v0, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$4;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Ljava/lang/Class;)V

    return-object p1
.end method

.method private onParentRequestFailed(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 326
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->createUnVisiableObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->access$202(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;

    .line 327
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onParentRequestFinished(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 331
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/model/api/ObjectResponse;->object()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->access$202(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;

    .line 332
    new-instance p1, Lcom/narvii/util/FilterHelper;

    invoke-direct {p1, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->createUnVisiableObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->access$202(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/model/Blog;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 336
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->access$502(Lcom/narvii/comment/CommentDetailFragment;Z)Z

    .line 337
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment;->curCommentAdapter:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    if-eqz p1, :cond_1

    .line 338
    invoke-virtual {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 341
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private parentObjectId()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$300(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parentObjectType()I
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$400(Lcom/narvii/comment/CommentDetailFragment;)I

    move-result v0

    return v0
.end method

.method private sendParentObjectRequest()V
    .locals 4

    .line 401
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    move-result v0

    invoke-static {v0}, Lcom/narvii/model/NVObject;->apiTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 404
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 405
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->getApiResponseListener(I)Lcom/narvii/util/http/ApiResponseListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->getApiResponseListener(I)Lcom/narvii/util/http/ApiResponseListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createUnVisiableObject()Lcom/narvii/model/NVObject;
    .locals 2

    .line 347
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$1;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)V

    goto :goto_1

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 355
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    const/16 v1, 0x83

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 356
    :cond_2
    :goto_0
    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$2;

    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$2;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)V

    .line 387
    new-instance v1, Lcom/narvii/model/User;

    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    :goto_1
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$100(Lcom/narvii/comment/CommentDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 263
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    const v1, 0x7f070113

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_6

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 270
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    const/16 v4, 0x83

    if-ne v0, v4, :cond_0

    goto/16 :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_4

    const p1, 0x7f0b045b

    .line 285
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090c10

    .line 286
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 288
    check-cast p2, Lcom/narvii/widget/UserAvatarLayout;

    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p3}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/User;

    invoke-virtual {p2, p3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_1
    const p2, 0x7f09074b

    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 292
    check-cast p2, Lcom/narvii/widget/NicknameView;

    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p3}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/User;

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 296
    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-virtual {p3}, Lcom/narvii/comment/CommentDetailFragment;->notAvailable()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-virtual {p1, v3, v3, v3, p2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 298
    :cond_4
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_5

    const p1, 0x7f0b045a

    .line 299
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09082c

    .line 300
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 302
    check-cast p2, Lcom/narvii/widget/NVImageView;

    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p3}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/SharedFile;

    iget-object p3, p3, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto/16 :goto_1

    .line 305
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".getItemView("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") returns null for object "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    const p1, 0x1090003

    .line 307
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 309
    sget-boolean p2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p2, :cond_a

    const p2, 0x1020014

    .line 310
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "getItemView() returns null"

    .line 311
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    :goto_0
    const p1, 0x7f0b0456

    .line 272
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    if-ne v0, v2, :cond_7

    const p1, 0x7f0b0458

    .line 275
    :cond_7
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09044e

    .line 276
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 277
    instance-of p3, p2, Lcom/narvii/feed/FeedSummaryItem;

    if-eqz p3, :cond_8

    .line 278
    check-cast p2, Lcom/narvii/feed/FeedSummaryItem;

    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p3}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Feed;

    invoke-virtual {p2, p3}, Lcom/narvii/feed/FeedSummaryItem;->setFeed(Lcom/narvii/model/Feed;)V

    .line 281
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 282
    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-virtual {p3}, Lcom/narvii/comment/CommentDetailFragment;->notAvailable()Z

    move-result p3

    if-eqz p3, :cond_9

    const/4 p2, 0x0

    :cond_9
    invoke-virtual {p1, v3, v3, v3, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_a
    :goto_1
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 397
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public onAttach()V
    .locals 0

    .line 228
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 229
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->sendParentObjectRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 494
    const-class v0, Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 495
    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_FEED_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v2}, Lcom/narvii/comment/CommentDetailFragment;->access$300(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 499
    :goto_0
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    const-string v2, "fromHeadline"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/SharedFile;

    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->intent(Lcom/narvii/model/SharedFile;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 506
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 508
    :cond_4
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

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 254
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->sendParentObjectRequest()V

    .line 255
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method
