.class Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "InterestPickerSubInterestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterestPickerSubInterestAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/InterestData;",
        "Lcom/narvii/suggest/interest/SubInterestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    const/4 p1, -0x2

    .line 269
    invoke-direct {p0, p2, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method private checkAndShowSkip()V
    .locals 5

    .line 327
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    .line 328
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v3

    .line 330
    iget-object v4, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    iget-object v4, v4, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    iget-object v0, v0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 285
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/persona/interest-detail"

    .line 286
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 287
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 289
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-virtual {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "selectedInterest"

    .line 290
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 297
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interestIds"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 300
    :cond_1
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
            "Lcom/narvii/model/InterestData;",
            ">;"
        }
    .end annotation

    .line 274
    const-class v0, Lcom/narvii/model/InterestData;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/InterestData;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/InterestData;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 338
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 339
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 340
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/InterestData;

    if-eqz p2, :cond_7

    .line 342
    iget-object v1, p2, Lcom/narvii/model/InterestData;->foldedTopicList:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 343
    :goto_2
    iget-object v4, p2, Lcom/narvii/model/InterestData;->visibleTopicList:Ljava/util/List;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v4, 0x1

    .line 344
    :goto_4
    iget-object p2, p2, Lcom/narvii/model/InterestData;->topicList:Ljava/util/List;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 346
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 349
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_8
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
    .locals 9

    const v0, 0x7f0b0370

    .line 367
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 368
    instance-of p3, p1, Lcom/narvii/model/InterestData;

    if-eqz p3, :cond_8

    .line 369
    check-cast p1, Lcom/narvii/model/InterestData;

    const p3, 0x7f0905b4

    .line 371
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 372
    invoke-virtual {p1}, Lcom/narvii/model/InterestData;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 377
    iget-object v0, p1, Lcom/narvii/model/InterestData;->topicList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p1, Lcom/narvii/model/InterestData;->topicList:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/InterestData;->visibleTopicList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p1, Lcom/narvii/model/InterestData;->visibleTopicList:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/InterestData;->foldedTopicList:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 385
    iget-object v3, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {v3}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$500(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 386
    iget-object v3, p1, Lcom/narvii/model/InterestData;->foldedTopicList:Ljava/util/List;

    invoke-interface {p3, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$500(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 390
    new-instance p1, Lcom/narvii/suggest/interest/InterestTopicView$MoreTopicMock;

    invoke-direct {p1}, Lcom/narvii/suggest/interest/InterestTopicView$MoreTopicMock;-><init>()V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const p1, 0x7f090bc8

    .line 394
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 395
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 396
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_7

    if-ge v4, v3, :cond_5

    .line 401
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/suggest/interest/InterestTopicView;

    goto :goto_2

    .line 403
    :cond_5
    iget-object v5, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0b0371

    invoke-virtual {v5, v6, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 404
    iget-object v6, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 408
    :goto_2
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/story/StoryTopic;

    if-eqz v6, :cond_6

    .line 409
    iget-object v7, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {v7}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    move-result-object v7

    iget v8, v6, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    .line 410
    :goto_3
    invoke-virtual {v5, v6}, Lcom/narvii/suggest/interest/InterestTopicView;->setTopicData(Lcom/narvii/model/story/StoryTopic;)V

    .line 411
    invoke-virtual {v5, v7}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 414
    :cond_7
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge v0, p3, :cond_8

    .line 415
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_4

    :cond_8
    return-object p2
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 322
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 323
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->checkAndShowSkip()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 423
    instance-of v0, p5, Lcom/narvii/suggest/interest/InterestTopicView;

    if-eqz v0, :cond_3

    .line 424
    check-cast p5, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 425
    invoke-virtual {p5}, Lcom/narvii/suggest/interest/InterestTopicView;->getTopicData()Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    .line 427
    instance-of p2, p1, Lcom/narvii/suggest/interest/InterestTopicView$MoreTopicMock;

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 428
    instance-of p1, p3, Lcom/narvii/model/InterestData;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/narvii/model/InterestData;

    iget-object p1, p3, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$500(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p3, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$000(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return v0

    :cond_0
    return p4

    .line 437
    :cond_1
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    move-result-object p2

    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 438
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    move-result-object p2

    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$300(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    move-result-object p2

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {p5, p4}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    move-result-object p2

    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$300(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    move-result-object p2

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {p5, v0}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    .line 448
    :goto_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$600(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 449
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$400(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    return v0

    .line 452
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 265
    check-cast p2, Lcom/narvii/suggest/interest/SubInterestResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/suggest/interest/SubInterestResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/suggest/interest/SubInterestResponse;I)V
    .locals 2

    .line 305
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 306
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->checkAndShowSkip()V

    .line 307
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$200(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    .line 308
    iget-object p1, p2, Lcom/narvii/suggest/interest/SubInterestResponse;->interestDetails:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/InterestData;

    .line 309
    iget-object p2, p2, Lcom/narvii/model/InterestData;->topicList:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 310
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/story/StoryTopic;

    .line 311
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$300(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    move-result-object v0

    iget p3, p3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    :cond_1
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$400(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/suggest/interest/SubInterestResponse;",
            ">;"
        }
    .end annotation

    .line 279
    const-class v0, Lcom/narvii/suggest/interest/SubInterestResponse;

    return-object v0
.end method
