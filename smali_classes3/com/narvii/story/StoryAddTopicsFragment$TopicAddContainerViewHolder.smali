.class public Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;
.super Ljava/lang/Object;
.source "StoryAddTopicsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/widget/TagEditFlowView$TagTransformer;
.implements Lcom/narvii/widget/TagEditFlowView$TagEditListener;
.implements Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;
.implements Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryAddTopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopicAddContainerViewHolder"
.end annotation


# instance fields
.field public editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

.field public itemView:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/story/StoryAddTopicsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment;Landroid/view/View;)V
    .locals 1

    .line 334
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->itemView:Landroid/view/View;

    .line 336
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0903d1

    .line 337
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TopicEditFlowView;

    iput-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    .line 339
    iget-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/TagEditFlowView;->setTagTransformer(Lcom/narvii/widget/TagEditFlowView$TagTransformer;)V

    .line 342
    iget-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/TagEditFlowView;->setTagEditListener(Lcom/narvii/widget/TagEditFlowView$TagEditListener;)V

    .line 343
    iget-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/TagEditFlowView;->setOnTagRemovedListener(Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;)V

    .line 344
    iget-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/TagEditFlowView;->setOnSelectedChangedListener(Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;)V

    .line 346
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$800(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/TopicTag;

    .line 348
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/TagEditFlowView;->setTagList(Ljava/util/List;)V

    .line 351
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {p1}, Lcom/narvii/widget/TagEditFlowView;->requestEdittextFocus()V

    return-void
.end method


# virtual methods
.method public afterTextChangedEmpty()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$002(Lcom/narvii/story/StoryAddTopicsFragment;Z)Z

    .line 392
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$300(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public afterTextChangedNotEmpty(Ljava/lang/String;)V
    .locals 3

    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$002(Lcom/narvii/story/StoryAddTopicsFragment;Z)Z

    .line 378
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0, p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$902(Lcom/narvii/story/StoryAddTopicsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    new-instance v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder$1;-><init>(Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;Ljava/lang/String;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/widget/TagEditFlowView$Tag;",
            ">;)V"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$800(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    .line 416
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TagEditFlowView$Tag;

    .line 417
    instance-of v1, v0, Lcom/narvii/model/TopicTag;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$800(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v0, Lcom/narvii/model/TopicTag;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 426
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-virtual {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->hideKeyBoard()V

    return-void
.end method

.method public onSaveTextBeyondLimit()V
    .locals 0

    return-void
.end method

.method public onTagRemoved(Lcom/narvii/widget/TagEditFlowView$Tag;)V
    .locals 1

    .line 403
    instance-of v0, p1, Lcom/narvii/model/TopicTag;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$800(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$1100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$1200(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/narvii/model/TopicTag;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$300(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setTag(Lcom/narvii/model/TopicTag;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/TagEditFlowView;->addTag(Lcom/narvii/widget/TagEditFlowView$Tag;)V

    return-void
.end method

.method public transform(Ljava/lang/String;)Lcom/narvii/widget/TagEditFlowView$Tag;
    .locals 1

    .line 366
    new-instance v0, Lcom/narvii/model/TopicTag;

    invoke-direct {v0}, Lcom/narvii/model/TopicTag;-><init>()V

    .line 367
    iput-object p1, v0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    return-object v0
.end method

.method public updateView()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/narvii/widget/TagEditFlowView;->requestEditFocus()V

    :cond_0
    return-void
.end method
