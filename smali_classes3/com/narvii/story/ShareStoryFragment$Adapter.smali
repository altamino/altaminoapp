.class Lcom/narvii/story/ShareStoryFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ShareStoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/ShareStoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/master/CommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private req:Lcom/narvii/util/http/ApiRequest;

.field final synthetic this$0:Lcom/narvii/story/ShareStoryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/ShareStoryFragment;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    .line 253
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 273
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/joined"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 275
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 258
    const-class v0, Lcom/narvii/model/Community;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    return-object p1
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
    .locals 1

    .line 290
    instance-of v0, p1, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 291
    check-cast p1, Lcom/narvii/model/Community;

    const v0, 0x7f0b061b

    .line 292
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090562

    .line 293
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f090b5b

    .line 294
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$onItemClick$0$ShareStoryFragment$Adapter(Landroid/content/DialogInterface;)V
    .locals 1

    .line 307
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter;->req:Lcom/narvii/util/http/ApiRequest;

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 309
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment$Adapter;->req:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter;->req:Lcom/narvii/util/http/ApiRequest;

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 303
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 304
    check-cast p3, Lcom/narvii/model/Community;

    .line 305
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/narvii/story/ShareStoryFragment;->access$102(Lcom/narvii/story/ShareStoryFragment;Lcom/narvii/util/dialog/ProgressDialog;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 306
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    invoke-static {p1}, Lcom/narvii/story/ShareStoryFragment;->access$100(Lcom/narvii/story/ShareStoryFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    new-instance p2, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$Adapter$S3jg841YOT19EWKksbz2HjwjHX0;

    invoke-direct {p2, p0}, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$Adapter$S3jg841YOT19EWKksbz2HjwjHX0;-><init>(Lcom/narvii/story/ShareStoryFragment$Adapter;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 313
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    invoke-static {p1}, Lcom/narvii/story/ShareStoryFragment;->access$100(Lcom/narvii/story/ShareStoryFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 314
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string p2, "/community/info"

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget p2, p3, Lcom/narvii/model/Community;->id:I

    .line 315
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter;->req:Lcom/narvii/util/http/ApiRequest;

    .line 316
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 317
    iget-object p2, p0, Lcom/narvii/story/ShareStoryFragment$Adapter;->req:Lcom/narvii/util/http/ApiRequest;

    new-instance p4, Lcom/narvii/story/ShareStoryFragment$Adapter$1;

    const-class p5, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {p4, p0, p5, p3}, Lcom/narvii/story/ShareStoryFragment$Adapter$1;-><init>(Lcom/narvii/story/ShareStoryFragment$Adapter;Ljava/lang/Class;Lcom/narvii/model/Community;)V

    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    const/4 p1, 0x1

    return p1

    .line 352
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/master/CommunityListResponse;",
            ">;"
        }
    .end annotation

    .line 263
    const-class v0, Lcom/narvii/master/CommunityListResponse;

    return-object v0
.end method
